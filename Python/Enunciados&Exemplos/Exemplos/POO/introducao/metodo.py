class Pessoa:
        def __init__(self, nome):
            self.nome = nome  

        def apresentar(self):
            print(f"Olá! Meu nome é {self.nome}.")
            
def metodo_executar():
    print("\n--- Métodos ---\n")

    print("Métodos são funções definidas dentro de uma classe.")
    print("Eles representam comportamentos que os objetos daquela classe podem realizar.\n")

    print("Vamos criar uma classe 'Pessoa' com um método chamado 'apresentar'.")
    print("Esse método vai exibir uma mensagem com o nome da pessoa.")

    

    print("\n>>> class Pessoa:")
    print(">>>     def __init__(self, nome):")
    print(">>>         self.nome = nome")
    print(">>>")
    print(">>>     def apresentar(self):")
    print(">>>         print(f\"Olá! Meu nome é {self.nome}.\")\n")

    print("Agora vamos criar dois objetos 'pessoa1' e 'pessoa2' com nomes informados pelo usuário diretamente na criação:")

    pessoa1 = Pessoa(input("Digite o nome da primeira pessoa: "))
    print(">>> pessoa1 = Pessoa(input(...))")

    pessoa2 = Pessoa(input("Digite o nome da segunda pessoa: "))
    print(">>> pessoa2 = Pessoa(input(...))")

    print("\nChamando o método 'apresentar' para ambas as pessoas:")
    print(">>> pessoa1.apresentar()")
    pessoa1.apresentar()

    print(">>> pessoa2.apresentar()")
    pessoa2.apresentar()

    print("\nAgora vamos modificar o nome da pessoa1 e chamar o método novamente:")
    pessoa1.nome = input("Digite um novo nome para a primeira pessoa: ")

    print("\n>>> pessoa1.nome = novo_nome")
    print(">>> pessoa1.apresentar()")
    pessoa1.apresentar()

    print(">>> pessoa2.apresentar()  # permanece com o mesmo nome")
    pessoa2.apresentar()

