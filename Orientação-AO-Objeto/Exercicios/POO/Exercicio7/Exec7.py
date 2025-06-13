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
        novo_salario = float(input(f"Digite o novo salário de {nome_ajuste}: "))# Permite ao usuário informar o novo salário do funcionário
        
        # Procura o funcionário pelo nome e ajusta o salário
        encontrado = False
        for func in departamento.funcionarios:
            if func.nome.lower() == nome_ajuste.lower():# Verifica se o nome do funcionário corresponde ao informado pelo usuário em minúsculas
                func.ajustar_salario(novo_salario)# Ajusta o salário do funcionário com o novo valor informado
                print(f"Salário de {func.nome} ajustado com sucesso.")# Informa que o salário do funcionário foi ajustado com sucesso
                encontrado = True# Marca que o funcionário foi encontrado
                break# Sai do loop após encontrar o funcionário

        # Se o funcionário não for encontrado, informa ao usuário
        if not encontrado:
            print("Funcionário não encontrado.")# Informa que o funcionário não foi encontrado na lista de funcionários
        
        # Pergunta se o usuário deseja ajustar o salário de outro funcionário
        resposta = input("\nDeseja ajustar o salário de outro funcionário? (s/n): ").lower()# em minúsculas

    # Exibe novamente os funcionários do departamento após os ajustes
    print(f"\nFuncionários do departamento {nome_departamento} após ajustes:")
    for func in departamento.funcionarios:# Itera sobre a lista de funcionários do departamento
        print(f"Nome: {func.nome}, Salário: R${func.salario:.2f}")# Exibe o nome e salário de cada funcionário após os ajustes
