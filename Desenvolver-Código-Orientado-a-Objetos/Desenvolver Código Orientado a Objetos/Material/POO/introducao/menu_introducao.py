from .classe import classe_executar
from .atributo import atributo_executar
from .metodo import metodo_executar
from .completo import completo_executar
from .relacionamentos_poo.Menu_relacionamento import exibir_menu
def menu_introducao():
    while True:
        print("\n--- MENU POO BÁSICO ---")
        print("1. Classe e objeto")
        print("2. Atributos")
        print("3. Métodos")
        print("4. Classe e estruturas")
        print("5. Relacionamentos")
        print("0. Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            classe_executar()
        elif opcao == "2":
            atributo_executar()
        elif opcao == "3":
            metodo_executar()
        elif opcao=="4":
            completo_executar()
        elif opcao=="5":
            exibir_menu()
        elif opcao == "0":
            print("Saindo... Até mais!")
            break
        else:
            print("Opção inválida. Tente novamente.")

