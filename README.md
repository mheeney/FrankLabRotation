# FrankLabRotation

Order::

(1) PE_trimmomatic.sh 
        
(2) hisat2genomeindexing.sh 
        to be used in steps 3 & 4
        
(3 & 4) hisat2readindexing_tomato.sh & hisat2readindexing_eggplant.sh
        RNAseq reads aligned to indexed genomes from step 2

DIVERGE PATHS HERE

Option #1: 
        to create VCF files 
        
Option #2: gffreadtomato.sh && gffreadeggplant.sh
        to 
        
Option #3: featurecountsexpression.sh
        to allow for Differential Expression Analysis, GRN construction, etc.

...
