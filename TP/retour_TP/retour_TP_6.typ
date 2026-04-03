#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP6 + lectures des erreurs
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Qu'est-ce qu'une erreur ?
Les erreurs sont des problèmes qui surviennent lors de l'exécution d'un programme. 

Il faut savoir lire les erreurs pour pouvoir les corriger efficacement.

Je ne veux plus que vous m'appeliez en me disant "ça ne marche pas" sans avoir lu/compris l'erreur !

// Lire et comprendre les messages d'erreur
== Lire un message d'erreur
#image("img/6/image-1.png")
Un message d'erreur contient :
  - Le chemin d'exécution où l'erreur s'est produite (les fichiers et les lignes concernés)
  - Le type d'erreur (ex: `SyntaxError`, `ValueError`, `TypeError` ...)
  - Une description du problème
 
#image("img/6/image-2.png")
#pagebreak()
#image("img/6/image-3.png")
#image("img/6/image-4.png")
#image("img/6/image-5.png")


== Conseils pour les tableurs (.csv)
1. Je repère les différentes colonnes et le séparateur :
#image("img/6/image-8.png")
2. Je stocke les indices des colonnes :
#image("img/6/image-7.png")

== Tout sur une ligne ? 

```python
liste = ["nom, premnom, age\n", "Charles, Paul, 27\n", "Thomas, Camille, 12\n"]

# on veut récupérer l'age de la premiere personne
ligne_1 = liste[1]                  # str
liste_ligne_1 = ligne_1.split(',')  # liste
age_ligne_1_str = liste_ligne_1[2]  # str
age_ligne_1 = int(age_ligne_1_str)  # int
# on peut le faire directment 
age_ligne_1 = int(liste[1].split(',')[2])

```

== Enlever des caractères
```python
liste = ["nom, premnom, age, ville\n", "Charles, Paul, 27, Lyon\n"]

# on veut récupérer la ville où habite Paul
# il faut enlever le \n (retour à la ligne)
ville_paul = liste[1].split(',')[3].replace('\n', '')
```

#pagebreak()
On peut aussi utiliser strip()\

```python
ville_paul = liste[1].split(',')[3].strip()
```
`string.strip()` : enlève les espaces ou autres caractères spéciaux comme `\n` autour de la `string` 

```python
texte = "   bonjour   \n"
texte_pure = texte.strip() # texte_pure=="bonjour"

```