#!/usr/bin/bash

#unzip the genome to use it in HISAT2
gzip -d S_lycopersicum_chromosomes.4.00.fa.gz 

# Before running HISAT2 you need to add it to you PATH
source /programs/HISAT2/hisat2.sh

#index tomato
hisat2-build -p 10 S_lycopersicum_chromosomes.4.00.fa /local/workdir/michellefranklab/

#index eggplant
hisat2-build -p 10 eggplant_organized_genome.fasta /local/workdir/michellefranklab/

done