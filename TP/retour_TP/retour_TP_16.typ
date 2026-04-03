#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP16
  ],
  subtitle: "ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Dernier rappel sur les strings

- on peut accéder à un caractère comme dans une liste :
#v(-.5em)
```python
a = 'bonjour'
print(a[0]) # 0
len(a) # 7
```
#v(-.5em)
- string immuable : on ne peut pas modifié un caractère
#v(-.5em)
```python
a[0] = 'm' # Erreur !!
```
#v(-.5em)
- ajouter un élément : on ne peut pas append mais on peut concaténer
#v(-.5em)
```python
a.append('!') # Erreur append pour les listes
a += '!' # a vaut 'bonjour!'
```

Il est aussi possible d'utiliser les fonctions sur les strings, tel que `replace`, `split` ou `trim`.
#image("/assets/image-30.png")

J'ai aussi vu des personnes transformer des chaines de caractères en listes, puis modifier les éléments de la liste et transformer la liste en chaine de caractères. Si c'est plus facile pour vous c'est ok. Mais ça serait bien de pouvoir maitriser les strings.
#pagebreak()
Certains ont utiliser la fonctions `str.join(list)` pour transformer une liste en chaine de caractères. Attention à bien comprendre les fonctions que vous utilisez qu'on n'a pas vu en cours.

```python
a = ['a', 'b', 'c']
print(''.join(a)) # 'abc'
print('-'.join(a)) # 'a-b-c'
```

== Retourner un booléen
Faire ça c'est correcte :
#v(-.5em)
#image("/assets/image-28.png")
#v(-.5em)
Mais on pourrait simplement faire ça :
```python
def est_representable(n_int, n):
    return n_int >= -2**(n-1) and n_int <= 2**(n-1)-1
```
#v(-.5em)

== Assert
Quand on vous demande de vérifier que quelque chose est vrai et de renvoyer une erreur sinon, on vous demande implicitement d'utiliser l'instruction assert.

Donc je ne veux plus voir ça :
#v(-.5em)
#image("/assets/image-29.png")
```python
def est_representable(n_int, n):
    assert est_representable(n_int, n)
```

== Utilisez vos fonctions !
#image("/assets/image-31.png")

== Q6
#image("/assets/image-34.png")

J'aurais du être plus clairs et demandé sans passer par décimaux.

Comment on fait sans décimaux ?



