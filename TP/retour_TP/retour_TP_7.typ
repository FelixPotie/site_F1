#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP7
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)

== Utilisation de Modules
#image("img/7/4.png", width: 70%)
#pagebreak()
On importe le module en haut de notre fichier (ou cellule dans le cas d'un notebook). \
Donc on ne fait pas ça :
#image("img/7/3.png", width: 70%)

== Tracer plusieurs courbes
Si on souhaite mettre plusieurs courbes sur un même graphique, on peut appeler plusieurs fois la fonction plot avant d'appeler show.
#v(-1em)
#image("img/7/5.png", width: 80%)
#v(-2em)
`plt.legend(liste_noms_courbes)` permet d'afficher une légende pour différencier les courbes.Il faut lui passer une liste de chaînes de caractères correspondant aux noms des courbes dans l'ordre où elles ont été tracées.
== Commentons certains codes ensemble
#image("img/7/1.png", width: 120%)
#pagebreak()
- l8 parenthèse inutile, mais pas d'erreur
- l9 le str n'est pas nécessaire, mais pas d'erreur
- l12 le continue fait qu'on passe a la boucle suivante
#pagebreak()

#image("img/7/2.png")
#pagebreak()
- l1 : inutile si on utilise directement le string l3
- l12 : inutile, split() renvoie une liste mais ne modifie pas la liste actuelle 
- l14 et l15 on a réécrit la même chose deux fois => stocker dans une variable intermédiaire 