from .funcoes_funcoes import (saudacao, somar,multiplicar, 
                             calcular_area_e_perimetro,operacoes_matematicas)
from .funcoes_lambda import (lambda_dobrar, lambda_ordenacao, 
                             lambda_quadrado,lambda_soma)

def menu_principal():
    opcoes = {
        '1': menu_funcoes_comuns,
        '2': menu_funcoes_lambda,
        '0': lambda: print("Saindo do programa. Até mais!")
    }

    while True:
        print("\n=== MENU PRINCIPAL ===")
        print("1 - Funções Comuns")
        print("2 - Funções Lambda (Anônimas)")
        print("0 - Sair")
        escolha = input("Escolha uma opção: ")

        acao = opcoes.get(escolha)
        if acao:
            if escolha == '0':
                acao()
                break
            else:
                acao()
        else:
            print("Opção inválida. Tente novamente.")

def menu_funcoes_comuns():
    opcoes = {
        '1': saudacao,
        '2': somar,
        '3': multiplicar,
        '4': calcular_area_e_perimetro,
        '5': operacoes_matematicas,
        '0': None
    }

    while True:
        print("\n--- MENU DE FUNÇÕES COMUNS ---")
        print("1 - Saudação")
        print("2 - Somar")
        print("3 - Multiplicar")
        print("4 - Calcular Área e Perímetro")
        print("5 - Operações Matemáticas (Funções Aninhadas)")
        print("0 - Voltar")
        escolha = input("Escolha uma função: ")

        acao = opcoes.get(escolha)
        if acao:
            acao()
        elif escolha == '0':
            break
        else:
            print("Opção inválida. Tente novamente.")

def menu_funcoes_lambda():
    opcoes = {
        '1': lambda_soma,
        '2': lambda_quadrado,
        '3': lambda_ordenacao,
        '4': lambda_dobrar,
        '0': None
    }

    while True:
        print("\n--- MENU DE FUNÇÕES LAMBDA ---")
        print("1 - Soma com Lambda")
        print("2 - Quadrado com Lambda")
        print("3 - Ordenar Lista de Tuplas com Lambda")
        print("4 - Dobrar Números com Lambda")
        print("0 - Voltar")
        escolha = input("Escolha uma função lambda: ")

        acao = opcoes.get(escolha)
        if acao:
            acao()
        elif escolha == '0':
            break
        else:
            print("Opção inválida. Tente novamente.")

if __name__ == "__main__":
    menu_principal()