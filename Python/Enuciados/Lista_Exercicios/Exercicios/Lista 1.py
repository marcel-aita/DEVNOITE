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
# as informações em uma #única linha, separadas por vírgulas.

def exe2():
    nome = input("Digite seu nome: ") #input (nome)
    idade = input("Digite sua idade: ") #input (idade)
    cep = input("Digite seu endereço: ") #input (cep)
    print ("Seus dados: " " " f"{nome}" "," " " f"{idade}" "," " " f"{cep}") #Dados em linha

#Crie um programa que imprima uma tabela simples, com duas colunas: 
# "Nome" e "Idade". Preencha a tabela com os dados de 3 pessoas.

def exe3():
    dados = []  # Lista para armazenar os dados
    
    # Coletar dados de 3 pessoas
    for i in range(3):
        print(f"\nPessoa {i + 1}:")
        nome = input("Digite o nome: ")
        idade = input("Digite a idade: ")
        dados.append((nome, idade))  # Adiciona à lista como tupla (nome, idade)
    
    # Exibir a tabela no final
    print("\n--- Tabela de Dados ---")
    print("Nome\t\tIdade")  # Cabeçalho
    print("-" * 20)  # Linha separadora
    for nome, idade in dados:
        print(f"{nome}\t\t{idade}")
        
while True:
    print("\n--- Menu de Seleção ---")
    print("Escolha o que você quer ver:")
    print("1 - exe1")
    print("2 - exe2")
    print("3 - exe3'")
     
    print("0 - sair")

    opcao = input("Digite sua opçâo: ")

    if opcao == '1':
        exe1()
    elif opcao == '2':
        exe2()
    elif opcao == '3':
        exe3()
    elif opcao == '0':
        print("Saindo do programa.")
        break
    else:
        print("Opçâ onválida. Por favor, digite um número válido do menu.")

