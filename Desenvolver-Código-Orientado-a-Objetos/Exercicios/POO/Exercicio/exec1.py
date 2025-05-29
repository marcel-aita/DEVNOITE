# Exercício 1 
# Crie um módulo com uma classe que represente uma pessoa.
# Implemente um método que mostre uma apresentação pessoal com nome e idade.

class Pessoa:
    def __init__(self,nome,idade):
        self.nome=nome
        self.idade=idade

    def apresentacao(self):
        print(f"Olá, meu nome é {self.nome} e tenho {self.idade} anos.")





def exec1():
    pessoa = Pessoa(input("Digite seu nome: "), int(input("Digite sua idade: ")))
    pessoa.apresentacao()