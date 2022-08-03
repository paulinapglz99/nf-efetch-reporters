#!/bin/bash

find -L . \
  -type f \
  -name "plasmid_IDs.txt" \
| sed "s#.fasta#.global_report.csv#" \
| xargs mk
