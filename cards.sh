#!/bin/bash

for num in `cat cc-list.txt`; do
	for q in {0..9}; do 
		if [[ $(python pyluhn.py $(echo $num | sed 's/?/'$q'/g')) == "True" ]]; then
			echo $num | sed 's/?/'$q'/g'
		fi
	done
done 
