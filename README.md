# FUGAREC
FUGAREC is a tool to detect fusion genes from long read RNA-seq data.

# Depencency
- Minimap2 (tested with version 2.17) 
- BLAT (tested with version 36x2)
- python (tested with version 3.11.5)
- pandas (tested with version 2.1.1)
- numpy (tested with version 1.26.0)

# Installation
1. Clone and enter this repository:
```
git clone https://github.com/Hideo-Matsuda/FUGAREC
```
2. Download [Anaconda](https://www.anaconda.com/) and prepare a python runtime environment.

3. Install python and necessary python libraries.
```
conda create -n FUGAREC
conda activate FUGAREC
conda install python==3.11.5 pandas==2.1.1 numpy==1.26.0
```
4. Download [minimap2](https://github.com/lh3/minimap2) and store a series of files in **`src/minimap2/`**

5. Install [BLAT](https://anaconda.org/bioconda/blat), which can be installed through bioconda.

6. Download additional files from FigShare (https://figshare.com/articles/dataset/testdata_fastq/24501754) and put the files the following locations.
```
data/testdata.fastq
data/ref/hg19_genCode19_rename.fa
data/ref/hg19.rm.fa
out/testdata_gap_blat_min15_stp5.psl
```
# Data
Sequencing data should be placed in **`data/`** in fastq format.

The breast cancer sequencing data used in the paper of FUGAREC is available in the sequence read archive (SRA) under accessions [SRX22168673](https://www.ncbi.nlm.nih.gov/sra/?term=SRX22168673).


# How to use
1. Align read to reference genome and transcriptome with minimap2
```
sh src/run_minimap2.sh

```

2. Prepare for re-aligning the GAP  
`Run Prep_Gap-Realignment.ipynb`

3. Align gap sequence to reference genome with blat 
```
sh src/run_blat.sh
```

4. Detect fusion gene  
`Run Detect_Fusion.ipynb`

# Citing this work

If you use the code or data in this tool, please cite:
```
@article{Keigo Masuda2024,
  title={Detecting Fusion Genes in Long-Read Transcriptome Sequencing Data with FUGAREC},
  author={Keigo Masuda and Yoshiaki Sota and Hideo Matsuda},
  journal={IPSJ Transactions on Bioinformatics},
  volume={17},
  number={ },
  pages={1-9},
  year={2024},
  doi={10.2197/ipsjtbio.17.1}
}
```
