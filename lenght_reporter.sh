#!/bin/bash

#Basic script for sequence lenght report of fasta sequences from a text file

VAR=$(cat ten_ids.txt)   # Define VAR to read ids from txt file 

for i in ${VAR}
do
       echo "fasta, $i, $(cat $i.fasta \
        | tail -n +2 | wc -m)" 
done  > sequence_lenghts_fasta.tmp       #Creates a file with loop output

#For .fna files

for i in ${VAR}
do
       echo "prot_faa, $i, $(cat $i-prot.faa \
        | tail -n +2 | wc -m)" 
done  > sequence_lenghts_faa.tmp       #Creates a file with loop output

#For .faa files

for i in ${VAR}
do
       echo "prot.fna, $i, $(cat $i-prot.fna \
        | tail -n +2 | wc -m)" 
done  > sequence_lenghts_fna.tmp       #Creates a file with loop output

#Merging tables

        cat *.tmp >> sequence_lenghts.csv

#Set table header and delete tmp files 

        sed -i '1i output_type, plasmid_name, seq_lenght,' sequence_lenghts.csv && rm *.tmp
