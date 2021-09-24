#!/usr/bin/bash

# Samtools' latest version is already in BioHPC Path

#setup for-loop
dir=$1
    cd $dir
    file=`ls *.bam | sed 's/.bam//g' | awk '{print $1}' | sort | uniq`

    for i in $file 
        do
        echo $i


samtools bam2fq {dir}/${i}.bam | /programs/seqtk/seqtk seq -A > {dir}/${i}.fa

/programs/gffread-0.9.12/gffread/gffread  -w ${dir}/${i}.fa -g /local/workdir/michellefranklab/S_lycopersicum_chromosomes.4.00.fa /home/FrankLab/Michelle_MobileRNAseq/ITAG4.0_gene_models.gff

done