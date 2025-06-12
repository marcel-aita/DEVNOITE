from .funcionario import Funcionario
from .recursos_humanos import RecursosHumanos

def exec7():
    recursos_humanos = RecursosHumanos()
while True:
    print("\n--- Menu de Recursos Humanos ---")
    print("1. Cadastrar Funcionários")
    print("2. Listar Funcionários")
    print("3. Aumentar Salário de Funcionário")
    print("4. Remover Funcionário")
    print("5. Buscar Funcionário")
    print("0. Sair")

    opcao = input("Escolha uma opção: ")
    
    if opcao == "1":
        nome_funcionario = input("Digite o nome do funcionário: ")
        idade_funcionario = int(input("Digite a idade do funcionário: "))
        funcionario = Funcionario(nome_funcionario, idade_funcionario)
        salario = (input("Digite o salário do funcionário: "))
        funcionario.definir_salario(salario)
        
        recursos_humanos = RecursosHumanos()
        recursos_humanos.adicionar_funcionario(funcionario)
        
        print(f"\nFuncionário {funcionario.nome} cadastrado com sucesso.")
        recursos_humanos.listar_funcionarios()        
    
    elif opcao == "2":
        recursos_humanos.listar_funcionarios()
        print("\nLista de Funcionários:")
        recursos_humanos = RecursosHumanos()
        recursos_humanos.listar_funcionarios()

    elif opcao == "3":
        nome = input("Digite o nome do funcionário: ")
        percentual = float(input("Digite o percentual de aumento: "))
        recursos_humanos.aumentar_salario_funcionario(nome, percentual)
        print(f"Salário de {nome} aumentado em {percentual}%")
        recursos_humanos = RecursosHumanos()
        recursos_humanos.aumentar_salario_funcionario(nome, percentual)
        print(f"Salário de {nome} aumentado em {percentual}%")

    elif opcao == "4":
        nome = input("Digite o nome do funcionário a ser removido: ")
        recursos_humanos.remover_funcionario(nome)
        print(f"Funcionário {nome} removido.")
        recursos_humanos = RecursosHumanos()
        recursos_humanos.remover_funcionario(nome)
        print(f"Funcionário {nome} removido.")

    elif opcao == "5":
        nome = input("Digite o nome do funcionário a ser buscado: ")
        funcionario = recursos_humanos.buscar_funcionario(nome)
        if funcionario:
            print(f"Funcionário encontrado: {funcionario}")
        else:
            print(f"Funcionário {nome} não encontrado.")
        break

    elif opcao == "0":
        print("Saindo do menu de Recursos Humanos...")
    else:
        print("Opção inválida. Tente novamente.")