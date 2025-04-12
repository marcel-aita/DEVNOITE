import datetime
import os
import random


# O tipo é inferido dinamicamente.
letra = ''  # caracter letra
salariop = 0.0  # real salario
idadep = 0  # inteiro idade
fez = False  # logico fez
texto = ""  # cadeia texto
# Tipos primitivos e suas anotações:

# Tipo de dado: str (string)
letra: str = ''  # caracter letra
texto: str = ""  # cadeia de texto

# Tipo de dado: int (inteiro)
idadep: int = 0  # inteiro idade
numero_inteiro: int = 10  # outro exemplo de inteiro

# Tipo de dado: float (número real)
salariop: float = 0.0  # real salario
preco_produto: float = 99.99  # outro exemplo de real

# Tipo de dado: bool (booleano, lógico)
fez: bool = False  # logico fez
ativo: bool = True  # outro exemplo de lógico

# Tipo de dado: list (lista)
numeros: list[int] = [1, 2, 3]  # lista de inteiros
nomes: list[str] = ['Ana', 'João', 'Maria']  # lista de strings

# Tipo de dado: tuple (tupla)
pessoa: tuple[str, int, bool] = ('Ana', 30, True)  # tupla com nome, idade e status

# Tipo de dado: set (conjunto)
conjunto_numeros: set[int] = {1, 2, 3}  # conjunto de inteiros
conjunto_strings: set[str] = {'a', 'b', 'c'}  # conjunto de strings

# Tipo de dado: dict (dicionário)
pessoa_dict: dict[str, int] = {'idade': 30, 'altura': 1.75}  # dicionário com chave string e valor inteiro

# Tipo de dado: NoneType (valor nulo)
valor_nulo: None = None

def exibir_condicionais_aninhadas():
    print("\n--- Condicionais Aninhadas ---")
    try:
        idade = int(input("Digite sua idade: "))
        if idade < 0:
            print("Idade inválida: não pode ser negativa.")
        elif idade < 18:
            print("Você é menor de idade.")
        else:
            tem_carteira = input("Você tem carteira de motorista? (sim/não): ").lower()
            if tem_carteira == 'sim':
                print("Você é maior de idade e tem carteira de motorista.")
            elif tem_carteira == 'não':
                print("Você é maior de idade, mas não tem carteira de motorista.")
            else:
                print("Resposta inválida para a pergunta da carteira.")
    except ValueError:
        print("Você digitou algo que não é um número inteiro válido para a idade.")
    input("\nPressione Enter para voltar ao menu...")


def exibir_try_except():
    print("\n--- Tratamento de Exceções (Try-Except) ---")
    try:
        numero_str = input("Digite um número inteiro: ")
        numero = int(numero_str)
        resultado = 10 / numero
        print(f"10 dividido por {numero} é: {resultado}")
    except ValueError:
        print("Erro: Você não digitou um número inteiro válido.")
    except ZeroDivisionError:
        print("Erro: Não é possível dividir por zero.")
    except Exception as e:
        print(f"Ocorreu um erro inesperado: {e}")
    input("\nPressione Enter para voltar ao menu...")


def exibir_estrutura_for():
    print("\n--- Estrutura de Repetição (For) ---")

    # Iterando sobre uma lista de nomes 
    print("\n Iterando sobre uma lista de nomes")
    nomes = ["Alice", "Bob", "Charlie"]
    for nome in nomes:
        print(f"Olá, {nome}!")

print("\nIterando sobre uma lista de nomes inseridos pelo usuário")
nomes = []
quantidade = int(input("Quantos nomes você quer inserir? "))

for i in range(quantidade):
    nome = input(f"Digite o nome {i + 1}: ")
    nomes.append(nome)


for nome in nomes:
    print(f"Olá, {nome}!")

print("\nIterando sobre uma lista de números inseridos pelo usuário")
numeros = []
quantidade = int(input("Quantos nomes você quer inserir? "))

for i in range(quantidade):
    numero = int(input(f"Digite o número {i + 1}: "))
    numeros.append(numero)
    
print("\nIterando sobre 5 posições definidas pelo usuário")
numeros = []
for i in range(5):
    numero = int(input(f"Digite o número para a posição {i + 1}: "))
    numeros.append(numero)
for i in range(len(numeros)):
    print(f"O número na posição {i + 1} é: {numeros[i]}")

for numero in numeros:
    print(f"o número é, {numero}!")

    #Iterando sobre um intervalo de números
    print("\n Iterando sobre um intervalo de números")
    for i in range(5):
        print(f"O número é: {i}")



print("\nIterando sobre uma lista de números inseridos pelo usuário")
numeros = []
quantidade = int(input("Quantos números você quer inserir? "))  


for i in range(quantidade):
    numero = int(input(f"Digite o número {i + 1}: "))
    numeros.append(numero)

