#import "../../slydst.typ": *



#show: slides.with(
  title: [
    Retour TP 5
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",

)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)


== if True return True else False
Ici les lignes 7 à 9 peuvent se simplifier en une seule ligne.
#image("image.png", width: 80%)

#image("image-1.png", width: 80%)
C'est déjà mieux !
#pagebreak()
Et si on utilisait directement un booléen ? Et qu'on mettait un nom de variable plus parlant ?
#image("image-2.png", width: 80%)

== Tant qu'il n'y a pas de changement
C'est dommage de ne pas profiter du fait que l'on sait si un changement a eu lieu ou pas.

Ici on va continuer même si on a déjà notre liste triée.
#image("image-3.png", width: 80%)

#pagebreak()
On peut dire : tant qu'il n'y a pas de changement on continue.
#image("image-4.png", width: 70%)
Ou avec le mot clé `continue` qui passe à l'itération suivante.\
#image("image-5.png", width: 70%)
== On ne touche pas au k derniers éléments

Après k appels de la fonction parcours_1, les k derniers éléments sont forcément à leur place. On peut donc ne pas les toucher.

Il faut donc faire un parcours jusqu'à `len(liste) - k - 1`. Puis gérer le k dans tri_bulle_2.
#image("image-6.png", width: 60%)

== Pire cas
Le cas qui prend le plus de temps est celui où la liste est triée en ordre décroissant.\
En effet, on va devoir placer petit à petit chaque élément à sa place. On aura donc len(t)-1 appelles à parcours_1.

== Complexité
#image("image-7.png")