##Tratamento de Exceções. 

#Escreva um programa que solicite ao usuário dois números e tente realizar a divisão do 
#primeiro pelo segundo. Utilize try-except para lidar com a exceção de divisão por zero e 
#imprimir uma mensagem de erro apropriada.

#Crie um programa que solicite ao usuário que digite um número inteiro. Use try-except
#para lidar coma exceção ValueError caso o usuário digite algo que não seja um número 
#inteiro, imprimindo uma mensagem de erro.

#Modifique o exercício anterior para que, caso ocorra um ValueError, o programa peça 
#novamente ao usuário para digitar um número inteiro até que uma entrada válida seja fornecida.

def exe1():
    print("\n--- Tratamento de Exceções ---")
    while True:
        try:
            num1 = float(input("Digite o primeiro número: "))
            num2 = float(input("Digite o segundo número: "))
            resultado = num1 / num2
        except ZeroDivisionError:
            print("Erro: Divisão por zero não é permitida. Tente novamente.")
        except ValueError:
            print("Erro: Entrada inválida. Por favor, digite números válidos.")
        else:
            print(f"O resultado da divisão é: {resultado}")
            break
    while True:
        try:
            num = int(input("Digite um número inteiro: "))
        except ValueError:
            print("Erro: Entrada inválida. Por favor, digite um número inteiro.")
        else:
            print(f"Você digitou o número inteiro: {num}")
            break
        if ValueError:
            print("Erro: Entrada inválida. Por favor, digite um número inteiro.")

#Estruturas de Repetição for

#Imprima todos os números pares de 0 a 20 utilizando um loop for e a função range().

#Dada a lista de nomes ["Carlos", "Ana", "Beto", "Maria"], imprima "Olá, [nome]!" para
#cada nome na lista.
 
#Calcule a soma de todos os números em uma lista dada: [10, 20, 30, 40, 50]. Utilize um loop for.

#Imprima as letras da palavra "PYTHON" uma por linha utilizando um loop for.

#Utilize um loop for com a cláusula break para encontrar o primeiro número divisível por 7 em uma lista de números: [5, 14, 21, 30, 35]. Ao encontrar, imprima o número e saia do loop.

#Utilize um loop for com a cláusula continue para imprimir todos os números ímpares de 1 a 10.

def exe2():
    print("\n--- Estruturas de Repetição for ---")
    print("Números pares de 0 a 20:")
    for i in range(0, 21, 2):
        print(i, end=" ")
    print("\n")
    
    nomes = ["Carlos", "Ana", "Beto", "Maria"]
    for nome in nomes:
        print(f"Olá, {nome}!")
    print("\n")
    
    numeros = [10, 20, 30, 40, 50]
    soma = 0
    for numero in numeros:
        soma += numero
    print(f"A soma dos números na lista é: {soma}")
    print("\n")
    
    palavra = "PYTHON"
    for letra in palavra:
        print(letra)
    print("\n")

    numeros = [5, 14, 21, 30, 35]
    for numero in numeros:
        if numero % 7 == 0:
            print(f"O primeiro número divisível por 7 é: {numero}")
            break
    print("\n")

    for i in range(1, 11):
        if i % 2 == 0:
            continue
        print(i, end=" ")
    print("\n")

#Estruturas de Repetição while

#Escreva um programa que peça ao usuário para digitar um número positivo. Enquanto o número digitado não for positivo, continue pedindo a entrada.

#Simule um contador regressivo de 10 até 0 utilizando um loop while. Imprima cada número e, ao chegar em 0, imprima "Fogo!".

#Crie um jogo simples de adivinhação. Gere um número aleatório entre 1 e 100. Peça ao usuário para adivinhar o número. Enquanto a adivinhação estiver incorreta, informe se o número a ser adivinhado é maior ou menor. Use um loop while.

#Utilize um loop while com a cláusula break para permitir que o usuário digite senhas até acertar a senha correta (defina uma senha correta no seu código).
 
#Utilize um loop while coma cláusula continue para imprimir apenas os números pares digitados pelo usuário (o loop deve continuar até que o usuário digite um número negativo para sair).
 
#Escreva um programa que calcule a média de números digitados pelo usuário. O programa deve continuar pedindo números até que o usuário digite 0. Utilize um loop while.

