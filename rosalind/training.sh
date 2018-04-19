#!/bin/bash
#test

#****Transcribin' DNA in RNA

#Raccourci clavier pour exécuter du shell / C-M-x i.e Ctrl+ALt+x

#La commande tr pour translating<==== transcrire ADN en ARN

#test

for i in {1..20} ; do
    echo "GATGGAACTTGACTACGTAAATT"
done

 #Replace all "T" by "U"

 ##Je cherche l'occurence "T" dans le fichier mydummydnasequence créé et le remplace par U

echo "GATGGAACTTGACTACGTAAATT" | tr "T" "U" | sort

 # End of program


exit 0


