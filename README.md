# MeanConverge
Script to calculate mean Coverage of sample cram file

This project is used to find mean coverage per sample using samtools 

Download the reference file
--------------

  ```wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/GRCh38_reference_genome/GRCh38_full_analysis_set_plus_decoy_hla.fa```
into ref/
(determined from cram file samtools view -H your_file.cram) 

Download Sample in 
--------------

  ```wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/data/CEU/NA12878/alignment/NA12878.alt_bwamem_GRCh38DH.20150718.CEU.low_coverage.cram.crai```	

  ```wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/data/CEU/NA12878/exome_alignment/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.cram.crai```	

  ```wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/data/CEU/NA12878/exome_alignment/NA12878.alt_bwamem_GRCh38DH.20150826.CEU.exome.cram```

 ```wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/data_collections/1000_genomes_project/data/CEU/NA12878/alignment/NA12878.alt_bwamem_GRCh38DH.20150718.CEU.low_coverage.cram```
into cram

Download Samtools
--------------

  ```wget https://github.com/samtools/samtools/releases/download/1.20/samtools-1.20.tar.bz2 
  tar xvf samtools-1.20.tar.bz2
  cd samtools-1.20
  make
  export PATH="/usr/local/bin/bin:$PATH"
```

Run  Convert_cram_to_bam.sh to find all the cram files and convert them to bam 
--------------
  ```./ Convert_cram_to_bam.sh```

Run MeanCoverage.sh to export mean coverage of each sample to output file
--------------
  ```./MeanCoverage.sh ```
This runs on bam file by default. use -c or --cram to run on cram files
  ```./MeanCoverage.sh  -c```
  ```./MeanCoverage.sh  --cram```
  





