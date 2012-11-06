#muj pierszy readme z zadaniami :))
* Rozwiazania przykladowych zadan
## Laboratorium drógie

*  Wyswietl na ekran 4 ostatnie wiersze pliku *program.c* `


```sh
tail -n 4 program.c

```

* Zadanie 9: zlicz ilosc znakow z 3 pierwszych lini pliku /etc/passwd


```sh
cat /etc/passwd/ | head -n 3 | wc -m
```

* Zadanie 8: Zlicz pliki w /etc i pod katalogach

```sh
find /etc -type f -follow | wc -l
```

* Zadanie 7: Kazde slowo w osobnej lini

```sh
cat plik.txt | tr " \t" "\n"
```



