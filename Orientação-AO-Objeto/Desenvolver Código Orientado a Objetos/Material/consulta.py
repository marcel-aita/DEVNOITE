from .funcionario import Funcionario
from .departamento import Departamento

def exercicio07():
    nome_departamento = input("Digite o nome do departamento: ")
    departamento = Departamento(nome_departamento)


    qtd = int(input("Quantos funcionários deseja adicionar? "))

    for i in range(qtd):
        nome_func = input(f"\nDigite o nome do funcionário {i+1}: ")
        salario_func = float(input(f"Digite o salário de {nome_func}: "))
        funcionario = Funcionario(nome_func, salario_func)
        departamento.adicionar_funcionario(funcionario)


    print(f"\nFuncionários do departamento {nome_departamento}:")
    for func in departamento.funcionarios:
        print(f"Nome: {func.nome}, Salário: R${func.salario:.2f}")


    resposta = input("\nDeseja ajustar o salário de algum funcionário? (s/n): ").lower()

    while resposta == 's':
        nome_ajuste = input("Digite o nome do funcionário que terá o salário ajustado: ")
        novo_salario = float(input(f"Digite o novo salário de {nome_ajuste}: "))
        
        encontrado = False
        for func in departamento.funcionarios:
            if func.nome.lower() == nome_ajuste.lower():
                func.ajustar_salario(novo_salario)
                print(f"Salário de {func.nome} ajustado com sucesso.")
                encontrado = True
                break

        if not encontrado:
            print("Funcionário não encontrado.")
        
        resposta = input("\nDeseja ajustar o salário de outro funcionário? (s/n): ").lower()


    print(f"\nFuncionários do departamento {nome_departamento} após ajustes:")
    for func in departamento.funcionarios:
        print(f"Nome: {func.nome}, Salário: R${func.salario:.2f}")