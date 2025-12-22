def nextround(lista, k):
    puntaje=0
    listica= lista[k-1]
    for i in lista:
        if i >= listica and i > 0:
            puntaje += 1
    print(puntaje)
    
lista=[1,3,5,8,2,4,6]
k=5
nextround(lista,k)
            