# Exercício 7 
# Implemente duas classes que representem um funcionário e um departamento.
# Adicione atributos e métodos que permitam organizar os funcionários e modificar dados 
# salariais.

class Departamento:
    def __init__(self, nome):
        self.nome = nome
        self.funcionarios = []

    def adicionar_funcionario(self, funcionario):
        self.funcionarios.append(funcionario)
        

