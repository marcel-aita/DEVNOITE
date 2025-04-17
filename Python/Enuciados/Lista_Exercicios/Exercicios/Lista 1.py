#Crie um programa que imprima o seu nome completo,
# sua idade e sua cidade em linhas separadas.

def exe1():

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
    nome = input("Digite seu nome: ") #input (nome)
    idade = input("Digite sua idade: ") #input (idade)
    cep = input("Digite seu endereço: ") #input (cep)
    print ("Seus dados: " " " f"{nome}" "," " " f"{idade}" "," " " f"{cep}") #Dados em linha

#Crie um programa que imprima uma tabela simples, com duas colunas: 
# "Nome" e "Idade". Preencha a tabela com os dados de 3 pessoas.

def exe3():
    nome1 = input("Digite o primeiro nome: ") 
    idade1 = input("Digite a primeira idade: ")
    nome2 = input("Digite o segundo nome: ")
    idade2 = input("Digite a segunda idade: ")
    nome3 = input("Digite o terceiro nome: ")
    idade3 = input("Digite a terceira idade: ")

    print("\n--- Tabela de Dados ---")
    print(f"{nome1} {idade1}")  # Adicione 'f' antes da string para formatar
    print(f"{nome2} {idade2}")
    print(f"{nome3} {idade3}")

#Crie um programa que peça ao usuário para digitar seu nome e, 
#em seguida, imprima uma mensagem de boas-vindas personalizada, 
# utilizando o nome digitado

def exe4():
    nome = input("Digite seu nome: ")

    print("Olá" " " f"{nome}" " " "sinta-se em casa.")

#Crie um programa que peça ao usuário que digite dois números decimais. 
# Calcule e exiba a soma dos dois números.

def exe5():
    numero1 = int(input("Digite um número: "))
    numero2 = int(input("Digite outro número: "))
    
    print(f"{numero1} + {numero2} = {numero1 + numero2}")
 

#Crie um programa que peça ao usuário que digite dois números decimais. 
# Calcule e exiba a multiplicação dos dois números

def exe6():
    numero1 = int(input("Digite um número: "))
    numero2 = int(input("Digite outro número: "))
    
    print(f"{numero1} x {numero2} = {numero1 * numero2}")

#Crie um programa que calcule a área de um retângulo. 
# Peça ao usuário para digitar a base e a altura, e imprima o resultado.

def exe7():
    base = float(input("Digite a base do retângulo: "))
    altura = float(input("Digite a altura do retângulo: "))

    print(f"{base} x {altura} = {base * altura}")

#Crie um programa que peça ao usuário que digite 4 notas de uma disciplina.

def exe8():
    nota1 = float(input("Digite a primeira nota: "))
    nota2 = float(input("Digite a segunda nota: "))
    nota3 = float(input("Digite a terceira nota: "))
    nota4 = float(input("Digite a quarta nota: "))

    print(f"{nota1} {nota2}")
    print(f"{nota3} {nota4}")

#Calcule e exiba a média das notas.

def exe9():
    nota1 = float(input("Digite a primeira nota: "))
    nota2 = float(input("Digite a segunda nota: "))
    nota3 = float(input("Digite a terceira nota: "))
    nota4 = float(input("Digite a quarta nota: "))

    print(f"{nota1 + nota2 + nota3 + nota4/4} ")
        
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
    elif opcao == '0':
        print("Saindo do programa.")
        break
    else:
        print("Opçâ onválida. Por favor, digite um número válido do menu.")

