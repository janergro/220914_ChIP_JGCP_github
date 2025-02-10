#!/bin/bash


#map ChIP-Seq samples to human genome


#conda activate Bowtie2

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/trimmed/*fastq.gz
#do

#date

#	f="$(basename $i)"
#	h="${f%%.*}"

#	bowtie2 -p 12 -x /mnt/c/Users/jangro/Documents/references/genome/Mus_musculus/bowtie2-index/mm10 2>> "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped/"$h"_mouse_mapping_log.txt" $i | tee >(samtools view -@ 12 -bS -F 4 - > "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped/"$h"_mouse.bam") | samtools view -bS -@ 12 -f 4 - | samtools bam2fq -@ 12 - | bowtie2 -p 12 -x /mnt/c/Users/jangro/Documents/references/genome/Homo_sapiens/bowtie2-index/hg38 2>> "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped/"$h"_human_mapping_log.txt" - | samtools sort -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped/"$h"_human.bam"  -@ 12

#date

#done

#conda deactivate



#map ChIP-Seq samples to mouse genome


#conda activate Bowtie2

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/trimmed/*fastq.gz
#do

#date

#	f="$(basename $i)"
#	h="${f%%.*}"

#	bowtie2 -p 12 -x /mnt/c/Users/jangro/Documents/references/genome/Homo_sapiens/bowtie2-index/hg38 2>> "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped_mouse/"$h"_human_mapping_log.txt" $i | tee >(samtools view -@ 12 -bS -F 4 - > "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped_mouse/"$h"_human.bam") | samtools view -bS -@ 12 -f 4 - | samtools bam2fq -@ 12 - | bowtie2 -p 12 -x /mnt/c/Users/jangro/Documents/references/genome/Mus_musculus/bowtie2-index/mm10 2>> "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped_mouse/"$h"_mouse_mapping_log.txt" - | samtools sort -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped_mouse/"$h"_mouse.bam"  -@ 12

#date

#done

#conda deactivate





#deduplicate using MarkDuplicates on mouse .bam-files

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped_mouse/*.bam
#do

#	samtools index $i
#	f="$(basename $i)" 
#	h="${f%%.*}" 
#	java -jar "/mnt/c/Users/jangro/Documents/Programming/Programs/picard.jar" MarkDuplicates \
#	I=$i \
#	O="/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/$h.markdup.bam" \
#	M="/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/$h.txt" \
#	REMOVE_DUPLICATES=true 
#done


#deduplicate using MarkDuplicates on human .bam-files

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/mapped_human/*.bam
#do

	#samtools index $i
	#f="$(basename $i)" 
	#h="${f%%.*}" 
	#java -jar "/mnt/c/Users/jangro/Documents/Programming/Programs/picard.jar" MarkDuplicates \
	#I=$i \
	#O="/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/$h.markdup.bam" \
	#M="/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/$h.txt" \
	#REMOVE_DUPLICATES=true 

#done




#check with FASTQC after deduplication

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/*.bam
#do

#fastqc -t 12 $i -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/fastqc_deduplicated/"

#samtools index $i

#done


#create bigWig files to view in e.g. IGV

#conda activate Deeptools

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/*human.markdup.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"

	#echo $i
	#echo ""
	

	#bamCoverage -b $i -bs 10 -p max -v --normalizeUsing CPM -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/"$h".bw
#	cou="$(samtools view -@ 12 -F 4 -c $i)"
#	echo "$i	$cou"

#done

#conda deactivate




#create bigWig files to view in e.g. IGV for mapped SLAM-seq

#conda activate Deeptools

#for i in /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/*.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"

#	echo $h
#	echo ""

#	samtools index -@ 12 $i

#	bamCoverage -b $i -bs 10 -p max --normalizeUsing CPM -o /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/"$h".bw
#	cou="$(samtools view -@ 12 -F 4 -c $i)"
#	echo "$i	$cou"

#done

#conda deactivate


#merge bigwigs of SlamSeq (all)

#conda activate Deeptools

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-0_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-2-0_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-3-0_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-0.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-0.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-0_div.bedGraph

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-30_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-2-30_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-3-30_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-30.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-30.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-30_div.bedGraph

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-2-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-3-45_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-45.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-45.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-45_div.bedGraph

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-90_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-3-90_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-90.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 2) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-90.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-90_div.bedGraph



#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-0_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-0_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-3-0_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-0.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-0.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-0_div.bedGraph

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-30_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-30_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-3-30_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-30.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-30.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-30_div.bedGraph

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-3-45_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-45.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-45.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-45_div.bedGraph

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-90_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-3-90_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-90.bedGraph"

#awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-90.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-90_div.bedGraph


#for i in /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/*_div.bedGraph; 
#do

#	f="$(basename $i)"         
#	h="${f%%.*}"
#	p="${h%_1*}";
#	echo $p

#	awk '!/^ERCC/' $i > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_ERCC.bedGraph"
#        sort -k1,1 -k2,2n /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_ERCC.bedGraph" > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_sort.bedGraph"
#	bedGraphToBigWig /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_sort.bedGraph" /mnt/c/Users/jangro/Documents/Sequencing/211102_Repli_LB/hg38.chrom.sizes_sort.txt /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_merge.bw"
	
#	rm $i
#	rm /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_ERCC.bedGraph"
#	rm /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_sort.bedGraph"

#done

#conda deactivate



#merge bigwigs of SlamSeq (outliers removed)

conda activate Deeptools

        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-0_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-2-0_trimmed.bw  "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-0.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 2) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-0.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-0_div.bedGraph

        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-30_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-2-30_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-30.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 2) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-30.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-30_div.bedGraph

        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-2-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-3-45_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-45.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-45.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-45_div.bedGraph

        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-1-90_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-3-90_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-90.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 2) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-90.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/KI-90_div.bedGraph


        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-0_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-0_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-0.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 2) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-0.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-0_div.bedGraph

        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-30_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-30_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-30.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 2) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-30.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-30_div.bedGraph


        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-45_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-3-45_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-45.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-45.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-45_div.bedGraph

        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-1-90_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-2-90_trimmed.bw /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-3-90_trimmed.bw "/mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-90.bedGraph"

awk '{ print $1 "\t" $2 "\t" $3 "\t" ($4 / 3) }' /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-90.bedGraph > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/WT-90_div.bedGraph


for i in /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/*.bedGraph; 
do

	f="$(basename $i)"         
	h="${f%%.*}"
	p="${h%_1*}";
	echo $p

	awk '!/^ERCC/' $i > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_ERCC.bedGraph"
        sort -k1,1 -k2,2n /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_ERCC.bedGraph" > /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_sort.bedGraph"
	bedGraphToBigWig /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_sort.bedGraph" /mnt/c/Users/jangro/Documents/Sequencing/211102_Repli_LB/hg38.chrom.sizes_sort.txt /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/merge_outlier_rem/$p"_merge.bw"
	
	rm $i
	rm /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_ERCC.bedGraph"
	rm /mnt/c/Users/jangro/Documents/Sequencing/200201_SlamSeq_HCT116/mapped/own_bigwig/$p"_sort.bedGraph"
done

conda deactivate




#count mapped reads after dedup for mouse

#declare -i t=1


#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/*mouse.markdup.bam

#do

#	cou="$(samtools view -@ 12 -F 4 -c $i)"
#	echo "$i	$cou" #>> /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads.txt
#	echo $t
#	fac="$(cat /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads_factor.txt | awk -v line="$t" 'NR == line {print $2}')"
#	echo $fac
#	t=$((t+1))

#done

#declare -i t=1


#create bigWig files to view in e.g. IGV

#conda activate Deeptools

#declare -i t=1

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/*human.markdup.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"

#	echo $i
#	echo ""
	
#	fac="$(cat /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/mouse_reads_factor.txt | awk -v line="$t" 'NR == line {print $2}')"
#	echo $fac
#	t=$((t+1))

#	bamCoverage -b $i -bs 10 -p max -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/"$h"_norm.bw" --normalizeUsing None --scaleFactor $fac

#done

#declare -i t=1

#conda deactivate





#peak calling using MACS2

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/*human.markdup.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"

#	macs2 callpeak -t $i -c "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/input/IN_2_S25_R1_001_human.markdup.bam" -g hs -n $h -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks/$h" 2> "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks/$h.stderr"

#done



#peak calling using MACS2 broad

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/*human.markdup.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"

#	macs2 callpeak -t $i -c "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/input/IN_2_S25_R1_001_human.markdup.bam" -g hs -n $h -q 0.01 --broad --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/$h" 2> "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/$h.stderr"

#done


#sorting and indexing for ROSE

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/E*human.markdup.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"
#	echo $h

#	samtools sort -@ 12 $i > "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/"$h"_sorted.bam"
#	samtools index -@ 12 "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/"$h"_sorted.bam"

#done


#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/deduplicated/input/*human.markdup.bam

#do

#	f="$(basename $i)"
#	h="${f%%.*}"
#	echo $h

#	samtools sort -@ 12 $i > "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/"$h"_sorted.bam"
#	samtools index -@ 12 "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/"$h"_sorted.bam"

#done


#ROSE algorithm for super enhancer calling

#cd /mnt/c/Users/jangro/Documents/Programming/repositories/rose

#python ROSE_main.py -g HG38 -i /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/E_1.gff -r /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/E_1_S17_R1_001_human_sorted.bam -c /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/IN_2_S25_R1_001_human_sorted.bam -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/enhancer -s 12500 -t 2500

#python ROSE_main.py -g HG38 -i /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/E_5.gff -r /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/E_5_S17_R1_001_human_sorted.bam -c /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/sorted/IN_2_S25_R1_001_human_sorted.bam -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/enhancer -s 12500 -t 2500

#summarize bigwigs and generate PCA plot before normalization to spike-in

#conda activate Deeptools

#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/all_summary_rpm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/all_summary_rpm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/all_summary_rpm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/all_summary_rpm.tab


#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/C*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/C_summary_rpm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/C_summary_rpm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/C_summary_rpm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/C_summary_rpm.tab


#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/D*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/D_summary_rpm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/D_summary_rpm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/D_summary_rpm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/D_summary_rpm.tab


#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/E*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/E_summary_rpm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/E_summary_rpm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/E_summary_rpm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_rpm/E_summary_rpm.tab

#conda deactivate

#summarize bigwigs and generate PCA plot after normalization to spike-in

#conda activate Deeptools

#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/all_summary_norm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/all_summary_norm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/all_summary_norm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/all_summary_norm.tab


#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C_summary_norm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C_summary_norm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C_summary_norm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/C_summary_norm.tab


#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D_summary_norm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D_summary_norm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D_summary_norm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/D_summary_norm.tab


#multiBigwigSummary bins -b /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E*bw -p max --smartLabels -v -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E_summary_norm.npz

#plotPCA -in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E_summary_norm.npz -o /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E_summary_norm.pdf --outFileNameData /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/E_summary_norm.tab

#conda deactivate


#merge spike-in normalized bigWig

#conda activate Deeptools

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/*_1.bw; 
#do

#	f="$(basename $i)"         
#	h="${f%%.*}"               
#	p="${h%_1*}";
#	echo $p
	#echo $f
#        bigWigMerge $i /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_2.bw" /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_new.bedGraph"
#        sort -k1,1 -k2,2n /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_new.bedGraph" > /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_sort_new.bedGraph"
#	bedGraphToBigWig /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_sort_new.bedGraph" /mnt/c/Users/jangro/Documents/Sequencing/211102_Repli_LB/hg38.chrom.sizes_sort.txt /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_merge.bw"
#	rm /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_new.bedGraph"
#	rm /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/bigwig_human_norm/merge/$p"_sort_new.bedGraph"
#done

#conda deactivate




#merge spike-in normalized bigWig for MYC

#conda activate Deeptools

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_A.bw /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_B.bw "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_AB.bedGraph"

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_C.bw /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_D.bw "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_CD.bedGraph"

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_E.bw /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_F.bw "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_EF.bedGraph"

#        bigWigMerge /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_G.bw /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_H.bw "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/MYC_GH.bedGraph"



#for i in /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/*.bedGraph; 
#do

#	f="$(basename $i)"         
#	h="${f%%.*}"               
#	p="${h%_1*}";
#	echo $p
	#echo $f

#        sort -k1,1 -k2,2n $i > /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/$p"_sort.bedGraph"
#	bedGraphToBigWig /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/$p"_sort.bedGraph" /mnt/c/Users/jangro/Documents/Sequencing/211102_Repli_LB/hg38.chrom.sizes_sort.txt /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/$p"_merge.bw"
#	rm $i
#	rm /mnt/c/Users/jangro/Documents/Sequencing/ChIP_JGVK_210622/bigwig_spin_MYC/$p"_sort.bedGraph"
#done

#conda deactivate



#cd "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks/compare"

#mergePeaks C_1_S1_R1_001_human_peaks.narrowPeak D_1_S9_R1_001_human_peaks.narrowPeak E_1_S17_R1_001_human_peaks.narrowPeak -prefix CDE_compare -d given



#cd "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/compare"

#mergePeaks C_1_S1_R1_001_human_peaks.broadPeak D_1_S9_R1_001_human_peaks.broadPeak E_1_S17_R1_001_human_peaks.broadPeak -prefix CDE_compare -d 100



#merge peak files per replicate narrow peaks

#path=/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks/
#fol=_R1_001_human/
#file=_R1_001_human_peaks.narrowPeak

#for i in {1..4};
#do
	
#	rep=$(($i+4))

#	numera=$(($i+0))
#	nrp=$(($rep+0))
	
#	ol=given

#	mergePeaks -d $ol $path"C_"$i"_S"$numera$fol"C_"$i"_S"$numera$file $path"C_"$rep"_S"$nrp$fol"C_"$rep"_S"$nrp$file > $path"merged/C_"$i"_"$rep"_merge.txt"

	
#	numera=$(($i+8))
#	nrp=$(($rep+8))

#	mergePeaks -d $ol $path"D_"$i"_S"$numera$fol"D_"$i"_S"$numera$file $path"D_"$rep"_S"$nrp$fol"D_"$rep"_S"$nrp$file > $path"merged/D_"$i"_"$rep"_merge.txt"


#	numera=$(($i+16))
#	nrp=$(($rep+16))

#	mergePeaks -d $ol $path"E_"$i"_S"$numera$fol"E_"$i"_S"$numera$file $path"E_"$rep"_S"$nrp$fol"E_"$rep"_S"$nrp$file > $path"merged/E_"$i"_"$rep"_merge.txt"


#done



#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks/merged/*.txt
#do

#	echo $i

#	k="${i%%.*}"
 
#	awk ' BEGIN { s = 2; e = 5 } (NR>1) { for (j = s; j < e; j++) { printf("%s\t", $j) } print $NF }' $i >  $k".bed"
	#tail -n +2 $i | cut -f2-4,10 > $k"_3.bed"

#done


#path=/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/
#fol=_R1_001_human/
#file=_R1_001_human_peaks.broadPeak

#for i in {1..4};
#do
	
#	rep=$(($i+4))

#	numera=$(($i+0))
#	nrp=$(($rep+0))
	
#	ol=given

#	mergePeaks -d $ol $path"C_"$i"_S"$numera$fol"C_"$i"_S"$numera$file $path"C_"$rep"_S"$nrp$fol"C_"$rep"_S"$nrp$file > $path"merged/C_"$i"_"$rep"_merge.txt"

	
#	numera=$(($i+8))
#	nrp=$(($rep+8))

#	mergePeaks -d $ol $path"D_"$i"_S"$numera$fol"D_"$i"_S"$numera$file $path"D_"$rep"_S"$nrp$fol"D_"$rep"_S"$nrp$file > $path"merged/D_"$i"_"$rep"_merge.txt"


#	numera=$(($i+16))
#	nrp=$(($rep+16))

#	mergePeaks -d $ol $path"E_"$i"_S"$numera$fol"E_"$i"_S"$numera$file $path"E_"$rep"_S"$nrp$fol"E_"$rep"_S"$nrp$file > $path"merged/E_"$i"_"$rep"_merge.txt"


#done


#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/merged/*.txt
#do

#	echo $i

#	k="${i%%.*}"

 
#	awk ' BEGIN { s = 2; e = 5 } (NR>1) { for (j = s; j < e; j++) { printf("%s\t", $j) } print $NF }' $i >  $k".bed"

#done


#cd /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/merged/

#file=_merge.txt

#for i in {1..4};
#do
	
#	rep=$(($i+4))
	
#	ol=given

#	mergePeaks -d $ol "C_"$i"_"$rep$file  "D_"$i"_"$rep$file "E_"$i"_"$rep$file -prefix "CDE_"$i"_"$rep$file
	
#done

#mv /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/merged/CDE_* /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/merged/overlap/


#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/human_peaks_broad/merged/overlap/*.txt
#do

#	echo $i

	#k="${i%%.*}"

 
#	awk ' BEGIN { s = 2; e = 5 } (NR>1) { for (j = s; j < e; j++) { printf("%s\t", $j) } print $NF }' $i >  $i".bed"

#done








#peak calling using MACS2

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_S1_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 1A-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/1A-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/1A-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1B_S2_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 1B-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/1B-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/1B-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/2A_S3_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 2A-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/2A-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/2A-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/2B_S4_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 2B-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/2B-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/2B-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/3A_S5_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 3A-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/3A-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/3A-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/3B_S6_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 3B-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/3B-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/3B-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/4A_S7_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 4A-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/4A-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/4A-no-model.stderr"

#macs2 callpeak -t "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/4B_S8_R1_001.markdup.bam" -c "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/deduplicated_human/1A_IN_S9_R1_001.markdup.bam" -g hs -n 4B-no-model -q 0.01 --nomodel --outdir "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/4B-no-model-peaks" 2> "/mnt/c/Users/jangro/Documents/Sequencing/ChIP_Mix_210518/human_peaks/4B-no-model.stderr"







	






#counting for Bo103 TSS +/- 500 bp

#for i in /mnt/c/Users/jangro/Documents/Sequencing/ChIP-Seq_JV_20201111/merged_bam/*.bam

#do

	#f="$(basename $i)" 
	#h="${f%%.*}"

	#echo " "
	#echo "processing sample $h"
	#echo " "

	#featureCounts -a "/mnt/c/Users/jangro/Documents/Programming/2021/01_January/2021_01_12/TSS_500.saf" -F SAF -g gene_id -T 12 -G "/mnt/c/Users/jangro/Documents/references/genome/Homo_sapiens/hg38_UCSC_February.fa" -o "/mnt/c/Users/jangro/Documents/Programming/2021/01_January/2021_01_12/$h.counts.txt" $i
	
	#echo "done"
	#echo " "
	#echo " " 

#done


#





#ROSE algorithm for super enhancer calling

#cd /mnt/c/Users/jangro/Documents/Programming/repositories/rose

#python ROSE_main.py -g HG38 -i /mnt/c/Users/jangro/Documents/Programming/2021/01_January/2021_01_18/8A.gff -r /mnt/c/Users/jangro/Documents/Sequencing/ChIP-Seq_JV_20201111/sorted/PDX_Bo103_8A_S1_R1_001.sort.bam -c /mnt/c/Users/jangro/Documents/Sequencing/ChIP-Seq_JV_20201111/sorted/PDX_Bo103_8In_S9_R1_001.sort.bam -o /mnt/c/Users/jangro/Documents/Programming/2021/01_January/2021_01_19 -s 12500 -t 2500







