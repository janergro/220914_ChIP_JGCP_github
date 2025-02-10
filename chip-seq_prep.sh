#!/bin/bash

#demultiplexing for ChIP-Seq (19.05.2021)

#conda activate BtoFQ

#bcl2fastq -R "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/raw_data/" -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/demultiplexed/" --sample-sheet "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/220914_modified_sample_sheet.csv" -r 1 -p 8 -w 1 --no-lane-splitting

#conda deactivate


#FASTQC ChIP-Seq data demultiplexed

#for i in "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/demultiplexed/*fastq.gz"
#do
#	fastqc -t 12 $i -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/fastqc_demulti/"
#done


#Adapter trimming with cutadapt

#for i in /mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/demultiplexed/*.fastq.gz
#do
#	f="$(basename $i)"
#	h="${f%%.*}"

#	cutadapt -j 0 -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA --trim-n -m 30 --nextseq-trim=25 $i -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/trimmed/$h.trim.fastq.gz"  > "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/trimmed/$h.report.txt"

#done


#FASTQC after trimming

for i in "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/trimmed/*fastq.gz"
do
	
	fastqc -t 12 $i -o "/mnt/c/Users/jangro/Documents/Sequencing/220914_ChIP_JGCP/fastqc_trimmed/"

done

	
	
