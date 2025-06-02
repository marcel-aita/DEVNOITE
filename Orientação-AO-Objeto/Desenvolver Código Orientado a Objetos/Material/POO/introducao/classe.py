def classe_executar():
    print("\n--- Classes e Objetos---\n")

    print("Uma classe é um molde ou estrutura que define um tipo de objeto.")
    print("Você pode pensar nela como uma receita para criar coisas com características e comportamentos.")
    print("Um objeto é uma instância real criada a partir dessa classe.\n")

    print("Vamos criar uma classe chamada 'Pessoa':")

    class Pessoa:
        pass  

    print(">>> class Pessoa:")
    print(">>>     pass\n")
    print("O pass é uma instrução nula\n")
    print("Agora vamos criar um objeto chamado 'p' a partir dessa classe:")
    p = Pessoa()
    print(">>> p = Pessoa()\n")

    print("Esse objeto é do tipo:", type(p))
    print("Ou seja, 'p' é uma instância da classe Pessoa.")
    print("Ele ainda não faz nada, mas serve como base para atribuirmos dados e comportamentos depois.")
    input("Pressione Enter para voltar ao menu...")