from ListaAbstracoes import exe1, exe2

def menu_Abs():
    while True:
        print("\n--- Menu de Seleção ---")
        print("Escolha uma opção:")
        print("1 - exe1")
        print("2 - exe2")
        
        print("0 - Sair")

        opcao = input("Digite sua opção: ")

        if opcao == "1":
            exe1()
        elif opcao == "2":
            exe2()
        elif opcao == "3":
            break
        else:
            print("Opção inválida. Tente novamente.")
        print()
if __name__ == "__main__":
    menu_Abs()