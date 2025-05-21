#calcule a área para um círculo de raio 5 e um quadrado de lado 4.
# #Função area_circulo(raio) e area_quadrado(lado)
from math import pi
def area_circulo(raio):
    return pi * (raio ** 2)
def area_quadrado(lado):
    return lado ** 2
def main():
    raio = 5
    lado = 4
    print(f"A área do círculo com raio {raio} é: {area_circulo(raio)}")
    print(f"A área do quadrado com lado {lado} é: {area_quadrado(lado)}")
