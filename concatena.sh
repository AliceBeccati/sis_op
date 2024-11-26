#!/bin/bash
indice=1
echo -n "" > output.txt
for file in ~/Documenti/SIS_OP/std*; do
        while read RIGA; do
		if [[ ${indice} -ge 2 && ${indice} -le 4 ]]
		then
                	echo ${RIGA} >> output.txt
		fi
		((indice=${indice}+1))
        done < ${file}
	indice=1
done
