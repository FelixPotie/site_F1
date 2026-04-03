#import "../../slydst.typ": *



#show: slides.with(
  title: [
    Retour TP 4
  ],
  subtitle:"ITC",
  authors: "Félix POTIÉ",
  date: "2025/2026",
  title-color: rgb("#206b26"),
  layout: "small",

)
#show raw: set block(fill: silver.lighten(65%), width: 100%, inset: 1em)


== Slices

```python
liste = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

print(liste[2:5])  
print(liste[:5])   
print(liste[5:])   
print(liste[::2])
print(liste[1::2])
print(liste[::-1]) 

```

#pagebreak()
```python
liste = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

print(liste[2:5])  # [2, 3, 4]
print(liste[:5])   # [0, 1, 2, 3
print(liste[5:])   # [5, 6, 7, 8, 9]
print(liste[::2])  # [0, 2, 4, 6, 8]
print(liste[1::2]) # [1, 3, 5, 7, 9]
print(liste[::-1]) # [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

```

La complexité d'un slice est en $O(k)$ où $k$ est la taille du slice.

== Q1 
Quelles sont les valeurs de l'indice `i` à considérer pour tester toutes les positions possibles du motif dans le texte? 

#table(columns: 11)[a][b][r][a][c][a][d][a][b][r][a]
#v(-1em)
#box(inset: 0em)[#table(columns: 3)[c][a][r]] 
#box(inset: 0.4em)[#h(12.5em)i = 0]

#v(-1em)
#box(inset: 0em)[#pad(left: 1.3em)[#table(columns: 3)[c][a][r]]]
#box(inset: 0.4em)[#h(11.2em)i = 1]
#v(-0.5em)
#pad(left: 6.2em)[...]
#v(-0.5em)
#box(inset: 0em)[#pad(left: 11.2em)[#table(columns: 3)[c][a][r]]]
#box(inset: 0.4em)[#h(1.3em)i = 8 = 11-3 = t-m]
#v(-1em)
#box(inset: 0em)[#pad(left: 12.5em)[#table(columns: 3)[c][a][r]]]
#box(inset: 0.4em)[i = 9]

$0 <= i <= t-m$

== Q2 
#image("image-3.png", width: 80%)
Quel est le problème de cette approche? 

== Q3 : sans les slices
Où/quand remettre à 0 notre compteur ? \
Qui a un exemple qui ne fonctionne pas sur cette fonction?
#image("Capture d’écran du 2025-10-13 10-54-03.png", width: 85%)
#image("Capture d’écran du 2025-10-13 10-54-08.png")

Performance : où placer la condition ligne 8/9?
#image("image-8.png", width: 85%)
#pagebreak()
Réponse : après qu'on ait fini de parcourir le motif.
#image("image-9.png", width: 85%)
Mais peut-on faire mieux?
#pagebreak()
Oui avec l'ajout d'un `break` si on tombe sur une lettre différente.
#image("image-10.png", width: 85%)
#pagebreak()
Variante avec un `while`.
#image("image-11.png", width: 85%)

== Q6 : complexité

Attention aux notations, quand on vous demande une complexité en pire cas, il faut répondre avec un grand $O$. \

Sinon celà veut dire que vous calculer exactement le nombre d'opérations, or nous ne voulons regarder que l'ordre de grandeur.

❌ La compléxité est (len(texte)-len(motif)+1) \* len(motif) 

#pagebreak()
Pour les complexité, on essaie de l'éloigner du langage de programmation. C'est pourquoi on n'utilise pas len(t) par exemple.\
❌ $O("(len(texte)-len(motif)+1) * len(motif)")$\
🟡 $O("(|texte|-|motif|+1) * |motif|")$\
\
On pense à se débarasser des constantes qui ne change pas l'ordre de grandeur. \
✅ $O("(|texte|-|motif|) * |motif|")$\
\
On renomme les variables pour que ce soit plus clair.  \
✅ on pose $t$ la taille du texte et $m$ la taille du motif, on a alors une complexité en pire cas en $O((t - m) * m)$\


On peut s'arrêter là, mais on peut aller encore plus en détail, si on développe notre expression. \
✅ $O((t - m) * m) = O(t * m - m^2) = O(t*m)$ en partant du principe que le texte est plus grand que le motif.\

#pagebreak()
Il y avait un petit piège dans la question 6. 
#image("image-12.png", width: 85%)

Ici la création du slice `texte[i:i+len(motif)]` est en $O(m)$\
De plus la comparaison de deux chaînes de caractères est aussi en $O(m)$ dans le pire cas. 

On a donc une complexité en pire cas de \ $O((t-m) * 2m) = O(t*m)$.

Les 2 fonctions ont donc la même complexité en pire cas.