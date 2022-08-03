#!/bin/bash

#Basic script for sequence lenght report of fasta sequences from a text file

VAR=$(cat ten_ids.txt)   # Define VAR to read ids from txt file 

for i in ${VAR}
do
       echo "$i, $(cat $i.fasta \
        | tail -n +2 | wc -m)" 
done  > sequence_lenghts.tmp       #Creates a file with loop output
