#import "../../slydst.typ": *



#show: slides.with(
  title: [
    Retour TP 3
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",

)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)


== Addition de matrices

#image("image.png")
Améliorations possibles dans le code précédent :
- `est_matrice(m1) != True` $->$ `not est_matrice(m1)`
- Pour tester que les 2 matrices ont le même nombre de colonnes, on peut faire `len(m1[0]) != len(m2[0])` car `est_matrice()` vérifie déjà que la matrice contient lemême nombre de colonnes par ligne.
- on peut maintenant réunir tous les if en un seul avec des `or` :
```python
if not est_matrice(m1) or not est_matrice(m2) or len(m1) != len(m2) or len(m1[0]) != len(m2[0]):
    return None
```

#pagebreak()

Autre exemple où réunir les if permet une meilleure lisibilité :
#image("image-1.png")

== Deux plus proches valeurs
#image("image-2.png")

#pagebreak()
Améliorations possibles dans le code précédent :
- assert à la place des if + return None
- faire partir j de i+1 permet d'éviter de comparer 2 fois les mêmes valeurs. On effectue donc 2 fois moins de comparaisons.