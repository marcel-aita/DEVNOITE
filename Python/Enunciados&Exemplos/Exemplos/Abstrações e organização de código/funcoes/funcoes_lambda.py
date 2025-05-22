def lambda_soma():
    print("\n--- Exemplo de Lambda para Soma ---")
    print("A função lambda é uma maneira compacta de criar funções simples.")
    print("Aqui temos uma lambda que recebe dois parâmetros, 'x' e 'y', e retorna sua soma.")
    soma_lambda = lambda x, y: x + y
    print(f"Exemplo: Soma de 10 + 5 = {soma_lambda(10, 5)}")
    print("Neste exemplo, a função lambda é definida como 'lambda x, y: x + y'.")
    print("Isso significa que ela vai somar os dois números fornecidos.")
    print("O código acima executa a soma de 10 e 5 e imprime o resultado.")
    print("As lambdas são úteis para operações rápidas e simples em uma linha de código.\n")
    input("\nPressione Enter para voltar ao menu...")

def lambda_quadrado():
    print("\n--- Exemplo de Lambda para Calcular o Quadrado de um Número ---")
    print("Esta função lambda recebe um número e retorna o quadrado desse número.")
    print("Aqui, usamos o operador '**' para elevar o número ao quadrado.")
    quadrado = lambda x: x ** 2
    print(f"Exemplo: O quadrado de 4 é {quadrado(4)}")
    print("Neste exemplo, a função lambda é definida como 'lambda x: x ** 2'.")
    print("Isso significa que ela pega o número 'x' e o eleva ao quadrado.")
    print("O código acima executa a operação 4² e imprime o resultado.\n")
    input("\nPressione Enter para voltar ao menu...")


def lambda_ordenacao():
    print("\n--- Exemplo de Lambda para Ordenação de Lista de Tuplas ---")
    print("Aqui temos uma lista de tuplas. Cada tupla contém dois elementos.")
    print("Usamos a função lambda para ordenar a lista com base no segundo elemento de cada tupla.")
    print("A função 'sorted()' é usada para ordenar, e a lambda é passada como o parâmetro 'key' para indicar como a ordenação deve ocorrer.")
    lista_tuplas = [(1, 3), (2, 1), (5, 0), (3, 2)]
    lista_ordenada = sorted(lista_tuplas, key=lambda item: item[1])
    print(f"Lista original: {lista_tuplas}")
    print(f"Lista ordenada pelo segundo elemento de cada tupla: {lista_ordenada}")
    print("A função 'lambda item: item[1]' acessa o segundo elemento de cada tupla.")
    print("Isso permite ordenar as tuplas com base nesse valor. No caso da lista acima, a ordenação ocorre pelo segundo número de cada tupla.")
    print("O código usa o 'sorted()' para ordenar a lista e a lambda para definir a chave de ordenação.\n")
    input("\nPressione Enter para voltar ao menu...")


def lambda_dobrar():
    print("\n--- Exemplo de Lambda para Dobrar os Números de uma Lista ---")
    print("Aqui temos uma lista de números, e queremos multiplicar cada número por 2 usando uma lambda.")
    print("A função 'map()' aplica a operação da lambda a cada item da lista e retorna um novo iterável.")
    print("Neste caso, estamos dobrando cada número da lista.")
    numeros = [1, 2, 3, 4, 5]
    dobrados = list(map(lambda x: x * 2, numeros))
    print(f"Números originais: {numeros}")
    print(f"Números dobrados: {dobrados}")
    print("Neste exemplo, a função lambda é definida como 'lambda x: x * 2'.")
    print("Isso significa que para cada número na lista, a lambda vai multiplicá-lo por 2.")
    print("A função 'map()' aplica a lambda a cada item da lista, e a função 'list()' converte o resultado de volta para uma lista.\n")
    input("\nPressione Enter para voltar ao menu...")