from strings_utils.contagem import contar_palavras
from strings_utils.limpeza import remover_espacos_extra
from estruturas import (estrutura_controle,repetir_for,repetir_while,operacoes_lista,
    mostrar_cores,animais_unicos,dados_alunos,classificar_idade)

def opcao_1():
    texto = " Olá, como vai você?   "
    print("Número de palavras no texto:", contar_palavras(texto))
    print("Texto sem espaços extras:", remover_espacos_extra(texto))
    input("\nPressione Enter para voltar ao menu...")

def opcao_2():
    try:
        numero = int(input("Digite um número: "))
        estrutura_controle(numero)
    except ValueError:
        print("Entrada inválida.")
    input("\nPressione Enter para voltar ao menu...")

def opcao_3():
    try:
        idade = int(input("Digite a idade: "))
        print("Classificação:", classificar_idade(idade))
    except ValueError:
        print("Idade inválida.")
    input("\nPressione Enter para voltar ao menu...")

def opcao_4():
    try:
        qtd = int(input("Quantos animais? "))
        print("Animais únicos:", animais_unicos(qtd))
    except ValueError:
        print("Número inválido.")
    input("\nPressione Enter para voltar ao menu...")

def opcao_5():
    try:
        n = int(input("Quantas repetições? "))
        print("Com for:", repetir_for(n))
        print("Com while:", repetir_while(n))
    except ValueError:
        print("Entrada inválida.")
    input("\nPressione Enter para voltar ao menu...")

def opcao_6():
    try:
        qtd = int(input("Quantas frutas? "))
        frutas = operacoes_lista(qtd)
        frutas.append("uva")
        print("Lista final:", frutas)
    except ValueError:
        print("Número inválido.")
    input("\nPressione Enter para voltar ao menu...")
def opcao_7():
    try:
        qtd = int(input("Quantas cores? "))
        print("Cores:", mostrar_cores(qtd))
    except ValueError:
        print("Número inválido.")
    input("\nPressione Enter para voltar ao menu...")

def opcao_8():
    try:
        qtd = int(input("Quantos alunos? "))
        alunos = dados_alunos(qtd)
        print("\n=== Alunos cadastrados ===")
        for i, aluno in enumerate(alunos, start=1):
            print(f"\nAluno {i}:")
            print(f"  Nome : {aluno['nome']}")
            print(f"  Idade: {aluno['idade']}")
            print(f"  Curso: {aluno['curso']}")
    except ValueError:
        print("Número inválido.")
    input("\nPressione Enter para voltar ao menu...")
# Dicionário de opções
opcoes_menu = {
    "1": opcao_1,
    "2": opcao_2,
    "3": opcao_3,
    "4": opcao_4,
    "5": opcao_5,
    "6": opcao_6,
    "7": opcao_7,
    "8": opcao_8,
}

def exibir_menu():
    print("\n=== MENU ===")
    print("1 - Contar palavras e limpar texto")
    print("2 - Verificar número positivo/negativo/zero")
    print("3 - Classificar idade")
    print("4 - Animais únicos")
    print("5 - Repetições (for e while)")
    print("6 - Lista de frutas")
    print("7 - Cores (tupla)")
    print("8 - Cadastrar alunos")
    print("0 - Sair")


while True:
    exibir_menu()
    escolha = input("Escolha uma opção: ")

    if escolha == "0":
        print("Saindo...")
        break
    elif escolha in opcoes_menu:
        opcoes_menu[escolha]()  
    else:
        print("Opção inválida.")