print("\nIterando sobre os números inseridos pelo usuário")
for numero in numeros:
    print(f"O número é: {numero}")



    #Iterando sobre uma string
    print("\n Iterando sobre uma string")
    texto = "Python"
    for letra in texto:
        print(letra)

    # Iterando sobre uma tupla
    print("\n Iterando sobre uma tupla")
    cores = ("vermelho", "verde", "azul")
    for cor in cores:
        print(f"A cor é: {cor}")

    # Usando 'break' para sair do loop
    print("\nUsando 'break' para sair do loop")
    numeros = [1, 2, 3, 4, 5]
    for num in numeros:
        print(f"Número: {num}")
        if num == 3:
            print("Encontrou o número 3, saindo do loop.")
            break

    #Usando 'continue' para pular iterações
    print("\nUsando 'continue' para pular iterações")
    for i in range(5):
        if i == 2:
            print("Pulando a iteração onde i é 2.")
            continue
        print(f"O valor de i é: {i}")

    #Usando a cláusula 'else' com 'for'
    print("\nUsando a cláusula 'else' com 'for'")
    for i in range(3):
        print(f"Iteração: {i}")
    else:
        print("Loop 'for' concluído sem interrupção.")

    print("\nCláusula 'else' não executada devido ao 'break'")
    for i in range(5):
        print(f"Número: {i}")
        if i == 3:
            print("Saindo do loop com 'break'.")
            break
    else:
        print("Este 'else' não será executado.")

    input("\nPressione Enter para voltar ao menu...")


def exibir_estrutura_while():
    print("\n--- Estrutura de Repetição (While) ---")

    # Contagem progressiva
    print("\nContagem progressiva")
    contador = 0
    while contador < 5:
        print(f"O contador está em: {contador}")
        contador += 1
    print("Contagem finalizada.")

    # Condição de parada definida pelo usuário
    print("\nCondição de parada definida pelo usuário")
    resposta = 'sim'
    while resposta.lower() == 'sim':
        print("Continuando o loop...")
        resposta = input("Deseja continuar? (sim/não): ")
    print("Loop finalizado pelo usuário.")

    # Usando 'break' para sair do loop
    print("\nUsando 'break' para sair do loop")
    numero = 0
    while True:  # Loop infinito até que a condição de 'break' seja atingida
        print(f"Número atual: {numero}")
        numero += 1
        if numero > 3:
            print("Condição de saída atingida, saindo do loop.")
            break
    print("Loop com 'break' finalizado.")

    # Usando 'continue' para pular iterações
    print("\nUsando 'continue' para pular iterações")
    i = 0
    while i < 5:
        i += 1
        if i == 3:
            print("Pulando a iteração onde i é 3.")
            continue  # Volta para o início do loop, sem executar o print abaixo
        print(f"O valor de i é: {i}")
    print("Loop com 'continue' finalizado.")

    #Usando a cláusula 'else' com 'while'
    print("\nExemplo 5: Usando a cláusula 'else' com 'while'")
    tentativas = 0
    max_tentativas = 3
    senha_correta = "senha123"
    while tentativas < max_tentativas:
        senha = input("Digite a senha: ")
        if senha == senha_correta:
            print("Senha correta! Acesso concedido.")
            break  # Se a senha estiver correta, saímos do loop
        else:
            tentativas += 1
            print(f"Senha incorreta. Você tem mais {max_tentativas - tentativas} tentativas.")
    else:  # Este 'else' é executado se o loop terminar normalmente (sem 'break')
        print("Número máximo de tentativas excedido. Acesso negado.")

    input("\nPressione Enter para voltar ao menu...")

