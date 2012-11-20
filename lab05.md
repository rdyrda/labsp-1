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


### Zadanie 4

```sh
find /etc \( -type f -and -name a* \) -or \( -type d -and ! - empty\) 2> /dev/null
```

### Zadanie 5

```sh
rm x??
```
### Zadanie 6

```sh
mkdir date +%Y-%m-%d
```
