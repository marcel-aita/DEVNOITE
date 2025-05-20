#Peça ao usuário para inserir sua idade. 
#Verifique se ele pode votar (18 anos ou mais) e se ele é estudante. 
#Use operadores lógicos para exibir uma mensagem indicando se ele pode votar e é estudante.
def exe1():
    print("\n--- Verificação de Idade ---")
    idade = int(input("Digite sua idade: ")) #input (idade)
    estudante = int(input("Digite 1 para 'SIM,SOU ESTUDANTE' ou 0 para 'NÂO SOU ESTUDANTE': "))
    if idade < 18 and estudante == 1:
        print("Você é estudante e pode votar.")
    elif idade < 18 and estudante == 0:
        print("Você não é estudante, mas pode votar.")
    else:
        print("Você não é estudante e não pode votar.")

#Crie um programa que pergunte ao usuário se ele possui ingresso 
#e se é amigo do organizador. O usuário deve ter acesso 
#se possuir ingresso ou se for amigo do organizador. 
#Use operadores lógicos para validar as condições.
def exe2():
    print("\n--- Acesso ao Evento ---")
    ingresso = int(input("Digite 1 para 'TENHO INGRESSO' ou 0 para 'NÃO TENHO INGRESSO': "))
    amigoOrganizador = int(input("Digite 1 para 'SOU AMIGO DO ORGANIZADOR' ou 0 para 'NÃO SOU AMIGO DESSE BOSTA!': "))
    if ingresso == 1:
        print("Bem vindo ao evento, Você tem ingresso!")
    elif amigoOrganizador == 1:
        print("Bem vindo ao evento. Você é amigo do CARA!")
    else:
        print("Você não pode entrar.")

#Peça ao usuário para inserir sua nota em uma prova. 
#Se a nota for maior ou igual a 7 e o aluno não 
#tiver faltado mais de 25% das aulas, exiba uma mensagem
#de "Aprovado". Caso contrário, exiba "Reprovado".
def exe3():
    print("\n--- Classificação de Notas ---")
    NotaProva = int(input("Digite a nota da sua prova: "))
    frequencia = int(input("Digite sua frequência em sala de aula: "))
    if NotaProva >=  7 and frequencia >= 100 * 0.25: #Testa se o valor da frequencia é maior ou igual a 25% de 100%.
        print("Aprovado.")
    else:
        print("Reprovado.")

#Crie um sistema de login simples. 
#Pergunte ao usuário se ele tem um nome de usuário 
#e uma senha. O acesso deve ser concedido 
#se o nome de usuário for "admin" e a senha for "1234". 
#Utilize operadores lógicos para verificar ambas as condições.
def exe4():
    print("\n--- Sistema de Login ---")
    user = str(input("Digite seu nome de usuário: ").lower())
    senha = int(input("Digite a senha: "))
    if user == 'admin'and senha == 123:
        print("Usuário Logado.")
    else:
        print("Login e/ou senha incorretos.")

#Pergunte ao usuário o valor da compra e se ele é membro
#de um programa de fidelidade. O frete é grátis 
#se o valor da compra for maior que 100 ou 
#se o usuário for membro. 
#Mostre uma mensagem indicando 
#se o frete é gratuito ou não.
def exe5():
    print("\n--- Cálculo de Frete ---")
    valor = int(input("Qual o valor da compra: "))
    fidelidade = str(input("Você é membro do clube de vantagens?: ").lower())

    if valor > 100 and fidelidade == 'SIM':
        print("Frete grátis!")
    else:
        print("Aguarde enquanto calculamos seu frete...")

#Peça ao usuário para inserir um número. 
#Exiba uma mensagem indicando se o número é par e maior que 10
#ou ímpar e menor que 5. Use operadores lógicos para combinar as condições.
def exe6():
    print("\n--- Verificação de Par ou Ímpar ---")
    num = int(input("Digite um número: "))

    #Verifica se o número é pár e maior que 10 ou se é impar e menor que 5
    if (num % 2 == 0 and num > 10) or (num % 2 != 0 and num < 5):
        print("O numero atende as condições necessárias.")
    else:
        print("O número não é compatível.")

