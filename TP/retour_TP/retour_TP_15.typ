#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP15
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Complexité des tris

#image("/assets/image-12.png")

*Rappel : * \
Tri bulles : $O(n^2)$\
Tri par insertion : $O(n^2)$\
Tri par sélection : $O(n^2)$\

Tri fusion : $O(n log n)$ (méthode de "diviser pour régner")\

== Non-optimalité
#image("/assets/image-15.png", width: 60%)

Mettre juste ça ne vous rapportera aucun point, il faut donner un contre exemple claire, donc inventer une configuration.
#image("/assets/image-16.png") 
#image("/assets/image-17.png")
#pagebreak()
Attention à bien comprendre le problème d'optimisation. \
Il était demander de *maximiser le nombre de conférence*.
#image("/assets/image-14.png")

== Commentaire 
Tous ceux qui m'ont dit "je me souviens plus ce que fait mon algo et je le comprend plus" d'une semaine à l'autre, c'est que vous n'avez pas compris votre algo ou que votre code n'est pas clair. \

N'hésitez pas à mettre des commentaires dans votre code pour expliquer ce que vous faites, ça vous aidera à comprendre et à vous souvenir de ce que vous avez fait (et aussi pour que le correcteur puisse mieux évaluer votre travail).