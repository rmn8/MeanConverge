#!/bin/bash


run_option="bam"

while [ $# -gt 0 ]; do
  case "$1" in
    -c|--cram)
      run_option="cram"
      shift
      ;;
    *)
      printf "Error: unknown option: $1\n" >&2
      exit 1
  esac
  shift
done

root_dir=/home/ec2-user/genome

if [ "$run_option" = "cram" ]; then
 input_files=$(ls "$root_dir/cram"/*.cram)
else
  input_files=$(ls "$root_dir/bam"/*.bam)
fi


output_file="$root_dir/output/coverage_statistics.csv"

echo "Filename,Count,Sum,Mean Average" > "$output_file"


for sm in $input_files; do
    filename=$(basename "$sm")
    echo $filename
     samtools depth "$sm" | awk -v filename="$filename" '{sum += $3; count++} END {printf "%s,%.0f,%.0f,%.4f\n", filename, count, sum, sum/count}' >> "$output_file"


done


