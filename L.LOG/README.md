# Log pour Olaitan, rechercher ses fichiers perdus

```
$ git log --pretty=oneline | grep 012d8
```

```
$ git log --pretty=format:"Qui? %an -> Tag %h, Quand? %ar -m \"%s\"" 300112017
```

```
$  git log --pretty=format:"Qui? %an -> Tag %h, Quand? %ar -m \"%s\"" -- .Q.Query 
Qui? setrar -> Tag fc5f8ad, Quand? 2 days ago -m "."
Qui? Jacques -> Tag 9cde467, Quand? 9 days ago -m "Jazz"
```
