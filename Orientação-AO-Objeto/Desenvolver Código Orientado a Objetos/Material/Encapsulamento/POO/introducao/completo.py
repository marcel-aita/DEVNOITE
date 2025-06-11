

class Pessoa:
    def __init__(self, nome, idade, email):
        print("O método __init__ foi chamado.")
        print("Atributos sendo atribuídos usando self (self.nome, self.idade, self.email)...\n")
        self.nome = nome
        self.idade = idade
        self.email = email

    def verificar_maioridade(self):
        print("\nMétodo verificar_maioridade executado.")
        if self.idade >= 18:
            print(f"{self.nome} é maior de idade.")
        elif 0 <= self.idade < 18:
            print(f"{self.nome} é menor de idade.")
        else:
            print("Idade inválida.")

    def listar_hobbies(self):
        print("\nMétodo listar_hobbies executado.")
        print("Digite alguns hobbies (separados por vírgula):")
        entrada = input().strip()
        hobbies = [h.strip() for h in entrada.split(",") if h.strip()]
        print(f"\n{self.nome} tem os seguintes hobbies (lista):")
        for hobby in hobbies:
            print(f"- {hobby}")

    def mostrar_tupla(self):
        print("\nMétodo mostrar_tupla executado.")
        info = (self.nome, self.idade, self.email)
        print("Dados como tupla (imutável):")
        print(info)

    def mostrar_dicionario(self):
        print("\nMétodo mostrar_dicionario executado.")
        dados = {"Nome": self.nome, "Idade": self.idade, "Email": self.email}
        print("Dados como dicionário (chave-valor):")
        for chave, valor in dados.items():
            print(f"{chave}: {valor}")

    def interesses_unicos(self):
        print("\nMétodo interesses_unicos executado.")
        entrada = input("Digite interesses separados por vírgula (pode repetir): ")
        lista_interesses = [i.strip().lower() for i in entrada.split(",")]
        interesses = set(lista_interesses)#set garante valores unicos
        print("\nConjunto de interesses únicos (sem repetição):")
        for item in interesses:
            print(f"- {item}")


def completo_executar():
    print("Agora vamos capturar os dados do usuário com tratamento de erros (try/except).")

    try:
        nome = input("Digite seu nome: ")
        idade = int(input("Digite sua idade: "))
        email = input("Digite seu email: ")

        print("\nCriando o objeto 'pessoa' da classe Pessoa...")
        pessoa = Pessoa(nome, idade, email)

        print("\nObjeto criado com sucesso!\n")

        pessoa.verificar_maioridade()
        pessoa.listar_hobbies()
        pessoa.mostrar_tupla()
        pessoa.mostrar_dicionario()
        pessoa.interesses_unicos()
        input("Pressione Enter para voltar ao menu...")

    except ValueError:
        print("\nErro: idade deve ser um número inteiro.")
    except Exception as e:
        print(f"\nOcorreu um erro inesperado: {e}")
