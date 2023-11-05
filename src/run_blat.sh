root=$PWD
sample=testdata
fq_path=${root}/data/${sample}.fastq
genome_path=${root}/data/ref/hg19.rm.fa
refseq_path=${root}/data/ref/hg19_genCode19_rename.fa
fragment_fq_path=${root}/out/out/for_edge_alignment/${sample}/*.csv

# mapping gap seq to genome
seqkit fq2fa ${fq_path} > ${fq_path%.fastq}.fa
blat -q=dna -t=dna -out=blast8 -minScore=15 -stepSize=5 ${genome_path} ${fq_path%.fastq}.fa ${root}/out/${sample}_gap_blat_min15_stp5.psl
done

