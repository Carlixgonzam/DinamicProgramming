def fib(n:int)->int:
    if n<=1:
        return n
    ant=0
    act=1
    for i in range(2, n+1):
        sig=ant+act #en lugar de guardar todos los valores intermedios en un arreglo
        ant,act=act,sig
    return act
# solo mantengo las dos ultimaws entradas de la sucesion