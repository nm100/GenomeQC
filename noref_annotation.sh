#!/bin/bash

# This script calculates, plots and then email the busco scores for the user uploaded genome annotations.
# Usage: bash annotation.sh <transcripts file (fasta format)> <busco output directory name> <busco dataset> <email address> <name for output plots> 



#This command calls the busco script according to the input parameters provided by the user
python /home/nancy/assembly_app/busco-master/scripts/run_BUSCO_gff.py --in $1 --out $2 -m transcriptome --lineage $3 -c 4 --blast_single_core
#This command calls a python script which plots and email the busco scores for the genome annotation set 
python /home/nancy/assembly_app/busco-master/scripts/no_ref_gffplot.py $4 $5 $2 

