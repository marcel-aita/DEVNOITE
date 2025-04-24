#Crie um programa que imprima o seu nome completo,
# sua idade e sua cidade em linhas separadas.

def exe1():
    print("\n--- Nome e Idade ---")
    nome = input("Digite seu nome: ") #input (nome)
    idade = input("Digite sua idade: ") #input (idade)
    cep = input("Digite seu endereço: ") #input (cep)
    print (f"Nome: {nome}") 
    print (f"Idade: {idade}") 
    print (f"Endereço: {cep}")
    #_Dados em coluna

#Crie um programa como o programa anterior, porém mostre todas
# as informações em uma única linha, separadas por vírgulas.

def exe2():
    print("\n--- Dados em linha ---")
    nome = input("Digite seu nome: ") #input (nome)
    idade = input("Digite sua idade: ") #input (idade)
    cep = input("Digite seu endereço: ") #input (cep)
    print ("Seus dados: " " " f"{nome}" "," " " f"{idade}" "," " " f"{cep}") #Dados em linha

#Crie um programa que imprima uma tabela simples, com duas colunas: 
# "Nome" e "Idade". Preencha a tabela com os dados de 3 pessoas.

def exe3():
    print("\n--- Tabela de Dados ---")
    nome1 = input("Digite o primeiro nome: ") 
    idade1 = input("Digite a primeira idade: ")
    nome2 = input("Digite o segundo nome: ")
    idade2 = input("Digite a segunda idade: ")
    nome3 = input("Digite o terceiro nome: ")
    idade3 = input("Digite a terceira idade: ")

    print(f"{nome1} {idade1}")  # Adicione 'f' antes da string para formatar
    print(f"{nome2} {idade2}")
    print(f"{nome3} {idade3}")

#Crie um programa que peça ao usuário para digitar seu nome e, 
#em seguida, imprima uma mensagem de boas-vindas personalizada, 
# utilizando o nome digitado

def exe4():
    print("\n--- Menssagem de Boas Vindas ---")
    nome = input("Digite seu nome: ")

    print("Olá" " " f"{nome}" " " "sinta-se em casa.")

#Crie um programa que peça ao usuário que digite dois números decimais. 
# Calcule e exiba a soma dos dois números.

def exe5():
    print("\n--- Cálculo de Soma ---")
    numero1 = int(input("Digite um número: "))
    numero2 = int(input("Digite outro número: "))
    
    print(f"{numero1} + {numero2} = {numero1 + numero2}")
 

#Crie um programa que peça ao usuário que digite dois números decimais. 
# Calcule e exiba a multiplicação dos dois números

def exe6():
    print("\n--- Cálculo de Multiplicação ---")
    numero1 = int(input("Digite um número: "))
    numero2 = int(input("Digite outro número: "))
    
    print(f"{numero1} x {numero2} = {numero1 * numero2}")

#Crie um programa que calcule a área de um retângulo. 
# Peça ao usuário para digitar a base e a altura, e imprima o resultado.

def exe7():
    print("\n--- Área do retângulo ---")
    base = float(input("Digite a base do retângulo: "))
    altura = float(input("Digite a altura do retângulo: "))

    print(f"{base} x {altura} = {base * altura}")

#Crie um programa que peça ao usuário que digite 4 notas de uma disciplina.

def exe8():
    print("\n--- Notas de disciplina ---")
    nota1 = float(input("Digite a primeira nota: "))
    nota2 = float(input("Digite a segunda nota: "))
    nota3 = float(input("Digite a terceira nota: "))
    nota4 = float(input("Digite a quarta nota: "))

    print(f"{nota1} {nota2}")
    print(f"{nota3} {nota4}")

#Calcule e exiba a média das notas.

def exe9():
    print("\n--- Média das Notas ---")
    nota1 = int(input("Digite a primeira nota: "))
    nota2 = int(input("Digite a segunda nota: "))
    nota3 = int(input("Digite a terceira nota: "))
    nota4 = int(input("Digite a quarta nota: "))

    print(f"{nota1 + nota2 + nota3 + nota4/4} ")

#Crie um programa que peça ao usuário que digite 
#uma frase e imprima o número de caracteres dessa string.

def exe10():
    print("\n--- Tamanaho da String ---")
    minha_string = "Boa noite DEVs. Tudo numa boa!?"
    numero_de_caracteres = len(minha_string)
    print(f"Número de caracteres em '{minha_string}': {numero_de_caracteres}")

#Crie um programa que peça ao usuário para digitar uma frase contendo uma palavra 
#maiúscula, converta essa palavra para minúsculas e exiba o resultado.

def exe11():
    print("\n--- Conversão para minúsculo ---")
    texto = str(input("Digite seu texto: "))
    texto_minusculo = texto.lower()
    print(f" '{texto}' em minúsculo: {texto_minusculo}")

#Crie um programa que peça ao usuário para digitar uma frase contendo uma palavra 
#minúscula, converta essa palavra para maiúscula e exiba o resultado.

def exe12():
    print("--- Conversão para maiúsculo ---")
    texto = str(input("Digite seu texto: "))
    texto_maiusculo = textp.upper()
    print(f" '{texto}' em maiúsculo: {texto_maiusculo}")

#Crie um programa que remova todas as ocorrências de um caractere específico da string 
#digitada pelo usuário. Solicite ao usuário para digitar o caractere a ser removido.

def exe13():
    print("-- Remoção de caracter ---")
    #texto = input("Digite uma string: ")
    texto =  input("Digite seu texto: ")
    #caractere_remover = "a" 
    caracter_removido = "a"
    #texto_modificado = texto.replace(caractere_remover, "")
    texto_novo = texto.replace(caracter_removido, "")
    #print(f"String original: {texto}")
    #print(f"Caractere a ser removido: '{caractere_remover}'")
    #print(f"String modificada: {texto_modificado}")
    print(f"{texto_novo}")

    #---- Coreção do Deepseak ----
    #print("\n--- Remoção do caractere 'a' ---")  # Avisa qual caractere será removido
    #texto = input("Digite uma frase: ")
    #caractere_pre_definido = "a"  # Caractere pré-definido (pode ser alterado)
    #texto_modificado = texto.replace(caractere_pre_definido, "")
    #print(f"Resultado: {texto_modificado}")  # Mostra apenas a string modificada
    


        
while True:
    print("\n--- Menu de Seleção ---")
    print("Escolha o que você quer ver:")
    print("1 - exe1")
    print("2 - exe2")
    print("3 - exe3")
    print("4 - exe4")
    print("5 - exe5")
    print("6 - exe6")
    print("7 - exe7")
    print("8 - exe8")
    print("9 - exe9")
    print("10 - exe10")
    print("11 - exe11")
    print("12 - exe12")
    print("13 - exe13")
     
    print("0 - sair")

    opcao = input("Digite sua opçâo: ")

    if opcao == '1':
        exe1()
    elif opcao == '2':
        exe2()
    elif opcao == '3':
        exe3()
    elif opcao == '4':
        exe4()
    elif opcao == '5':
        exe5()
    elif opcao == '6':
        exe6()
    elif opcao == '7':
        exe7()
    elif opcao == '8':
        exe8()
    elif opcao == '9':
        exe9()
    elif opcao == '10':
        exe10()
    elif opcao == '11':
        exe11()
    elif opcao == '12':
        exe12()
    elif opcao == '13':
        exe13()
    elif opcao == '0':
        print("Saindo do programa.")
        break
    else:
        print("Opção onválida. Por favor, digite um número válido do menu.")

