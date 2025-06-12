from .funcionario import Funcionario
from .recursos_humanos import RecursosHumanos

def exec7():
    nome_funcionario = input("Digite o nome do funcionário: ")
    idade_funcionario = int(input("Digite a idade do funcionário: "))
    funcionario = Funcionario(nome_funcionario, idade_funcionario)
    recursos_humanos = RecursosHumanos()
    recursos_humanos.adicionar_funcionario(funcionario)
    salario = float(input("Digite o salário do funcionário: "))
    funcionario.definir_salario(salario)
    
    
    print(f"\nFuncionário {funcionario.nome} cadastrado com sucesso.")
    while True:
        print("\nMenu de Recursos Humanos:")
        print("1. Listar Funcionários")
        print("2. Aumentar Salário de Funcionário")
        print("3. Listar Salários")
        print("4. Remover Funcionário")
        print("5. Buscar Funcionário")
        print("6. Adicionar Funcionario")
        print("0. Sair")

        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            recursos_humanos.listar_funcionarios()
        elif opcao == "2":
            nome = input("Digite o nome do funcionário: ")
            percentual = float(input("Digite o percentual de aumento: "))
            recursos_humanos.aumentar_salario_funcionario(nome, percentual)
        elif opcao == "3":
            recursos_humanos.listar_salarios()
        elif opcao == "4":
            nome = input("Digite o nome do funcionário a ser removido: ")
            recursos_humanos.remover_funcionario(nome)
        elif opcao == "5":
            nome = input("Digite o nome do funcionário a ser buscado: ")
            funcionario = recursos_humanos.buscar_funcionario(nome)
        elif opcao == "6":
            nome = input("Digite o nome do novo funcionário: ")
            idade = int(input("Digite a idade do novo funcionário: "))
            funcionario = Funcionario(nome, idade)
            salario = float(input("Digite o salário do novo funcionário: "))
            funcionario.definir_salario(salario)
            recursos_humanos.adicionar_funcionario(funcionario)
            print(f"\nFuncionário {funcionario.nome} adicionado com sucesso.")
            if funcionario:
                print(funcionario)
        elif opcao == "0":
            break
        else:
            print("Opção inválida, tente novamente.")
