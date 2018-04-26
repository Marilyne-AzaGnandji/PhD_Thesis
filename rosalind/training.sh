#!/bin/bash
#test

#*********************************Transcribin' DNA in RNA

#Raccourci clavier pour exécuter du shell / C-M-x i.e Ctrl+ALt+x

#La commande tr pour the transcribing <==== transcrire ADN en ARN

#test

for i in {1..20} ; do
    echo "GATGGAACTTGACTACGTAAATT"
done

 #Replace all "T" by "U"

echo "GATGGAACTTGACTACGTAAATT" | tr "T" "U" | sort

#***********************************Trancribing RNA into protein
# test

echo "AUGGCC" | tr -s  "AUG" "M" | tr -s  "GCC" "A" | sort

#Affichage de la séquence d'ARN

echo "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUGA"

#Le code génétique <===codons et protéines associées

declare -A CodonsArn=( ["AUG"]="M" ["GCC"]="A"  ["AUG"]="M" ["GCC"]="A" ["UUU"]="F" ["CUU"]="L" ["AUU"]="I" ["GUU"]="V" ["UUC"]="F" ["CUC"]="L" ["AUC"]="I" ["GUC"]="V" ["UUA"]="L" ["CUA"]="L" ["AUA"]="I" ["UUG"]="L" ["CUG"]="L" ["AUG"]="M" ["GUG"]="V" ["UCU"]="S" ["CCU"]="P" ["ACU"]="T" ["GCU"]="A" ["UCC"]="S" ["CCC"]="P" ["ACC"]="T" ["GCC"]="A"["UCA"]="S" ["CCA"]="P" ["ACA"]="T" ["GCA"]="A" ["UCG"]="S" ["CCG"]="P" ["ACG"]="T" ["GCG"]="A" ["UAU"]="Y" ["CAU"]="H" ["AAU"]="N" ["GAU"]="D" ["UAC"]="Y" ["CAC"]="H" ["AAC"]="N" ["GAC"]="D" ["UAA"]="STOP", ["CAA"]="Q" ["AAA"]="K", ["GAA"]="E"["UAG"]="STOP" ["CAG"]="Q" ["AAG"]="K" ["GAG"]="E" ["UGU"]="C" ["CGU"]="R" ["AGU"]="S", ["GGU"]="G"["UGC"]="C" ["CGC"]="R" ["AGC"]="S" ["GGC"]="G" ["UGA"]="STOP" ["CGA"]="R" ["AGA"]="R" ["GGA"]="G" ["UGG"]="W" ["CGG"]="R" ["AGG"]="R" ["GGG"]="G" )

#Je cherche à afficher les protéines correspondants aux codons dans ma séquence d'ARN <= Not ok yet!
#echo ${CodonsArn[@]}

echo ${CodonsArn["AUG"]}${CodonsArn["GCC"]}

echo ${CodonsArn["GCC"]}

#echo "AUGGCCAUGGCGCCCAGAACUGAGAUCAAUAGUACCCGUAUUAACGGGUG" | tr -s "AUG" "M" | tr -s "GCC" "A" |sort

a=1; echo $a
  b=$a; echo $b
  a="un deux trois"; echo $a
  echo $a $b
  echo $a$b

## Complementing a strand of DNA
 
  
  echo "AAAACCCGGT" | tr "[ACGT]" "[TGCA]" | rev

### Counting DNA nucleotides

 echo "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC" |sort count

 echo -n "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC" | sed -r 's/(.)/\1\n/g' | sort | uniq -c
 
 echo -n "AACGGTTTT" | fold -w 1 | sort | uniq -c

 
# End of program


exit 0