def exibir_listas():
    print("\n--- Listas ---")
    print("Listas são coleções ordenadas e mutáveis de itens. Isso significa que:")
    print("- Os itens dentro de uma lista possuem uma ordem específica.")
    print("- Você pode adicionar, remover ou modificar itens em uma lista depois de sua criação.")
    print("- Listas são definidas usando colchetes `[]`.")
    frutas = ["maçã", "banana", "laranja"]
    print(f"Lista de frutas: {frutas}")

    # Função embutida: append() - Adiciona um elemento ao final da lista
    print("\nFunção embutida: append()")
    print("Utilidade: Adiciona um item ao final da lista.")
    frutas.append("manga")
    print(f"Lista após append('manga'): {frutas}")

    # Função embutida: insert() - Insere um elemento em um índice específico
    print("\nFunção embutida: insert()")
    print("Utilidade: Insere um item em um índice fornecido.")
    frutas.insert(1, "morango")
    print(f"Lista após insert(1, 'morango'): {frutas}")

    # Função embutida: remove() - Remove a primeira ocorrência de um valor
    print("\nFunção embutida: remove()")
    print("Utilidade: Remove a primeira ocorrência do valor especificado.")
    if "banana" in frutas:
        frutas.remove("banana")
        print(f"Lista após remove('banana'): {frutas}")
    else:
        print("Banana não está na lista.")

    # Função embutida: pop() - Remove e retorna o elemento em um dado índice (o último por padrão)
    print("\nFunção embutida: pop()")
    print("Utilidade: Remove e retorna o item no índice especificado (ou o último se nenhum índice for fornecido).")
    ultima_fruta = frutas.pop()
    print(f"Última fruta removida com pop(): {ultima_fruta}, lista agora: {frutas}")

    # Função embutida: len() - Retorna o número de itens na lista
    print("\nFunção embutida: len()")
    print("Utilidade: Retorna o número de itens na lista.")
    tamanho_lista = len(frutas)
    print(f"O tamanho da lista é: {tamanho_lista}")

    # Função embutida: index() - Retorna o índice da primeira ocorrência de um valor
    print("\nFunção embutida: index()")
    print("Utilidade: Retorna o índice da primeira ocorrência do valor especificado.")
    try:
        indice_maca = frutas.index("maçã")
        print(f"O índice de 'maçã' é: {indice_maca}")
    except ValueError:
        print("'maçã' não está na lista.")

    # Função embutida: count() - Retorna o número de ocorrências de um valor
    print("\nFunção embutida: count()")
    print("Utilidade: Retorna o número de vezes que um valor aparece na lista.")
    frutas_com_repeticao = ["maçã", "banana", "maçã", "laranja"]
    ocorrencias_maca = frutas_com_repeticao.count("maçã")
    print(f"A fruta 'maçã' aparece {ocorrencias_maca} vezes na lista.")

    # Função embutida: sort() - Ordena a lista in-place (modifica a lista original)
    print("\nFunção embutida: sort()")
    print("Utilidade: Ordena os itens da lista no local (a lista original é modificada).")
    numeros_desordenados = [3, 1, 4, 1, 5, 9, 2, 6]
    numeros_desordenados.sort()
    print(f"Lista de números ordenada: {numeros_desordenados}")

    # Função embutida: sorted() - Retorna uma nova lista ordenada (não modifica a original)
    print("\nFunção embutida: sorted()")
    print("Utilidade: Retorna uma nova lista contendo todos os itens da lista original em ordem.")
    nomes_desordenados = ["Carlos", "Ana", "Beto"]
    nomes_ordenados = sorted(nomes_desordenados)
    print(f"Lista de nomes original: {nomes_desordenados}")
    print(f"Lista de nomes ordenada (nova lista): {nomes_ordenados}")

    # Função embutida: clear() - Remove todos os itens da lista
    print("\nFunção embutida: clear()")
    print("Utilidade: Remove todos os itens da lista, deixando-a vazia.")
    lista_para_limpar = [1, 2, 3]
    lista_para_limpar.clear()
    print(f"Lista após clear(): {lista_para_limpar}")

    input("\nPressione Enter para voltar ao menu...")


def exibir_tuplas():
    print("\n--- Tuplas ---")
    print("Tuplas são coleções ordenadas e imutáveis de itens. Isso significa que:")
    print("- Assim como listas, os itens em uma tupla têm uma ordem específica.")
    print("- Diferente das listas, você NÃO pode modificar os itens de uma tupla depois de sua criação (não é possível adicionar, remover ou alterar itens).")
    print("- Tuplas são definidas usando parênteses `()`.")
    cores = ("vermelho", "verde", "azul")
    print(f"Tupla de cores: {cores}")

    # Função embutida: len() - Retorna o número de itens na tupla
    print("\nFunção embutida: len()")
    print("Utilidade: Retorna o número de itens na tupla.")
    tamanho_tupla = len(cores)
    print(f"O tamanho da tupla é: {tamanho_tupla}")

    # Função embutida: index() - Retorna o índice da primeira ocorrência de um valor
    print("\nFunção embutida: index()")
    print("Utilidade: Retorna o índice da primeira ocorrência do valor especificado.")
    try:
        indice_verde = cores.index("verde")
        print(f"O índice de 'verde' é: {indice_verde}")
    except ValueError:
        print("'verde' não está na tupla.")

    # Função embutida: count() - Retorna o número de ocorrências de um valor
    print("\nFunção embutida: count()")
    print("Utilidade: Retorna o número de vezes que um valor aparece na tupla.")
    cores_com_repeticao = ("vermelho", "verde", "azul", "vermelho")
    ocorrencias_vermelho = cores_com_repeticao.count("vermelho")
    print(f"A cor 'vermelho' aparece {ocorrencias_vermelho} vezes na tupla.")

    # Note que tuplas não possuem métodos como append(), insert(), remove(), pop(), sort() ou clear()
    # devido à sua imutabilidade.

    input("\nPressione Enter para voltar ao menu...")


