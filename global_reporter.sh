MKSHELL="/bin/bash"

#This script makes a global report of nf-efecth results

#Count outputs of each type
        echo "fasta, $(ls *.fasta | wc -l)" > global_num_fasta.tmp  #numer of files for each output type
        echo "prot_faa, $(ls *-prot.faa | wc -l)" > global_num_protfaa.tmp
        echo "prot_fna, $(ls *-prot.fna | wc -l)" > global_num_protfna.tmp
        echo "prot_faa_error, $(ls *-prot.faa.fetcherror | wc -l)" > global_num_protfaaerror.tmp
        echo "prot_fna_error, $(ls *-prot.fna.fetcherror | wc -l)" > global_num_protfnaerror.tmp
#merge tmp files    
        cat *.tmp >> global_report.csv
#Set table header and delete tmp files 
        sed -i '1i output_type, num' global_report.csv && rm *.tmp
