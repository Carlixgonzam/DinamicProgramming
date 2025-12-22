def interestingdrink():
    n = int(input())
    precios = list(map(int, input().split()))
    precios.sort()
    q= int(input())
    for i in range(q):
        dinero=int(input())
        izq, der = 0, n
        while izq < der:
            medio = (izq + der) // 2
            if precios[medio] <= dinero:
                izq = medio+1
            else:
                der = medio
        print(izq)
interestingdrink()