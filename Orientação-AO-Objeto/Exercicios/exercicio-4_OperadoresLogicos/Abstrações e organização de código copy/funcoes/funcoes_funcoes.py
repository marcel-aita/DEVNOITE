def saudacao():
    print("\nExemplo de função com parâmetro e retorno:")
    nome = input("Digite seu nome: ")
    print(saudacao_return(nome))
    input("\nPressione Enter para voltar ao menu...")


def saudacao_return(nome):
     return f"Olá, {nome}!"

def somar():
    print("\nFunção de soma:")
    x = int(input("Digite um número: "))
    y = int(input("Digite outro número: "))
    print(f"A soma de {x} + {y} é: {somar_return(x, y)}")
    input("\nPressione Enter para voltar ao menu...")


def somar_return(a, b):
    return a + b

def multiplicar():
    print("\nFunção de multiplicação (com valor padrão para 'b'):")
    num1 = int(input("Digite um número: "))
    print(f"O resultado da multiplicação de {num1} por 2 é: {multiplicar_return(num1)}")
    num2 = int(input("Digite outro número para multiplicar: "))
    print(f"O resultado da multiplicação de {num2} por 5 é: {multiplicar_return(num2, 5)}")
    input("\nPressione Enter para voltar ao menu...")

    
def multiplicar_return(a, b=2):
    return a * b

def calcular_area_e_perimetro(): 
    print("\nFunção para calcular área e perímetro de um quadrado:")
    lado = int(input("Digite o valor do lado do quadrado: "))
    area, perimetro = calcular_area_e_perimetro_return(lado)
    print(f"A área do quadrado é: {area}")
    print(f"O perímetro do quadrado é: {perimetro}")
    input("\nPressione Enter para voltar ao menu...")

     
def calcular_area_e_perimetro_return(lado):
    area = lado ** 2
    perimetro = 4 * lado
    return area, perimetro

def operacoes_matematicas_return(a, b):
    def soma():
        return a + b
    def subtracao():
            return a - b
    def multiplicacao():
            return a * b
    def divisao():
            return a / b if b != 0 else "Não é possível dividir por zero"

    return soma(), subtracao(), multiplicacao(), divisao()






def operacoes_matematicas():
    print("\nFunção de operações matemáticas:")
    a = int(input("Digite um número: "))
    b = int(input("Digite outro número: "))
    soma, subtracao, multiplicacao, divisao = operacoes_matematicas_return(a, b)
    print(f"Soma: {soma}")
    print(f"Subtração: {subtracao}")
    print(f"Multiplicação: {multiplicacao}")
    print(f"Divisão: {divisao}")
    input("\nPressione Enter para voltar ao menu...")





