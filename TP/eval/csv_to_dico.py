
from random import choice

def csv_to_dico(nom_fichier):
    fichier = open(nom_fichier, "r", encoding="utf-8")
    lignes = fichier.readlines()
    fichier.close()
    dico = {}
    for i in range(1,len(lignes)):
        elements = lignes[i].strip().split(",")
        cle = elements[0] + " " + elements[1]
        valeur = 0
        for j in range(2, len(elements)):
            if elements[j] != "":
                valeur += 1
        dico[cle] = valeur
    return dico


def get_min_eval(eleve, min_eval):
    _, nb_eval = eleve
    return nb_eval == min_eval
   

def filtrer_eleves(eleves):
    min_eval = min(eleves.values())
    return dict(filter(lambda eleve: get_min_eval(eleve, min_eval), eleves.items()))
 
 


def n_eleve_aleatoire(n, eleves):
    eleves = filtrer_eleves(eleves)
    if n > len(eleves):
        n = len(eleves)

    evalues_choisis = []
    while len(evalues_choisis) < n:
        eleve = choice(list(eleves.keys()))
        if eleve not in evalues_choisis:
            evalues_choisis.append(eleve)
    evalues_choisis.sort()
    return evalues_choisis

print("\n********** Liste élèves - MPSI.csv **********")
mpsi = n_eleve_aleatoire(12,csv_to_dico("./TP/eval/Liste élèves - MPSI.csv"))
for eleve in mpsi:
    print(eleve)

print("\n*** Liste élèves - PCSI.csv **********")
pcsi = n_eleve_aleatoire(12,csv_to_dico("./TP/eval/Liste élèves - PCSI.csv"))
for eleve in pcsi:
    print(eleve)




# equivalences = {"A+":5, "A": 4.75, "A-": 4.5, "B+":4, "B":3.5, "B-":3.25, "C+":3, "C":2.5, "C-":2, "D+":1.75, "D":1.5, "D-":1, "E":0.5, "F":0}


# fichier = open("./Liste élèves - MPSI.csv", "r", encoding="utf-8")
# lignes = fichier.readlines()
# fichier.close()
# dico = {}
# for i in range(1,len(lignes)):
#     elements = lignes[i].strip().split(",")
#     cle = elements[0] + " " + elements[1]
#     valeur = 0
#     for j in range(2, 5):
#         if elements[j] != "" and elements[j] in equivalences:
#             valeur += equivalences[elements[j]]
#         else :
#             valeur = 0
#     dico[cle] = (valeur / 3) * 4

# for eleve in dico :
#     print(str(dico[eleve])[0:4] + " " + eleve)