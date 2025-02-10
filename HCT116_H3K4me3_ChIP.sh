#!/bin/bash

conda activate Deeptools

#computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Top_5_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_5_H3K4me3.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_5_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_5_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_5_H3K4me3.txt


computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Top_30_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_30_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_30_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_30_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_30_H3K4me3.txt


computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Top_10_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_10_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_10_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_10_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_10_H3K4me3.txt


computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Top_70_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_70_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_70_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_70_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Top_70_H3K4me3.txt







computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Short_corr_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Short_corr_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Short_corr_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Short_corr_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Short_corr_H3K4me3.txt


computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Medium_corr_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Medium_corr_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Medium_corr_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Medium_corr_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Medium_corr_H3K4me3.txt


computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Long_corr_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Long_corr_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Long_corr_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Long_corr_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Long_corr_H3K4me3.txt


computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/D*merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/Longest_corr_BED_genes.bed -a 1000 -b 1000 -m 10000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Longest_corr_H3K4me3.mat.gz

plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Longest_corr_H3K4me3.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Longest_corr_H3K4me3.pdf --averageType mean --plotType lines --perGroup  --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/short_trans/Longest_corr_H3K4me3.txt


conda deactivate



