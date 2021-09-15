#!/usr/bin/bash

# Before running HISAT2 you need to add it to you PATH
source /programs/HISAT2/hisat2.sh

# Samtools' latest version is already in BioHPC Path

#setup for-loop
dir=$1
    cd $dir
    file=`ls *.gz | sed 's/_trimmed.fq.gz//g' | awk '{print $1}' | sort | uniq`

    for i in $file 
        do
        echo $i

#Run HISAT2
hisat2 -x /local/workdir/michellefranklab/solanumindex/solanumindex \
        -U ${dir}/${i}_trimmed.fq.gz \
        --met-file ${dir}/${i}.err \
        --summary-file ${dir}/${i}.out \
        --no-unal \
        -p 8 | samtools view -Sb | samtools sort -o ${dir}/${i}.bam -@ 8 &&
        # ^Use Samtools to make .bam .sam files^        
        
# Use Samtools to index the genome
samtools index -@ 90 ${dir}/${i}.bam

done