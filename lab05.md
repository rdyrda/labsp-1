#Laboratorium 5

### Zadanie 1

```sh
find ~/ -maxdepth 1 -type f -mtime -10
```
// -maxdepth zawsze leci pierwsze
### Zadanie 2

```sh
find / -name \*config\* -type f 2> /dev/null
```

### Zadanie 3

```sh
find ~/ \( -type d -name ".git" -prune \) -o \( -type f -print \) 
```
// praktyczniejsza wersja z mtime(modify time)

albo

```sh
find . -path '*/.git/*' -prune -o -print
```

albo

```sh
find -mtime -20 | egrep -v '\.git'
```

albo

```sh
find . -not -iwholename '*/.git/*'
```

albo

```sh
find . ! -regex ".*/\.git/.*"
```

### Zadanie 4

```sh
find /etc \( -type f -and -name a* \) -or \( -type d -and ! - empty\) 2> /dev/null
```

### Zadanie 5

```sh
rm x??
```
//podobno nie działa:
```sh
find . -name "a??"-exec rm -rf {} \;
```
//a to podobno działa:
```sh
find . -mindepth 2 -maxdepth 2 -name "x??" -exec rm -rf \(\) \;
```
//a to dziala na bank
```sh
find . -mindepth 2 -maxdepth 2 -name x?? -delete 
```
## Zadanie 6

```sh
mkdir date +%Y-%m-%d
```
