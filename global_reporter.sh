MKSHELL="/bin/bash"

#Contar cuantos outputs de cada tipo hay
	echo "fasta, $(ls *.fasta | wc -l)" > global_num_fasta.tmp  #busca cuantas hay para cada tipo de output
	echo "prot_faa, $(ls *-prot.faa | wc -l)" > global_num_protfaa.tmp
	echo "prot_fna, $(ls *-prot.fna | wc -l)" > global_num_protfna.tmp
	echo "prot_faa_error, $(ls *-prot.faa.fetcherror | wc -l)" > global_num_protfaaerror.tmp
	echo "prot_fna_error, $(ls *-prot.fna.fetcherror | wc -l)" > global_num_protfnaerror.tmp
#juntar los archivos
	cat *.tmp >> global_report.csv
#Poner header a la tabla
	sed -i '1i output_type, num' global_report.csv && rm *.tmp


