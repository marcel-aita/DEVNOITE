from .Associacao.demonstracao_associacao import demonstrar_associacao
from .Composicao.demonstracao_composicao import demonstrar_composicao
from .Agregacao.demonstracao_agregacao import demonstrar_agregacao
def exibir_menu():
    while True:
       
        print("\n=== Relacionamentos POO ===")
        print("1. Associação")
        print("2. Composição")
        print("3. Agregação")
        print("0. Sair do Programa")
        
        escolha = input("Digite sua opção")

        if escolha == '1':
            demonstrar_associacao()
        elif escolha == '2':
            demonstrar_composicao()
        elif escolha == '3':
            demonstrar_agregacao()
        elif escolha == '0':
            print("Saindo do programa. Obrigado por explorar!")
            break
        else:
            print("Opção inválida.")
        
