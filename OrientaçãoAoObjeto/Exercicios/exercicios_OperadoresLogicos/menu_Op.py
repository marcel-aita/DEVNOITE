from ListaOp import exe1, exe2, exe3, exe4, exe5, exe6, exe7, exe8, exe9, exe10

def menu_Op():    
    while True:
        print("\n--- Menu de Seleção ---")
        print("Escolha o que você quer ver:")
        print("1 - exe1")
        print("2 - exe2")
        print("3 - exe3")
        print("4 - exe4")
        print("5 - exe5")
        print("6 - exe6")
        print("7 - exe7")
        print("8 - exe8")
        print("9 - exe9")
        print("10 - exe10")

        print("0 - sair")

        opcao = input("Digite sua opçâo: ")

        if opcao == '1':
            exe1()
        elif opcao == '2':
            exe2()
        elif opcao == '3':
            exe3()
        elif opcao == '4':
            exe4()
        elif opcao == '5':
            exe5()
        elif opcao == '6':
            exe6()
        elif opcao == '7':
            exe7()
        elif opcao == '8':
            exe8()
        elif opcao == '9':
            exe9()
        elif opcao == '10':
            exe10()    
        elif opcao == '0':
            print("Saindo do programa.")
            break
        else:
            print("Opção onválida. Por favor, digite um número válido do menu.")

if __name__ == "__main__":
    menu_Op()