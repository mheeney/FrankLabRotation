#!/usr/bin/bash

export PATH=/programs/subread-2.0.3/bin:$PATH

#setup for-loop
dir=$1
    cd $dir
    file=`ls *.bam | sed 's/.bam//g' | awk '{print $1}' | sort | uniq`

    for i in $file 
        do
        echo $i


featureCounts -T 8 --primary -C -t exon -g gene_id \
        -a local/workdir/michellefranklab/ITAG4.0_gene_models.gtf \
        -o ${dir}/${i}.count.txt \
        ${dir}/${i}.bam &>> ${dir}/${i}.counts.log &&
        
echo Extracting read count from count.txt file in ${i}
awk '{print $1, $7}' ${dir}/${i}.count.txt | sed 1d > ${dir}/${i}.abundance &&
    
rm ${dir}/${i}.count.txt
        
done
