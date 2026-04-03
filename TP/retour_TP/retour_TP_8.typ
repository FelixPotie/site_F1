#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP8
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)


== Rappel `string`
Pour rappel une chaine de caractères est "presque" comme une liste en Python.

Ce qui fonctionne pareil entre les listes et les chaînes de caractères :
```python
s = "hello" 
print(s[0])        # accès à un caractère par indice
print(s[1:4])      # slice 
print(len(s))      # taille avec len()
for c in s:        # itération sur les caractères
    print(c)
```

#pagebreak()
Cependant, les chaînes de caractères sont immuables, c'est à dire on ne peut pas modifier un caractère à une position donnée.

Par exemple, l'instruction suivante génère une erreur :
```python
s = "hello"
s[0] = "H"  #TypeError: 'str' object does not support item assignment
```
On ne peut pas non plus utiliser des méthodes qui modifient la chaîne en place, comme `append()`, `remove()`, `sort()`, `reverse()`.

== Utiliser des variables ! 
#image("./img/8/1.png",  width: 90%)
#v(-1em)
Ici `texte[i:i+k]` nous renvoie bien un motif de taille `k` à partir de l'indice `i` dans la chaîne `texte`.

Mais on recalcule la slice 3 fois dans la boucle, ce qui est inefficace. 
#v(-1em)
```python
cle = texte[i:i+k]
```

== Maximum d'un dictionnaire
1ère version possible, on récupère les valeurs et on utilise la fonction `max()` :
#image("./img/8/2.png",  width: 90%)
#v(-1em)
Combien de parcours du dictionnaire dans cette version ?
#pagebreak()
2ème version possible, on parcourt le dictionnaire une seule fois :
#image("./img/8/3.png",  width: 90%)
Ici il y a un problème. Lequel est-il ?

#image("./img/8/4.png")

#pagebreak()
3ème version possible, on parcourt le dictionnaire une seule fois et on gère le cas initial sans prendre le risque d'erreur :
#image("./img/8/5.png")

