from .base import executar_base
from .getter_setter import executar_getter_setter
from .privado import executar_privado
from .protegido import executar_protegido 
from .completo import executar_completo
def  menu_encapsulamento_introducao():
    while True:
        print("1 - Introdução")
        print("2 - getter e setter")
        print("3 - Privado")
        print("4 - Protegido")
        print("5 - Completo")
        print("0 - Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == '1':
            executar_base()
        elif opcao == '2':
            executar_getter_setter()
        elif opcao == '3':
            executar_privado()
        elif opcao == '4':
           executar_protegido()
        elif opcao == '5':
            executar_completo()
        elif opcao == '0':
            print("Saindo do programa.")
            break
        else:
            print("Opção inválida. Tente novamente.")

