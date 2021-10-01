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
        
                1.1:: Make a VCF for each gene and then do genetic distance analysis
                google (vcftools)

Option #2: gffreadtomato.sh && gffreadeggplant.sh
        to extract protein sequence or coding sequence 
        
                2.1:: OrthoMCL to find orthologous genes between genomes


Option #3: featurecountsexpression.sh OR stringtie (google)
        to allow for Differential Expression Analysis
        to allow for GRN construction (not desired yet)
        to look at expression in source (thought:: source sink; expression level paired with movement)
        
                3.1:: Differential Expression Analysis with edgeR to determine which genes are unique 
                to tomato and unique to eggplant
        
...
