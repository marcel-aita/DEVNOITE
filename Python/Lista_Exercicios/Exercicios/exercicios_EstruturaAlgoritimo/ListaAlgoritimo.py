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
        print("Número inválido. Tente novamente.")
    print(f"Você digitou o número positivo: {numero}")
    print("\n")

    contador = 10
    while contador >= 0:
        print(contador)
        contador -= 1
    print("Fogo!")
    print("\n")

    import random
    numero_secreto = random.randint(1, 100)
    tentativas = 0
    while True:
        palpite = int(input("Adivinhe o número entre 1 e 100: "))
        tentativas += 1
        if palpite < numero_secreto:
            print("O número é maior.")
        elif palpite > numero_secreto:
            print("O número é menor.")
        else:
            print(f"Parabéns! Você adivinhou o número em {tentativas} tentativas.")
            break
    print("\n")

    senha_correta = "Marcel_O_Monstro"
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

    soma = 0
    contador = 0
    while True:
        numero = float(input("Digite um número (0 para sair): "))
        if numero == 0:
            break
        soma += numero
        contador += 1
    if contador > 0:
        media = soma / contador
        print(f"A média dos números digitados é: {media}")
    else:
        print("Nenhum número foi digitado.")
    print("\n")



