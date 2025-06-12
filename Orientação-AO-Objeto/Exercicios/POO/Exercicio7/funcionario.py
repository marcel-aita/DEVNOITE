# Exercício 7 
# Implemente duas classes que representem um funcionário e um departamento.
# Adicione atributos e métodos que permitam organizar os funcionários e modificar dados 
# salariais.

class Funcionario:
    def __init__(self, nome, idade, salario=0.0):        
        self.nome = nome
        self.idade = idade
        self.salario = salario

        def definir_salario(self, salario):
            self.salario.append(salario)

    def aumentar_salario(self, percentual):
        if percentual > 0:
            self.salario += self.salario * (percentual / 100)
        else:
            print("Percentual deve ser positivo.")
    def __str__(self):
        return f"Nome: {self.nome}, Idade: {self.idade}, Salário: {self.salario:.2f}"
    