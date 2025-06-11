# Exercício 5 
# 
# Implemente um pacote com duas classes: 
# uma representando um estudante com informações básicas 
# e uma lista de notas, e outra representando um curso.
# Inclua métodos para cálculo de média e para cadastrar estudantes no curso.

class Estudante:
    def __init__(self, nome, idade):
        self.nome = nome
        self.idade = idade
        self.notas = []

    def adicionar_nota(self, nota):
        self.notas.append(nota)

    def calcular_media(self):
        if self.notas:
            return sum(self.notas) / len(self.notas)
        return