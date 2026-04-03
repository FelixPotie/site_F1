#import "../../slydst.typ": *

#show: slides.with(
  title: [
    Retour TP 1
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",

)

== Remarques générales

Pensez à exécuter TOUTES les cellules de code, même quand je ne vous demande pas de compléter.

Si une variable est initalisée plus haut pas besoin de la remettre.
#image("image-1.png", width: 80%)

#pagebreak()
Pensez à afficher les résultats avec `print(...)`.\
Je ne veux pas voir ça : \
#image("image-3.png", width: 80%)
#pagebreak()

Sur la sortie, on voit ce qu'exécute python, mais il écrase chaque valeur avec la suivante. Nous on veut garder les messages affichés.
#image("image-4.png", width: 80%)

#pagebreak()
Utilisation de fonction : \
```py 
#les () et donc les arguments sont collés (sans espace) aux noms de fonctions 
print(x) 
int(4.6)
range(10)
# et non pas 
print (x)
int (4.6)
range (10)
``` 

#pagebreak()

Clareté du code : 
```py 
print(10*variables+3<=autre_variable*4)
#essayez d'aérer vos code pour plus de clareté
print(10 * variables + 3 <= autre_variable * 4)
``` 

#pagebreak()

Attention à l'indentation : 
#image("image-6.png", width: 70%)

#pagebreak()

L'exécution s'arrête à la première erreur. Donc si tu as une erreur, corrige là, ou si c'est voulu sors là dans une autre cellule pour voir le reste de ton exécution.

#image("image.png")

#pagebreak()
Nom des variables snake case: 
- en minuscule 
- si plusieurs mot séparé d'un `_`
- nom clair 
- en général pour les indices d'une liste on utilise `i`

#pagebreak()

Boucle infini : 
Attention, si vous faites des boucles `while` il faut vérifier que la condition d'arrêt va être atteinte. Sinon vous allez faire une boucle infini et le site va _planter_. Pensez à sauvegarder souvent votre travail au cas où ça vous arrive.

== Retour sur le TP 
Q3. \
Que vaux `12 / 4` ?

Que vaux `12 // 4` ?

Q4. \ 
Que vaux `int(3.9)` ? 

Que vaux `int("deux")` ?

Que vaux `bool(0)` ?

Que vaux `bool(4)` ?


#pagebreak()

Q6. Ecrivez un booléen qui vaut `True` si et seulement si le lutin a un chapeau bleu et qu'il fait au moins 10 fois la taille de son chapeau.
```py
couleur_chapeau = "bleu"
taille_chapeau = 12.3
taille_lutin = 113.2
```

#pagebreak()
À ne pas faire :
#image("image-7.png")
Ici on dit : "Si vrai affiche vrai sinon affiche faux." Alors qu'on peut directement afficher vrai ou faux.

#pagebreak()

Q8. \
Pour savoir si un entier est pair on fait : `x%2 == 0`

Quel est la différence entre : 
```py 
if x%2 == 0 : 
  print("pair")
elif x%2 == 1 :
  print("impair")
```
Et 
```py 
if x%2 == 0 : 
  print("pair")
else :
  print("impair")
```
#pagebreak()
Q9.\
`l = [1,3,9,2,5]`

Que renvoie `l[5]` ?

Que renvoie `type(l)` ?

Q10.\
Que fait `l = l.append(6)` ? 

Q12. \
Que renvoie `list(range(5))` ?



#pagebreak()


Q13. Écrire un programme qui *calcule* $sum_(i=0)^(9) i$ à l'aide d'une boucle for.

#image("image-2.png", width: 80%)
#pagebreak()

Q14. Écrire un programme qui parcourt la liste `l` et ajoute 1 à chaque élément de `l` à l'aide d'une boucle while.
```py
l = [5, 9, 9, 52, 3.2, 6]
```

1. Parcourir une liste avec une boucle while grâce aux indices (i)
2. Modifier la valeur d'un élémént à l'indice i
