#!/bin/bash

conda activate Deeptools


computeMatrix reference-point --referencePoint TSS -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/WT/D*merge.bw -R /mnt/c/Users/jangro/Documents/Programming/2021/03_March/2021_03_04/bed_prot_cod.bed --sortRegions ascend --sortUsing sum -a 500 -b 500 -p max -bs 500 --averageTypeBins sum --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K4me3_TSS_WT.mat.gz

plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K4me3_TSS_WT.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K4me3_TSS_WT.pdf --averageType mean --perGroup --sortRegions ascend --sortUsing sum --sortUsingSamples 1 --plotType lines --perGroup  --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K4me3_TSS_WT.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K4me3_TSS_WT_regions.txt


computeMatrix reference-point --referencePoint TSS -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/WT/E*merge.bw -R /mnt/c/Users/jangro/Documents/Programming/2021/03_March/2021_03_04/bed_prot_cod.bed --sortRegions ascend --sortUsing sum -a 500 -b 500 -p max -bs 500 --averageTypeBins sum --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_WT.mat.gz

plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_WT.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_WT.pdf --averageType mean --perGroup --sortRegions ascend --sortUsing sum --sortUsingSamples 1 --plotType lines --perGroup  --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_WT.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/H3K27ac_TSS_WT_regions.txt


### WT090

#computeMatrix reference-point --referencePoint TSS -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_090.bed -a 500 -b 500 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG090_heat_regions.txt


#computeMatrix reference-point --referencePoint TES -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_090.bed -a 500 -b 500 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG090_heat_regions.txt


#computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_090.bed -a 500 -b 500 -m 5000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG090_heat_regions.txt


### WT045

#computeMatrix reference-point --referencePoint TSS -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_045.bed -a 500 -b 500 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG045_heat_regions.txt


#computeMatrix reference-point --referencePoint TES -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_045.bed -a 500 -b 500 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG045_heat_regions.txt


#computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_045.bed -a 500 -b 500 -m 5000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG045_heat_regions.txt


### WT4590

#computeMatrix reference-point --referencePoint TSS -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_4590.bed -a 500 -b 500 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TSS_DEG4590_heat_regions.txt


#computeMatrix reference-point --referencePoint TES -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_4590.bed -a 500 -b 500 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_TES_DEG4590_heat_regions.txt


#computeMatrix scale-regions -S /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_spin_MYC/*_merge.bw -R /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/bed_DEG_4590.bed -a 500 -b 500 -m 5000 -p max -bs 10 --averageTypeBins mean --missingDataAsZero -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590.mat.gz

#plotProfile -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590.pdf --averageType mean --perGroup --plotType lines --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590.txt

#plotHeatmap -m /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590.mat.gz --outFileName  /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590_heat.pdf --averageType mean --perGroup --plotType lines --outFileNameMatrix /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590_heat.txt --outFileSortedRegions /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/TSS_count/MYC_genebody_DEG4590_heat_regions.txt


conda deactivate

