from global_imports import *

def menu_principal():
    while True:
        print("\n=== MENU PRINCIPAL ===")
        print("1. Introdução à POO")
        print("0. Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
           menu()
        elif opcao == "0":
            print("Encerrando o programa.")
            break
        else:
            print("Opção inválida.")
           
if __name__ == "__main__":
    menu_principal()


