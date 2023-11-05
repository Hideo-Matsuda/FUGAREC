root=$PWD
sample=testdata
fq_path=${root}/data/${sample}.fastq
genome_path=${root}/data/ref/hg19.rm.fa
refseq_path=${root}/data/ref/hg19_genCode19_rename.fa
minimap2_path=${root}/tools/minimap2-2.24_x64-linux

# mapping long read to genome 
#sample=`basename ${fq_path%.*}`
$minimap2_path/minimap2 -t 30 -x splice ${genome_path} ${fq_path} > ${root}/out/${sample}_hg19.paf 
$minimap2_path/minimap2 -t 30 -x map-ont ${refseq_path} ${fq_path} > ${root}/out/${sample}_refseq.paf

