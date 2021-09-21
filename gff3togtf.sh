#!/usr/bin/bash

/programs/gffread-0.9.12/gffread/gffread /home/FrankLab/Michelle_MobileRNAseq/ITAG4.0_gene_models.gff -T -o /home/FrankLab/Michelle_MobileRNAseq/ITAG4.0_gene_models.gtf

/programs/gffread-0.9.12/gffread/gffread ITAG4.0_gene_models.gff -T -o ITAG4.0_gene_models.gtf

done