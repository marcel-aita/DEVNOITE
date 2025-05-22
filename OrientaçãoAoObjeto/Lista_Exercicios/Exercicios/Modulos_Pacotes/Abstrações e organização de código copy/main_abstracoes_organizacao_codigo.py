from funcoes import menu_principal
from dicionarios import menu_dicionario_principal



def menu_principal():
   
    menu_opcoes = {
        '1': menu_dicionario_principal,
        '2': menu_principal,
        '0': lambda: print("Saindo do programa. Até mais!") 
    }

    while True:
        print("\n=== MENU INTERATIVO ===")
        print("1 - Dicionários")
        print("2 - Funções")
        print("0 - Sair")
        escolha = input("Escolha uma opção: ")

        
        acao = menu_opcoes.get(escolha)
        if acao:
            if escolha == '0':
                acao()
                break
            else:
                acao()
        else:
            print("Opção inválida. Tente novamente.")
if __name__ == "__main__":
    menu_principal()