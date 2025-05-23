# Exercício 2 
# Crie um pacote contendo dois módulos: um com uma classe que represente um cachorro 
# e outro com uma classe que represente um gato.
# Cada classe deve possuir dois atributos e um método específico que emite um som.

class Gato:
    def __init__(self, nome, som):
        self.nome = nome
        self.som = som

    def som_gato(self):
        print(f" o {self.nome} diz: {self.som}!")

def exec2():
    gato = Gato(input("Digite o nome do gato: "),input("Digite o som so gato: "))
    gato.som_gato()



if __name__ == "__main__":
    exec2()