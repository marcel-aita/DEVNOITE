from global_imports import *

def menu_pricipal():
    while True:
        print("\n--- Menu Principal ---")
        print("1 - Exercício 1")
        print("2 - Exercício 2")
        print("3 - Exercicio 3")

        print("0 - Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            exec1()

        elif opcao == "2":
            exec2()

        elif opcao == "3":
            exec3()

        elif opcao == "0":
            print("Saindo do programa...")
            break
        else:
            print("Opção inválida. Tente novamente.")

if __name__=="__main__":
    menu_pricipal()