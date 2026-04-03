#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP14
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Rendu de monnaie

#probleme(title: "Rendu de monnaie")[
On dispose d'un ensemble de $n$ pièces et billets \
$S = (c_1, c_2, ..., c_n)$

Étant donné une somme $v$ à rendre, trouver une combinaison de pièces/billets $T=(x_1,x_2,…,x_n)$ qui minimise 
$sum_(i=1)^n x_i$ , sous la contrainte 
$sum_(i=1)^n x_i dot c_i = v$.

Ainsi, $v$ représente la somme de monnaie à rendre et $x_i$
le nombre de pièces $c_i$ à utiliser. La quantité à minimiser est donc le nombre total de pièces rendues, la condition à vérifier traduisant simplement le fait qu'il faut bien rendre la somme $v$.
]

#pagebreak()

#algorithm(title: "Stratégie gloutonne")[
  Tant que la somme à rendre est différente de 0 :
  - prendre le billet maximum inférieur à la somme restante
  - ajouter ce billet dans le résultat
  - soustraire ce billet à la somme restante
]

Avec notre monnaie l'euro €, cet algorithme est optimale. Il renvoie toujours le nombre minimal de billet possible.

*Question :* Donner une monnaie associé à une somme où cet algorithme n'est pas optimale.

#pagebreak()
*Exemple :*\
Prenons la monnaie suivante, $S = (6, 4, 1)$.\
Nous devons rendre la somme $v=8$.

Notre algorithme renverra : \ 
- $T = (1, 0, 2)$ donc les billets 6, 1 et 1. 
Alors que l'on pourrait rendre : \
- $T = (0, 2, 0)$ donc les billets 4 et 4.

== Sac à dos 
#probleme(title: "Sac à dos")[

On dispose d’un sac à dos de capacité maximale $C$. \
On considère $n$ objets, l’objet $i$ étant caractérisé par :
- un poids $p_i > 0 $,
- une valeur $v_i > 0 $.

On cherche une combinaison
$T = (x_1, dots, x_n) $ avec $x_i in {0, 1} $,
où $x_i = 1 $ si l’objet $i $ est placé dans le sac, et
$x_i = 0 $ sinon, qui maximise $sum_(i=1)^n v_i x_i $ sous la contrainte $sum_(i=1)^n p_i x_i <= C $.

Autrement dit, il s’agit de sélectionner un sous-ensemble d’objets de valeur totale maximale
sans dépasser la capacité du sac à dos.
]

#pagebreak()
 + Prendre les objets de valeur maximum en premier
 + Prendre les objets de poids minimum en premier
 + Prendre les objets avec le meilleur ratio valeurs/poids en premier

\
Ces 3 stratégies gloutonnes ne sont pas optimales. \
*Question :* Trouver des configurations (objets / capacité) pour lequel ces stratégies ne sont pas optimales.

#pagebreak()
1. prendre en priorité l’objet de plus grande valeur :\
  #table(columns: 3, stroke: 0.1pt, 
  [Objet], [Poids], [Valeur],
  [A],[9],[19],[B],
  [5],[10], 
  [C],[5],[10])
  $C= 10$\
  On prends A (19) au lieu de B+C (20)
#pagebreak()
2. prendre en priorité l’objet de plus petit poids
  #table(columns: 3, stroke: 0.1pt, 
  [Objet], [Poids], [Valeur],
  [A],[1],[1],
  [B],[1],[1], 
  [C],[9],[20])
  $C= 10$\
  On prend A+B (2) au lieu de C+A ou C+B (21)
#pagebreak()

3. prendre en priorité l’objet ayant le meilleur ratio valeur/poids 
  #table(columns: 4, stroke: 0.1pt, 
  [Objet], [Poids], [Valeur], [Ratio],
  [A],[5],[5],[1],
  [B],[10],[8], [0.8])
  $C= 10$\
  On prend A (5) au lieu de B (8)

== Boites
#probleme(title: "Rangement dans des boites")[
On considère un ensemble d’objets $S = (x_1, dots, x_n)$, où chaque objet $i in S$ est caractérisé par un poids $x_i > 0$.

On dispose d’un nombre a priori illimité de boîtes, chacune ayant une capacité maximale $C >0$.

On cherche une affectation des objets aux boîtes telle que, pour toute boîte $b$, la contrainte de capacité soit respectée :
$ sum_(i in b) x_i <= C $

L’objectif est de minimiser le nombre total de boîtes utilisées.
]

*Question :* Proposer un algorithme gloutons pour répondre à ce problème.

#algorithm(title: "Stratégie gloutonne")[
  Tant qu'on a pas placé tous les objets :
  - prendre l'objet qui à le poids maximum
  - ajouter cet objet dans la première boite où il rentre
]
\
*Exemple*

*Question* Montrer la non-optimalité de cet algorithm.

#pagebreak()
+ Contre exemple pas optimale :\
  $C=9$, $S = (4, 4, 3, 3, 2, 2)$

  Notre algoritme renverra :\
  $b_1 = (4,4)," "b_2 = (3,3,2)," " b_3 = (2)$\

  On aurait pu faire avec seulement 2 boites :\
  $b_1 = (4,3,2)," " b_2 = (4,3,2)$\

