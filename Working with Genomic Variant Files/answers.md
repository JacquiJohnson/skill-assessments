# Answers to questions from "Genomic Variant Files"

Q1: How many positions are found in this region in the VCF file?
A:  There are 69 total positions.
(tabix CEU.exon.2010_03.genotypes.vcf.gz 1:1105411-44137860 | wc -l) 

Q2: How many samples are included in the VCF file?
A: There are 90 samples.
(bcftools query -l CEU.exon.2010_03.genotypes.vcf.gz | wc -l)

Q3: How many positions are there total in the VCF file? 
A: There are 3480 total positions.
(bcftools query -f '\%POS\\n' CEU.exon.2010_03.genotypes.vcf.gz | wc -l)

Q4: How many positions are there with AC=1? Note that you cannot simply count lines since the output of bcftools filter includes the VCF header lines. You will need to use bcftools query to get this number.
A: There are 1075 positions with AC=1.
(bcftools query -i AC=1 -f '\%POS\\n' CEU.exon.2010_03.genotypes.vcf.gz | wc -l)


Q5: What is the ratio of transitions to transversions (ts/tv) in this file?
A: ts/tv is 3.47
(bcftools stats CEU.exon.2010_03.genotypes.vcf.gz)

*Altering a VCF file
(bcftools annotate --rename-chrs chr_name_conv.txt CEU.exon.2010_03.genotypes.vcf.gz > CEU.exon.2010_03.genotypes.chr_conv.vcf)

Mutation Annotation Format (MAF)

Q6: What is the median number of variants per sample in this data set?
A:  The median number of variants per sample is 28.



