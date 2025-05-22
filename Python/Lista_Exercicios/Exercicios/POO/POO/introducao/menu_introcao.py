from .classe import classe_executar
from .atributo import atributo_executar
from .metodo import metodo_executar

def menu():
    while True:
        print("\n--- MENU POO ---")
        print("1. Classe e objeto")
        print("2. Atributos")
        print("3. Métodos")
        print("0. Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            classe_executar()
        elif opcao == "2":
            atributo_executar()
        elif opcao == "3":
            metodo_executar()
        elif opcao == "0":
            print("Saindo... Até mais!")
            break
        else:
            print("Opção inválida. Tente novamente.")

if __name__ == "__main__":
    menu()