def exe3():
    print("\n--- Estruturas de Repetição while ---")
    while True:
        numero = int(input("Digite um número positivo: "))
        if numero > 0:
            break
        else:
            print("Número inválido. Tente novamente.")
    print("\n")
    contador = 10
    while contador >= 0:
        print(contador)
        contador -= 1
    print("Fogo!")
    print("\n")
    import random
    numero_secreto = random.randint(1, 100)
    while True:
        palpite = int(input("Adivinhe o número entre 1 e 100: "))
        if palpite < numero_secreto:
            print("O número é maior.")
        elif palpite > numero_secreto:
            print("O número é menor.")
        else:
            print("Parabéns! Você adivinhou o número.")
            break
    print("\n")
    senha_correta = "senhaMarcel1nho"
    while True:
        senha = input("Digite a senha: ")
        if senha == senha_correta:
            print("Senha correta!")
            break
        else:
            print("Senha incorreta. Tente novamente.")
    print("\n")
    while True:
        numero = int(input("Digite um número (negativo para sair): "))
        if numero < 0:
            break
        if numero % 2 == 0:
            print(f"Número par: {numero}")
    print("\n")

#Listas

#Crie uma lista de suas 5 comidas favoritas.

#Imprima o primeiro item da lista.
# 
#Imprima o último item da lista.
# 
#Adicione mais uma comida ao final da lista usando append().
# 
#Insira uma comida no início da lista usando insert().
# 
#Remova uma comida específica da lista usando remove().
# 
#Remova a última comida da lista usando pop().
# 
#Imprima o tamanho atual da lista usando len().
#
#Verifique se uma determinada comida está na sua lista usando o operador in.
# 
#Crie uma segunda lista de 3 outras comidas favoritas e combine as duas listas usando o operador +.
# 
#Ordene a lista combinada alfabeticamente usando sort().
# 
#Crie uma lista de números e encontre o maior e o menor número da lista sem usar as funções max() e min() diretamente (utilize um loop).
# 
#Escreva um programa que receba uma frase do usuário e crie uma lista com cada palavra da frase.
# 
#Crie duas listas de números com o mesmo tamanho. Crie uma terceira lista que contenha a soma dos elementos correspondentes das duas primeiras listas.Remova todos os elementos duplicados de uma lista.

def exe4():
        print("\n--- Listas ---")
        comidas_favoritas = ["Pizza", "Sushi", "Churrasco", "Lasanha", "Sorvete"]
        print(f"Primeiro item da lista: {comidas_favoritas[0]}")
        print(f"Último item da lista: {comidas_favoritas[-1]}")
        comidas_favoritas.append("Hamburguer")
        print(f"Lista após adicionar uma comida: {comidas_favoritas}")
        comidas_favoritas.insert(0, "Salada")
        print(f"Lista após inserir uma comida no início: {comidas_favoritas}")
        comidas_favoritas.remove("Sushi")
        print(f"Lista após remover uma comida específica: {comidas_favoritas}")
        comidas_favoritas.pop()
        print(f"Lista após remover a última comida: {comidas_favoritas}")
        print(f"Tamanho atual da lista: {len(comidas_favoritas)}")
        print(f"Está 'Pizza' na lista? {'Pizza' in comidas_favoritas}")
        outras_comidas = ["Frango", "Batata frita", "Salada"]
        lista_combinada = comidas_favoritas + outras_comidas
        print(f"Lista combinada: {lista_combinada}")
        lista_combinada.sort()
        print(f"Lista combinada ordenada: {lista_combinada}")
        numeros = [5, 3, 8, 1, 4]
        maior = numeros[0]
        menor = numeros[0]
        for numero in numeros:
            if numero > maior:
                maior = numero
            if numero < menor:
                menor = numero
        print(f"Maior número da lista: {maior}")
        print(f"Menor número da lista: {menor}")
        frase = input("Digite uma frase: ")
        lista_palavras = frase.split()
        print(f"Lista de palavras: {lista_palavras}")
        numeros1 = [1, 2, 3]
        numeros2 = [4, 5, 6]
        soma_numeros = [a + b for a, b in zip(numeros1, numeros2)]
        print(f"Soma dos elementos correspondentes: {soma_numeros}")
        lista_combinada = list(set(lista_combinada))
        print(f"Lista sem duplicatas: {lista_combinada}")
        print("\n")


#Tuplas

#Crie uma tupla com os nomes dos dias da semana em português.

#Imprima o terceiro dia da semana.

#Imprima o número de elementos na tupla usando len().

#Verifique se a string "Sábado" está na tupla.

#Tente adicionar um novo dia à  tupla.

#Crie uma tupla com números. Tente modificar o primeiro elemento da tupla.

