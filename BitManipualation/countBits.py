def contar_bits(n: int) -> list:
    contador = [0]
    for i in range(1, n + 1):
        contador.append(contador[i // 2] + i % 2)
    return contador
