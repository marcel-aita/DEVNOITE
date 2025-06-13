from .funcionario import Funcionario
from .departamento import Departamento

def exec7():
    nome_departamento = input("Digite o nome do departamento: ")
    departamento = Departamento(nome_departamento)


    qtd = int(input("Quantos funcionários deseja adicionar? "))

    for i in range(qtd):
        nome_func = input(f"\nDigite o nome do funcionário {i+1}: ")#Adiciona o nome do funcionário a lista de funcionários
        salario_func = float(input(f"Digite o salário de {nome_func}: "))#Adiciona o salário do funcionário a um funcionario da lista de funcionários
        funcionario = Funcionario(nome_func, salario_func)# Cria um objeto Funcionario com o nome e salário informados
        departamento.adicionar_funcionario(funcionario)# Adiciona o funcionário ao departamento

    # Exibe os funcionários do departamento
    print(f"\nFuncionários do departamento {nome_departamento}:")
    for func in departamento.funcionarios:
        print(f"Nome: {func.nome}, Salário: R${func.salario:.2f}")# Exibe o nome e salário de cada funcionário


    resposta = input("\nDeseja ajustar o salário de algum funcionário? (s/n): ").lower()# Permite ao usuário decidir se deseja ajustar o salário de algum funcionário em minúsculas
    
    # Enquanto o usuário responder 's', continua perguntando pelo nome do funcionário e o novo salário
    while resposta == 's':
        nome_ajuste = input("Digite o nome do funcionário que terá o salário ajustado: ")# Permite ao usuário informar o nome do funcionário cujo salário será ajustado
        # Verifica se o o funcionario esta listado
        if not any(func.nome.lower() == nome_ajuste.lower() for func in departamento.funcionarios):
            print("Funcionário não encontrado.")# Informa que o funcionário não foi encontrado na lista de funcionários
            resposta = input("\nDeseja ajustar o salário de outro funcionário? (s/n): ").lower()# Pergunta se o usuário deseja tentar novamente
            if resposta != 's':# Se a resposta não for 's'
                print("Nenhum ajuste realizado.")# Informa que nenhum ajuste foi realizado e sai do loop
                print(f"\nFuncionários do departamento {nome_departamento}, Salário: R${func.salario: .2f}")# Exibe novamente os funcionários do departamento
            else:
                novo_salario = float(input(f"Digite o novo salário para {nome_ajuste}: "))
                # Ajusta o salário do funcionário encontrado
                for func in departamento.funcionarios:
                    if func.nome.lower() == nome_ajuste.lower():
                        func.ajustar_salario(novo_salario)
                        print(f"Salário de {func.nome} ajustado para R${func.salario:.2f}")
                        break# Sai do loop se o funcionário foi encontrado e o salário ajustado  
