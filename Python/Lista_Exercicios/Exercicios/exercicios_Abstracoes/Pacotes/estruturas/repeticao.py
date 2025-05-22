def repetir_for(n):
    return [i for i in range(1, n + 1)]

def repetir_while(n):
    contador = 1
    resultado = []
    while contador <= n:
        resultado.append(contador)
        contador += 1
    return resultado