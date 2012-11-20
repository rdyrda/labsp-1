#Labolatorium 5

# Zadanie 1

```sh
find ~/ -maxdepth 1 -mtime -10
```

# Zadanie 2

```sh
find / -name \*config\* -type f 2> /dev/null
```

# Zadanie 3

```sh
find ~/ -atime 20
```

# Zadanie 4

```sh
find /etc \( -type f -and -name a* \) -or \( -type d -and ! - empty\) 2> /dev/null
```

# Zadanie 5

```sh
rm x??
```
# Zadanie 6

```sh
mkdir date +%Y-%m-%d
```
