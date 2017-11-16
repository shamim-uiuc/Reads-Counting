#!/bin/bash

#Read Counting for RNA-Seq
#Dependencies: htseq tools

gff_dir=/shared_annotation/soybean.gff

for fn in $(find -name '*.fq'); do
    base=$(basename $fn "*.fq")
    htseq-count -s no -m intersection-nonempty -t gene -i ID $fn $gff_dir > htseq_Output_files/${base}
    echo "htseq-count -s no -m intersection-nonempty -t gene -i ID $fn $gff_dir > htseq_Output_files/${base}"
done

echo "Read Counting Done"
date
