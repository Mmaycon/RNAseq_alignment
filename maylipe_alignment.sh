FASTQ_FILE_PATH=""
OUTPUT_PATH=""

STAR --runThreadN 8 \
     --genomeDir /media/hd/biosoftwares/pipeline_test/genome \
     --readFilesCommand zcat \
     --outFileNamePrefix $OUTPUT_PATH \
     --soloBarcodeReadLength 0 \
     --readFilesIn $FASTQ_FILE_PATH/bamtofastq_S1_L003.08.fastq.gz_R2_fastq.gz $FASTQ_FILE_PATH/bamtofastq_S1_L003.08.fastq.gz_R1_fastq.gz \
     --soloType CB_UMI_Simple \
     --soloCBstart 1 --soloCBlen 16 --soloUMIstart 17 --soloUMIlen 10 \
     --soloCBwhitelist /media/hd/biosoftwares/yard/apps/cellranger-7.0.1/lib/python/cellranger/barcodes/737K-august-2016.txt \
     --soloCellFilter EmptyDrops_CR \
     --soloStrand Forward \
     --outSAMattributes CB UB \
     --outSAMtype BAM SortedByCoordinate  
