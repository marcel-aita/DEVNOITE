
class Curso:
    def __init__(self, nome):
        self.nome = nome
        self.estudantes = []

    def cadastrar_estudante(self, estudante):
        self.estudantes.append(estudante)

    def listar_estudantes(self):
        for est in self.estudantes:
            print(f"Nome: {est.nome}, Idade: {est.idade}, Média: {est.calcular_media():.2f}")