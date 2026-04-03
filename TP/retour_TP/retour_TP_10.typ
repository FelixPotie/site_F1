#import "../../slydst.typ": *
#import "@preview/lovelace:0.3.0": *

#show: slides.with(
  title: [
    Retour TP10
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",
)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)


== Performance

Pourquoi ce n'est pas bien de faire ça ?

#image("/assets/Capture d’écran du 2026-01-05 11-02-28.png")

Ici dans certains cas on appelle 2 fois la même fonction avec les mêmes paramètres. On pourrait croire que ce ne change pas grand chose mais en fait si !

#pagebreak()
Si on appelait cette version avec [5,4,3,2,1]
#image("/assets/tree-01.svg", height: 89%)
Alors qu'avec la version où l'on aurait qu'un appel on aurait :
#image("/assets/tree-02.svg", height: 89%)

// Version 2 appels récursifs : 

// $C(n)  &= 1+ 2C(n-1) \
// &=  2(2C(n-2)) \
// &= ... \
// &= 2^n * C(1) \
// &= O(2^n)$

// Version avec 1 seul appel récursif : 

// $C(n)  &= 1 + C(n-1) \
// &= 2 + C(n-2) \

// &= n + C(1)\
// &= O(n)$
// 

Pareil ici : comment on peut résoudre ce problème ?
#image("/assets/Capture d’écran du 2026-01-05 11-02-13.png")

Sur quel principe repose cette algorithme de l'exponentiel rapide?
