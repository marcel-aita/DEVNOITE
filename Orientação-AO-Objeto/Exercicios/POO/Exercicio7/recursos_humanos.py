# Exercício 7 
# Implemente duas classes que representem um funcionário e um departamento.
# Adicione atributos e métodos que permitam organizar os funcionários e modificar dados 
# salariais.

class RecursosHumanos:
    def __init__(self):
        self.funcionarios = []

    def adicionar_funcionario(self, funcionario):
        self.funcionarios.append(funcionario)

    def listar_funcionarios(self):
        for funcionario in self.funcionarios:
            print(funcionario)

    def calcular_media_salario(self):
        if not self.funcionarios:
            return 0.0
        total_salario = sum(funcionario.salario for funcionario in self.funcionarios)
        return total_salario / len(self.funcionarios)
    
    def aumentar_salario_funcionario(self, nome, percentual):
        for funcionario in self.funcionarios:
            if funcionario.nome == nome:
                funcionario.aumentar_salario(percentual)
                print(f"Salário de {nome} aumentado em {percentual}%")
                return
        print(f"Funcionário {nome} não encontrado.")
    
    def listar_salarios(self):
        for funcionario in self.funcionarios:
            print(f"{funcionario.nome}: {funcionario.salario:.2f}")
    
    def remover_funcionario(self, nome):
        for funcionario in self.funcionarios:
            if funcionario.nome == nome:
                self.funcionarios.remove(funcionario)
                print(f"Funcionário {nome} removido.")
                return
        print(f"Funcionário {nome} não encontrado.")
   
    def buscar_funcionario(self, nome):
        for funcionario in self.funcionarios:
            if funcionario.nome == nome:
                return funcionario
        print(f"Funcionário {nome} não encontrado.")
        return None
    