#!/bin/sh

# --------------------------------------
#
#  Correction 4.DML
#
#
# --------------------------------------

ETUDIANTS=(
 300098957
 300104524
 300104541
 300105201
 300106918
 300107361
 300108234
 300110500
 300110529
 300111671
 300111766
 300112017
 300112687
 300112917
 300113775
)
   
echo "# Corrections "

for id in "${ETUDIANTS[@]}"
do

   echo "\n## Etudiant ${id} "
   echo "###  =[BEGIN]============== Exécution du script ${id} =============== "
   echo "\`\`\`"

   # Charger le schema

   docker exec --interactive some-mysql \
      mysql --user root -ppassword < ~/Developer/INF1006-202-19A-01/4.DML/${id}/${id}-schema.sql

   # Charger les données

   docker exec --interactive some-mysql \
      mysql --user root -ppassword < ~/Developer/INF1006-202-19A-01/4.DML/${id}/${id}-data.sql

   echo "\`\`\`"
   echo "###  =[END]============== Exécution du script ${id} =============== "

done