#Converta a tupla dos dias da semana em uma lista e adicione o dia "Fim de Semana" ao final da lista. Converta a lista de volta para uma tupla.

#Converta a tupla dos dias da  semana em uma lista e adicione o dia "Fim de Semana" ao final da lista. Converta a lista de volta para uma tupla.

#Desempacote a tupla (10, 20, 30) em três variáveis separadas: a, b e c. Imprima os valores das variáveis.

def exe5():
    print("\n--- Tuplas ---")
    dias_semana = ("Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado")
    print(f"Terceiro dia da semana: {dias_semana[2]}")
    print(f"Número de elementos na tupla: {len(dias_semana)}")
    print(f"Está 'Sábado' na tupla? {'Sábado' in dias_semana}")
    
    # Tentar adicionar um novo dia à tupla (isso não é possível, pois tuplas são imutáveis)
    try:
        dias_semana[0] = "Novo Dia"
    except TypeError as e:
        print(f"Erro ao tentar adicionar um novo dia à tupla: {e}")

    # Tentar modificar o primeiro elemento da tupla (isso não é possível, pois tuplas são imutáveis)
    numeros = (1, 2, 3)
    try:
        numeros[0] = 10
    except TypeError as e:
        print(f"Erro ao tentar modificar o primeiro elemento da tupla: {e}")

    # Converter a tupla dos dias da semana em uma lista e adicionar o dia "Fim de Semana"
    lista_dias = list(dias_semana)
    lista_dias.append("Fim de Semana")
    dias_semana = tuple(lista_dias)
    print(f"Tupla após adicionar 'Fim de Semana': {dias_semana}")

    # Desempacotar a tupla (10, 20, 30) em três variáveis separadas
    a, b, c = (10, 20, 30)
    print(f"Valores desempacotados: a={a}, b={b}, c={c}")
    print("\n")

#Conjuntos

#Crie dois conjuntos de nÚmeros? conjunto_a={1, 2, 3, 4, 5} e conjunto_b={4, 5, 6, 7, 8}].

#Encontre a união dos dois conjuntos usando union().

#Encontre a interseção dos dois conjuntos usando intersection().

#Encontre a diferença entre conjunto_a e conjunto_b usando difference().

#Encontre a diferença simétrica entre os dois conjuntos usando symmetric_difference().

#Crie um conjunto de letras. Adicione uma nova letra usando add(). Tente adicionar uma letra que já existe.

#Remova um elemento específico de um conjunto usando remove(). Tente remover um elemento que não existe. Use discard() para remover um elemento e observe a diferença.

#Crie uma lista com elementos duplicados e converta-a em um conjunto para remover as duplicatas. Converta o conjunto de volta para uma lista.

#Verifique se um elemento é um subconjunto de outro conjunto usando issubset().

#Verifique se um conjunto é um superconjunto de outro usando issuperset().

def exe6():
    print("\n--- Conjuntos ---")
    conjunto_a = {1, 2, 3, 4, 5}
    conjunto_b = {4, 5, 6, 7, 8}
    
    uniao = conjunto_a.union(conjunto_b)
    print(f"União: {uniao}")
    
    intersecao = conjunto_a.intersection(conjunto_b)
    print(f"Interseção: {intersecao}")
    
    diferenca = conjunto_a.difference(conjunto_b)
    print(f"Diferença (conjunto_a - conjunto_b): {diferenca}")
    
    diferenca_simetrica = conjunto_a.symmetric_difference(conjunto_b)
    print(f"Diferença simétrica: {diferenca_simetrica}")
    
    letras = {'a', 'b', 'c'}
    letras.add('d')
    print(f"Conjunto após adicionar 'd': {letras}")
    
    try:
        letras.remove('e')  # Tentando remover um elemento que não existe
    except KeyError as e:
        print(f"Erro ao tentar remover 'e': {e}")
    
    letras.discard('c')  # Remove 'c' se existir, não gera erro se não existir
    print(f"Conjunto após remover 'c': {letras}")
    
    lista_com_dos = [1, 2, 2, 3, 4, 4]
    conjunto_sem_duplicatas = set(lista_com_dos)
    lista_sem_duplicatas = list(conjunto_sem_duplicatas)
    print(f"Lista sem duplicatas: {lista_sem_duplicatas}")
    
    subconjunto = {1, 2}
    superconjunto = {1, 2, 3, 4}
    
    print(f"É subconjunto? {subconjunto.issubset(superconjunto)}")
    print(f"É superconjunto? {superconjunto.issuperset(subconjunto)}")
    print("\n")







