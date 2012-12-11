#!/bin/bash
# SKRYPT ZMIENA NAZWY PLIKOW Z .HTM NA .HTML
# A NASTEPNIE SPRAWDZA CZY W NOWYCH NAZWACH
# SA SPACJE - JESLI SA, ZMIENIA JE NA ZNAK
# PODKRESLENIA, A JESLI NIE KONCZY PRACE
# WYPISUJAC LICZBE I OPIS ZMIAN : )

number=0
FOUND=0

	for filename in *.htm
	do
		echo "$filename" | grep -q ".htm$"
		if [ $? -eq $FOUND ]
		then
			fname=$filename
			n=$(echo $fname | sed -e "s/.htm/.html/g")
			mv "$fname" "$n"
			let "number += 1"
		fi
		
	
	done
	numer=0 
  	znal=0
	for filename in *.html 
	do
		echo "$filename" | grep -q " "
		if [ $? -eq $znal ]
		then
			nazwa=$filename
			nowa=$(echo $nazwa | sed -e "s/ /_/g")
			mv "$nazwa" "$nowa"
			let "numer += 1"
		fi
	done
	echo "Rozszerzenie zmienione $number razy, a spacje $numer razy"
	exit 0
