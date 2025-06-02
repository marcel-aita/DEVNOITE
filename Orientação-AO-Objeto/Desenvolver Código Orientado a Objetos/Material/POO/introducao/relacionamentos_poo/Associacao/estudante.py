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
        return 0.0
