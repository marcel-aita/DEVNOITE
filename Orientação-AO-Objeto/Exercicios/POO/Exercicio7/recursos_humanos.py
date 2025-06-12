# Exercício 7 
# Implemente duas classes que representem um funcionário e um departamento.
# Adicione atributos e métodos que permitam organizar os funcionários e modificar dados 
# salariais.

class RecursosHumanos:
    def __init__(self):
        self.funcionarios = []

    def adicionar_funcionario(self, funcionario):
        self.funcionarios.append(funcionario)

    def adicionar_salario(self, nome, salario):
        for funcionario in self.funcionarios:
            if funcionario.nome == nome:
                funcionario.definir_salario(salario)
                return
        print(f"Funcionário {nome} não encontrado.")

    def aumentar_salario(self, nome, percentual):
        for funcionario in self.funcionarios:
            if funcionario.nome == nome:
                funcionario.aumentar_salario(percentual)
                return
        print(f"Funcionário {nome} não encontrado.")

    def listar_funcionarios(self):
        if not self.funcionarios:
            print("Nenhum funcionário cadastrado.")
        else:
            for funcionario in self.funcionarios:
                print(funcionario)
    
    def buscar_funcionario(self, nome):
        for funcionario in self.funcionarios:
            if funcionario.nome == nome:
                return funcionario
        print(f"Funcionário {nome} não encontrado.")
        return None
    
        

