sed 's/ /-/g' FungiDB-65_CneoformansH99.gff | 
awk '$3 == "protein_coding_gene" && '/Name/' {print $9}' |
cut -d';' -f1,2

awk '{gsub(" ","-",$0); print $0}' FungiDB-65_CneoformansH99.gff |
awk '$3 == "protein_coding_gene" || $3 == "pseudogene" || $3 == "ncRNA_gene" {print $0}' |
awk '$9 !~ /Name/ {print $0}' |
awk '{gsub("description=","Name=;description=",$0); print $0}' |
awk '{gsub(";","\t",$0); print $0}' 


awk '$3 == "protein_coding_gene" || $3 == "pseudogene" || $3 == "ncRNA_gene" {gsub(" ","-",$0); print $0}' FungiDB-65_CneoformansH99.gff |
awk '$9 !~ /Name/ {print $0}' 

protein_coding_gene pseudogene ncRNA_gene

awk '{gsub(" ","-",$0); print $0}' FungiDB-65_CneoformansH99.gff |
awk '$3 == "ncRNA_gene" {print $9}' |
awk '{gsub(";","\t",$0); print $1, $2, $3}'
