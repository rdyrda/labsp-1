# Laboratorium 6
   :)
## Zadanie 1

```sh
grep . plik.txt
```
## Zadanie 2

```sh
grep ^[0-9] pl*
```
## Zadanie 3

```sh
ls | grep -E '^.{8}r.*'
```
## Zadanie 4

```sh
grep -c bash /etc/passwd
```
or
```sh
grep -c "/bash$" /etc/passwd
```
## Zadanie 5

```sh
egrep -iw [ILVXLCDM]+ plik.txt
```
or
```sh
egrep -i \\b[IVXLCDM+\\b plik.txt
```


