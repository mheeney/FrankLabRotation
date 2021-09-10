#!/usr/bin/bash

dir=$1
    cd $dir
    file=`ls *.gz | sed 's/R1.fastq.gz//g' | awk '{print $1}' | sort | uniq`

    for i in $file 
        do
        echo $i

# Run FastQC
fastqc $dir/${i}R1.fastq

# Run Trimmomatic
java -jar /programs/trimmomatic/trimmomatic-0.39.jar SE $dir/${i}R1.fastq.gz $dir/${i}R1_trimmed.fq.gz ILLUMINACLIP:/home/FrankLab/Michelle_MobileRNAseq/TruSeq3-PE-2.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36 -threads 8 && >> ${dir}/${i}.trim.log 

done