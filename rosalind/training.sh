#!/bin/bash
#test

#****Transcribin' DNA in RNA

#Raccourci clavier pour exécuter du shell / C-M-x i.e Ctrl+ALt+x

#La commande tr pour translating<==== transcrire ADN en ARN

#test

for i in {1..20} ; do
    echo "GATGGAACTTGACTACGTAAATT"
done

##display the dna sequence <==== dummy dna

touch mydummydnasequence.fastq

 echo "GATGGAACTTGACTACGTAAATT" < mydummydnasequence.fastq


 #Replace all "T" by all "U"

 ##Je cherche l'occurence "A" dans le fichier mydummydnasequence créé

 grep "A" mydummydnasequence.fastq | tr -s "T" "U" | sort mydummydnasequence.fastq

 # End of program



exit 0