def exibir_conjuntos():
    print("\n--- Conjuntos ---")
    print("Conjuntos são coleções não ordenadas de itens únicos. Isso significa que:")
    print("- Os itens em um conjunto não possuem uma ordem específica.")
    print("- Um conjunto não permite elementos duplicados; cada item deve ser único.")
    print("- Conjuntos são definidos usando chaves `{}` ou a função `set()`.")
    numeros1 = {1, 2, 3, 4, 5}
    numeros2 = {4, 5, 6, 7, 8}
    print(f"Conjunto 1: {numeros1}")
    print(f"Conjunto 2: {numeros2}")

    # Função embutida: len() - Retorna o número de itens no conjunto
    print("\nFunção embutida: len()")
    print("Utilidade: Retorna o número de itens no conjunto.")
    tamanho_conjunto1 = len(numeros1)
    print(f"O tamanho do Conjunto 1 é: {tamanho_conjunto1}")

    # Método: add() - Adiciona um elemento ao conjunto
    print("\nMétodo: add()")
    print("Utilidade: Adiciona um elemento ao conjunto. Se o elemento já existir, nada acontece.")
    numeros1.add(6)
    print(f"Conjunto 1 após add(6): {numeros1}")

    # Método: remove() - Remove um elemento do conjunto. Gera um erro se o elemento não existir.
    print("\nMétodo: remove()")
    print("Utilidade: Remove um elemento do conjunto. Lança KeyError se o elemento não for encontrado.")
    try:
        numeros1.remove(1)
        print(f"Conjunto 1 após remove(1): {numeros1}")
    except KeyError:
        print("O elemento 1 não estava no Conjunto 1.")

    # Método: discard() - Remove um elemento do conjunto se ele estiver presente
    print("\nMétodo: discard()")
    print("Utilidade: Remove um elemento do conjunto se ele estiver presente. Não faz nada se o elemento não existir (sem erro).")
    numeros2.discard(9)
    print(f"Conjunto 2 após discard(9): {numeros2}")

    # Método: pop() - Remove e retorna um elemento arbitrário do conjunto
    print("\nMétodo: pop()")
    print("Utilidade: Remove e retorna um elemento arbitrário do conjunto.")
    try:
        elemento_removido = numeros1.pop()
        print(f"Elemento removido com pop() do Conjunto 1: {elemento_removido}, Conjunto 1 agora: {numeros1}")
    except KeyError:
        print("O Conjunto 1 está vazio.")

    # Método: clear() - Remove todos os elementos do conjunto
    print("\nMétodo: clear()")
    print("Utilidade: Remove todos os elementos do conjunto, deixando-o vazio.")
    conjunto_para_limpar = {10, 20, 30}
    conjunto_para_limpar.clear()
    print(f"Conjunto após clear(): {conjunto_para_limpar}")

    # Métodos de operações de conjuntos (já demonstrados antes):
    print("\nMétodos de operações de conjuntos:")
    uniao = numeros1.union(numeros2)
    print(f"União: {uniao}")
    intersecao = numeros1.intersection(numeros2)
    print(f"Interseção: {intersecao}")
    diferenca1 = numeros1.difference(numeros2)
    print(f"Diferença (numeros1 - numeros2): {diferenca1}")
    diferenca_simetrica = numeros1.symmetric_difference(numeros2)
    print(f"Diferença Simétrica: {diferenca_simetrica}")

    input("\nPressione Enter para voltar ao menu...")

def numero_aleatorio():
    numero_aleatorio = random.randint(1, 10)
    print(numero_aleatorio)

while True:
    print("\n--- Menu de Seleção ---")
    print("Escolha o que você quer ver:")
    print("1 - Condicionais Aninhadas")
    print("2 - Tratamento de Exceções (Try-Except)")
    print("3 - Estrutura de Repetição (For)")
    print("4 - Estrutura de Repetição (While)")
    print("5 - Listas")
    print("6 - Tuplas")
    print("7 - Conjuntos")
    print("8 - Gera um número inteiro aleatório entre 1 e 10")
    print("0 - Sair")
    opcao = input("Digite o número da sua escolha: ")

    if opcao == '1':
        exibir_condicionais_aninhadas()
    elif opcao == '2':
        exibir_try_except()
    elif opcao == '3':
        exibir_estrutura_for()
    elif opcao == '4':
        exibir_estrutura_while()
    elif opcao == '5':
        exibir_listas()
    elif opcao == '6':
        exibir_tuplas()
    elif opcao == '7':
        exibir_conjuntos()
    elif opcao == '8':
        numero_aleatorio()
    elif opcao == '0':
        print("Saindo do programa.")
        break
    else:
        print("Opção inválida. Por favor, escolha uma opção do menu.")