#Pergunte ao usuário se ele é um novo cliente 
#e se ele possui um código de desconto. 
#O cliente deve receber um desconto se ele for novo ou se tiver um código. 
#Exiba uma mensagem informando se ele pode receber o desconto
def exe7():
    print("\n--- Promoção em loja ---")
    NovoCliente = input("Você é um novo cliente? (sim/não): ").lower()
    CodigoDesconto = input("Digite seu código de desconto (4 caracteres): ").strip().upper()

    # Valida se o código tem exatamente 4 caracteres usando um 'for'
    valido = True
    for char in CodigoDesconto:
        if not char.isalnum():
            valido = False
            break  # Sai do loop ao encontrar um caractere inválido

    if NovoCliente == 'sim' or (len(CodigoDesconto) == 4 and valido):
        if CodigoDesconto:  # Mostra o código apenas se foi digitado
            print(f"Desconto concedido. Código utilizado: {CodigoDesconto}")
        else:
            print("Desconto concedido.")
    else:
        print("Inabilitado para receber o desconto.")

    #Codigo de desconto tem que ter 4 caracteres sendo numeros ou letras e irá aparecer em maiúsculo
    #print("\n--- Promoção em loja ---")
    #NovoCliente = input("Você é um novo cliente? (sim/não): ").lower()
    #CodigoDesconto = input("Digite seu código de desconto (4 caracteres): ").strip().upper()#Tira os espaços e mostra o resultado em caixa alta

    # Verifica se o código tem exatamente 4 caracteres
    #if NovoCliente == 'sim' or (len(CodigoDesconto) == 4 and CodigoDesconto.isalnum()):#Remove qualquer caracter especial
        #print(f"Desconto concedido. Código utilizado: {CodigoDesconto}")
    #else:
        #print("Inabilitado para receber o desconto.") 

#Pergunte ao usuário em qual mês ele nasceu e em qual região do Brasil ele mora. 
#Determine se ele pode ser considerado "veranista" se o mês for entre dezembro 
#e fevereiro e se morar no sul do Brasil. Utilize operadores lógicos para essa verificação
def exe8():
    print("\n--- Estação do Ano ---")
    mes = int(input("Digite o número do mês em que você nasceu (1-12): "))
    regiao = str(input("Digite sua região (Norte/Sul):")).upper()
    if (mes >=1 and mes <= 12) and (regiao == 'SUL'):
        print("Você é veranista.")
    else:
        print("Você não é veranista.")

#Crie um programa que pergunte se o usuário possui um crachá de identificação 
#e se ele já trabalha na empresa há mais de um ano. 
#O acesso deve ser concedido se o usuário tiver o crachá 
#ou se tiver mais de um ano de empresa.
def exe9():
    print("\n--- Autorização de Entrada ---")
    cracha = int(input("Digite 1 para 'TENHO CRACHA' ou 0 para 'NÃO TENHO CRACHA': "))
    tempo = int(input("Digite 1 para 'TENHO MAIS DE UM ANO DE EMPRESA' ou 0 para 'NÃO TENHO MAIS DE UM ANO DE EMPRESA': "))
    if cracha == 1 or tempo == 1:
        print("Acesso autorizado.")
    else:
        print("Acesso negado.")

#Crie um jogo simples onde o usuário deve adivinhar um número. 
#Pergunte ao usuário se o palpite está entre 1 e 10 e se ele já tentou adivinhar antes. 
#Exiba uma mensagem informando se ele pode continuar jogando, usando operadores lógicos.
def exe10():
    print("\n--- Jogo de Adivinhação ---")
    palpite = int(input("Digite um número entre 1 e 10: "))
    tentativas = int(input("Digite 1 para 'JÁ TENTEI ADIVINHAR' ou 0 para 'NÃO TENTEI ADIVINHAR': "))
    if (palpite >= 1 and palpite <= 10) and tentativas == 0:
        print("Você pode continuar jogando.")
    else:
        print("Você não pode continuar jogando.")







    


    




