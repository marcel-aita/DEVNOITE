class Pessoa:
        def __init__(self, nome, idade):
            self.nome = nome  
            self.idade = idade  

def atributo_executar():
    print("\n--- Atributos ---\n")

    print("Atributos são variáveis que pertencem a um objeto.")
    print("Eles armazenam informações específicas sobre cada instância da classe.\n")
   
    print("- __init__ é um método especial chamado automaticamente ao criar um objeto.")
    print("- Ele serve para inicializar os dados (atributos) do objeto.")
    print("- 'self' representa o próprio objeto sendo criado. Ele permite acessar os atributos e métodos da instância.\n")

    print(">>> class Pessoa:")
    print(">>>     def __init__(self, nome, idade):")
    print(">>>         self.nome = nome")
    print(">>>         self.idade = idade\n")

    print("Agora vamos criar dois objetos 'p1' e 'p2' com dados informados pelo usuário.")

    p1 = Pessoa(input("Digite o nome da primeira pessoa: "), int(input("Digite a idade da primeira pessoa: ")))
    p2 = Pessoa(input("Digite o nome da segunda pessoa: "), int(input("Digite a idade da segunda pessoa: ")))

    print("\n>>> p1 = Pessoa('nome1', idade1)")
    print(">>> p2 = Pessoa('nome2', idade2)\n")

    print("Acessando os atributos de cada objeto com 'p1.nome', 'p1.idade', 'p2.nome' e 'p2.idade':")
    print(f"Pessoa 1 - Nome: {p1.nome}, Idade: {p1.idade}")
    print(f"Pessoa 2 - Nome: {p2.nome}, Idade: {p2.idade}\n")

    print("Agora vamos alterar o nome do objeto 'p1' usando:")
    print(">>> p1.nome = novo_nome")

    novo_nome = input("Digite um novo nome para a primeira pessoa: ")
    p1.nome = novo_nome
    print(f"\nNome atualizado da pessoa 1: {p1.nome}")

    print("\nOu seja, os atributos são como as 'características' do objeto,")
    print("e podem ser acessados ou modificados com a notação: objeto.atributo")
    input("Pressione Enter para voltar ao menu...")