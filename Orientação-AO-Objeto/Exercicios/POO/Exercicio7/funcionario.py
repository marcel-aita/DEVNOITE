# Exercício 7 
# Implemente duas classes que representem um funcionário e um departamento.
# Adicione atributos e métodos que permitam organizar os funcionários e modificar dados 
# salariais.

class Funcionario:
    def __init__(self, nome, salario):        
        self.nome = nome
        self.salario = salario

    def ajustar_salario(self, novo_salario):
        self.salario = novo_salario
    