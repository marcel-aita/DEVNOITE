def estrutura_controle(numero):
    try:
        if numero > 0:
            print(f"{numero} é positivo.")
        elif numero < 0:
            print(f"{numero} é negativo.")
        else:
            print("O número é zero.")
    except ValueError:
        print("Por favor, digite um número inteiro válido.")