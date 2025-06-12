from .funcionario import Funcionario
from .recursos_humanos import RecursosHumanos

def exec7():
    recursos_humanos = RecursosHumanos()
    while True:
        print("\n--- Menu de Recursos Humanos ---")
        print("1. Cadastrar Funcionários")
        print("2. Listar Funcionários")
        print("3. Aumentar Salário de Funcionário")
        print("4. Buscar Funcionário")
        print("0. Sair")

        opcao = input("Escolha uma opção: ")
        
        if opcao == "1":
            nome = input("Digite o nome do funcionário: ")
            idade = input("Digite a idade do funcionário: ")
            salario = float(input("Digite o salário do funcionário: "))
            funcionario = Funcionario(nome, idade, salario)
            recursos_humanos.adicionar_funcionario(funcionario)
            print(f"Funcionário ' {nome} ' \n '{idade} ' \n ' {salario:.2f} ' cadastrado com sucesso!")
        
        elif opcao == "2":
            print("\nFuncionários cadastrados:")
            recursos_humanos.listar_funcionarios()
        
        elif opcao == "3":
            nome = input("Digite o nome do funcionário para aumentar o salário: ")
            percentual = float(input("Digite o percentual de aumento: "))
            recursos_humanos.aumentar_salario(nome, percentual)

        elif opcao == "4":
            nome = input("Digite o nome do funcionário para buscar: ")
            funcionario = recursos_humanos.buscar_funcionario(nome)
            if funcionario:
                print(funcionario)

        elif opcao == "0":
            print("Saindo do menu de Recursos Humanos...")