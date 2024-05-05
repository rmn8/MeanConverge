#!/bin/bash

root_dir=/home/ec2-user/genome
cram_files=$(ls "$root_dir/cram"/*.cram)  # Use double quotes to prevent word splitting and pathname expansion
ref="$root_dir/ref/GRCh38_full_analysis_set_plus_decoy_hla.fa"
output_bam_dir="$root_dir/bam"

for sm in $cram_files; do
    filename=$(basename "$sm" .cram)
    echo "$filename"
    samtools view -T $ref -b -o $output_bam_dir/$filename.bam $sm
done


