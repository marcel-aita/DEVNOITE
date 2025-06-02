import datetime
import os

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

def exibir_tipos_primitivos():
    # O .__name__ retorna o nome do tipo de dado do objeto como uma string.
    print("\n--- Tipos Primitivos ---")
    print(f"Caracter letra: '{letra}' (tipo: {type(letra)})")
    print(f"Salário: {salariop} (tipo: {type(salariop).__name__})")
    print(f"Idade: {idadep} (tipo: {type(idadep).__name__})")
    print(f"Fez algo (lógico): {fez} (tipo: {type(fez).__name__})")
    print(f"Texto: '{texto}' (tipo: {type(texto).__name__})")
    input("\nPressione Enter para voltar ao menu...")
    

def exibir_tipos_anotados():
    print("\n--- Tipos Primitivos e Suas Anotações ---")
    print(f"Caracter letra: '{letra}' (tipo: {type(letra).__name__})")
    print(f"Cadeia de texto: '{texto}' (tipo: {type(texto).__name__})")
    print(f"Inteiro idade: {idadep} (tipo: {type(idadep).__name__})")
    print(f"Outro exemplo de inteiro: {numero_inteiro} (tipo: {type(numero_inteiro).__name__})")
    print(f"Real salario: {salariop} (tipo: {type(salariop).__name__})")
    print(f"Outro exemplo de real: {preco_produto} (tipo: {type(preco_produto).__name__})")
    print(f"Logico fez: {fez} (tipo: {type(fez).__name__})")
    print(f"Outro exemplo de lógico: {ativo} (tipo: {type(ativo).__name__})")
    print(f"Lista de inteiros: {numeros} (tipo: {type(numeros).__name__})")
    print(f"Lista de strings: {nomes} (tipo: {type(nomes).__name__})")
    print(f"Tupla com nome, idade e status: {pessoa} (tipo: {type(pessoa).__name__})")
    print(f"Conjunto de inteiros: {conjunto_numeros} (tipo: {type(conjunto_numeros).__name__})")
    print(f"Conjunto de strings: {conjunto_strings} (tipo: {type(conjunto_strings).__name__})")
    print(f"Dicionário com chave string e valor inteiro: {pessoa_dict} (tipo: {type(pessoa_dict).__name__})")
    print(f"Valor nulo (None): {valor_nulo} (tipo: {type(valor_nulo).__name__})")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_ola_mundo():
    print("\n--- Olá Mundo ---")
    print("Vamos exibir a mensagem 'Olá Mundo'.")
    print("Olá Mundo\n")
    print("Agora vamos exibir 'olá' em uma linha e 'Mundo' na próxima.")
    print("olá\n Mundo\n")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_entrada_saida():
    print("\n--- Entrada e Saída de Dados ---")
    nome = input("Digite seu nome: ")
    print(f"Olá {nome}!\n")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_entrada_letra():
    print("\n--- Entrada de Letra ---")
    letra_input = input("Digite uma letra: ")
    if letra_input:
        letra_global = letra_input[0]
        print(f"A primeira letra digitada foi: {letra_global}")
    else:
        print("Nenhuma letra foi digitada.")
    input("\nPressione Enter para voltar ao menu...") 
    return letra_global 

def exibir_entrada_idade():
    print("\n--- Entrada de Idade ---")
    try:
        idade = int(input("Digite sua idade: "))
        print(f"Você tem {idade} anos.")
        input("\nPressione Enter para voltar ao menu...") 
        return idade 
    except ValueError:
        print("Você digitou algo que não é um número inteiro válido para a idade.")
        input("\nPressione Enter para voltar ao menu...") 
        return 0 

def exibir_operacoes_matematicas():
    print("\n--- Operações Matemáticas ---")
    try:
        numero1 = float(input("Digite o primeiro número: "))
        numero2 = float(input("Digite o segundo número: "))
        print(f"\nA soma dos dois números é: {numero1 + numero2}")
        print(f"A subtração dos dois números é: {numero1 - numero2}")
        print(f"A multiplicação dos dois números é: {numero1 * numero2}")
        input("\nPressione Enter para voltar ao menu...")
    except ValueError:
        print("Você digitou algo que não é um número válido.")
        input("\nPressione Enter para voltar ao menu...") 

def exibir_tabela():
    print("\n--- Tabela Simples ---")
    print("Nome\tIdade")
    print("João\t30")
    print("Maria\t25")
    print("Pedro\t35")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_tamanho_string():
    print("\n--- Tamanho da String ---")
    minha_string = "Olá, mundo!"
    numero_de_caracteres = len(minha_string)
    print(f"Número de caracteres em '{minha_string}': {numero_de_caracteres}")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_conversoes_string():
    print("\n--- Conversões de String ---")
    texto_mundo = "Olá, MUNDO!"
    texto_minusculo = texto_mundo.lower()
    print(f"'{texto_mundo}' em minúsculo: {texto_minusculo}")
    texto_mundo_lower = "olá, mundo!"
    texto_maiusculo = texto_mundo_lower.upper()
    print(f"'{texto_mundo_lower}' em maiúsculo: {texto_maiusculo}")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_replace_string(letra_para_substituir):
    print("\n--- Substituição em String ---")
    texto_replace = "Olá, mundo! Como você está?"
    novo_texto = texto_replace.replace(letra_para_substituir, "")
    print(f"'{texto_replace}' após substituir '{letra_para_substituir}' por '': {novo_texto}")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_fstrings():
    print("\n--- Formatação com f-strings ---")
    nome = "Alice"
    idade = 30
    mensagem = f"Olá, meu nome é {nome} e eu tenho {idade} anos."
    print(mensagem)
    preco = 19.99
    mensagem_formatada = f"O preço é de {preco:.2f}."
    print(mensagem_formatada)
    input("\nPressione Enter para voltar ao menu...") 

def exibir_format_method():
    print("\n--- Formatação com .format() ---")
    nome = "Bob"
    idade = 25
    mensagem = "Olá, meu nome é {} e eu tenho {} anos.".format(nome, idade)
    print(mensagem)
    preco = 29.95
    mensagem_formatada = "O preço é de {:.2f}.".format(preco)
    print(mensagem_formatada)
    mensagem_indexado = "O segundo argumento é {1} e o primeiro é {0}.".format("primeiro", "segundo")
    print(mensagem_indexado)
    mensagem_nomeado = "Nome: {n}, Idade: {i}.".format(n="Charlie", i=35)
    print(mensagem_nomeado)
    input("\nPressione Enter para voltar ao menu...") 


def exibir_operador_porcentagem():
    print("\n--- Formatação com operador % ---")
    nome = "David"
    idade = 40
    mensagem = "Olá, meu nome é %s e eu tenho %d anos." % (nome, idade)
    print(mensagem)
    preco = 39.90
    mensagem_formatada = "O preço é de %.2f." % preco
    print(mensagem_formatada)
    input("\nPressione Enter para voltar ao menu...") 

def exibir_datas_horas():
    print("\n--- Exemplos de Data e Hora ---")
    agora = datetime.datetime.now()
    print(f"Data e hora atuais: {agora}")
    hoje = datetime.date.today()
    print(f"Data atual: {hoje}")
    hora_atual = datetime.datetime.now().time()
    print(f"Hora atual: {hora_atual}")
    data_especifica = datetime.date(2025, 12, 25)
    print(f"Data específica: {data_especifica}")
    hora_especifica = datetime.time(10, 30, 0)
    print(f"Hora específica: {hora_especifica}")
    data_hora_especifica = datetime.datetime(2025, 5, 10, 15, 45, 30)
    print(f"Data e hora específica: {data_hora_especifica}")
    data_formatada = agora.strftime("%d/%m/%Y")
    print(f"Data formatada: {data_formatada}")
    hora_formatada = agora.strftime("%H:%M:%S")
    print(f"Hora formatada: {hora_formatada}")
    data_hora_formatada = agora.strftime("%d de %B de %Y às %H:%M")
    print(f"Data e hora formatadas: {data_hora_formatada}")
    string_data = "2024-01-15"
    data_convertida = datetime.datetime.strptime(string_data, "%Y-%m-%d").date()
    print(f"String convertida para data: {data_convertida}")
    string_hora = "09:00:00"
    hora_convertida = datetime.datetime.strptime(string_hora, "%H:%M:%S").time()
    print(f"String convertida para hora: {hora_convertida}")
    string_data_hora = "2024-01-15 09:00:00"
    data_hora_convertida = datetime.datetime.strptime(string_data_hora, "%Y-%m-%d %H:%M:%S")
    print(f"String convertida para data e hora: {data_hora_convertida}")
    delta_tempo = datetime.timedelta(days=7)
    proxima_semana = hoje + delta_tempo
    print(f"Próxima semana: {proxima_semana}")
    diferenca = data_especifica - hoje
    print(f"Diferença entre {data_especifica} e hoje: {diferenca.days} dias")
    input("\nPressione Enter para voltar ao menu...") 

def exibir_funcoes_embutidas():
    print("\n--- Exemplos de Funções Embutidas ---")

    # abs(): Retorna o valor absoluto de um número.
    numero_negativo = -10
    absoluto = abs(numero_negativo)
    print(f"abs({numero_negativo}) = {absoluto}")

    # len(): Retorna o número de itens em um contêiner (como uma lista ou string).
    minha_lista = [1, 2, 3, 4, 5]
    tamanho_lista = len(minha_lista)
    minha_string = "Python"
    tamanho_string = len(minha_string)
    print(f"len({minha_lista}) = {tamanho_lista}")
    print(f"len('{minha_string}') = {tamanho_string}")

    # max(): Retorna o maior item em um iterável ou o maior de dois ou mais argumentos.
    numeros = [5, 1, 9, 3, 7]
    maior_numero = max(numeros)
    print(f"max({numeros}) = {maior_numero}")
    maior_entre_dois = max(15, 8)
    print(f"max(15, 8) = {maior_entre_dois}")

    # min(): Retorna o menor item em um iterável ou o menor de dois ou mais argumentos.
    numeros = [5, 1, 9, 3, 7]
    menor_numero = min(numeros)
    print(f"min({numeros}) = {menor_numero}")
    menor_entre_dois = min(15, 8)
    print(f"min(15, 8) = {menor_entre_dois}")

    # sum(): Retorna a soma de todos os itens em um iterável.
    numeros_para_somar = [1, 2, 3, 4, 5]
    soma_total = sum(numeros_para_somar)
    print(f"sum({numeros_para_somar}) = {soma_total}")

    # round(): Retorna um número de ponto flutuante arredondado para um número especificado de casas decimais.
    numero_decimal = 3.14159
    arredondado_duas_casas = round(numero_decimal, 2)
    print(f"round({numero_decimal}, 2) = {arredondado_duas_casas}")

    # type(): Retorna o tipo de um objeto. (Já usamos bastante!)
    print(f"type('{letra}') = {type(letra)}")

    # int(), float(), str(), bool(): Funções de conversão de tipo.
    string_numero = "123"
    numero_inteiro_convertido = int(string_numero)
    print(f"int('{string_numero}') = {numero_inteiro_convertido} (tipo: {type(numero_inteiro_convertido).__name__})")

    numero_real = 5
    real_convertido = float(numero_real)
    print(f"float({numero_real}) = {real_convertido} (tipo: {type(real_convertido).__name__})")

    numero_inteiro_para_string = str(100)
    print(f"str(100) = '{numero_inteiro_para_string}' (tipo: {type(numero_inteiro_para_string).__name__})")

    valor_zero = 0
    booleano_zero = bool(valor_zero)
    valor_nao_zero = 5
    booleano_nao_zero = bool(valor_nao_zero)
    print(f"bool({valor_zero}) = {booleano_zero}")
    print(f"bool({valor_nao_zero}) = {booleano_nao_zero}")

    input("\nPressione Enter para voltar ao menu...")

def exibir_formatacao_inteiros():
    print("Exemplos detalhados de formatação de números inteiros.")
    numero = 123
    print(f"--- Número Inteiro ({numero}) ---")
    print(f"Decimal (d): {numero:d}")         # Exibe o número como um inteiro decimal
    print(f"Binário (b): {numero:b}")         # Exibe o número em formato binário (base 2)
    print(f"Octal (o): {numero:o}")           # Exibe o número em formato octal (base 8)
    print(f"Hexadecimal (x): {numero:x}")     # Exibe o número em formato hexadecimal (base 16), letras minúsculas
    print(f"Hexadecimal (X): {numero:X}")     # Exibe o número em formato hexadecimal (base 16), letras maiúsculas
    print(f"Caractere (c): {numero:c}")       # Converte o número para o caractere Unicode correspondente
    print(f"Decimal com sinal (+d): {numero:+d}") # Exibe o sinal (+ ou -) para o número
    print(f"Decimal com espaço para positivo ( d): {numero: d}") # Exibe um espaço para positivos, '-' para negativos
    print(f"Decimal com largura mínima (5d): {numero:5d}") # Garante uma largura mínima de 5 caracteres, preenchendo com espaços à esquerda
    print(f"Decimal com zeros à esquerda (05d): {numero:05d}") # Preenche com zeros à esquerda para atingir a largura mínima de 5
    print(f"Binário com prefixo (#b): {numero:#b}") # Adiciona o prefixo '0b' para binário
    print(f"Octal com prefixo (#o): {numero:#o}")   # Adiciona o prefixo '0o' para octal
    print(f"Hexadecimal com prefixo (#x): {numero:#x}") # Adiciona o prefixo '0x' para hexadecimal (minúsculo)
    print(f"Hexadecimal com prefixo (#X): {numero:#X}") # Adiciona o prefixo '0X' para hexadecimal (maiúsculo)
    print(f"Decimal com separador de milhares (,d): {numero:,d}") # Adiciona vírgulas como separadores de milhares
    print(f"Decimal com separador de milhares (_d): {numero:_d}") # Adiciona underscores como separadores de milhares (Python 3.7+)
    input("\nPressione Enter para voltar ao menu...")

def exibir_formatacao_flutuantes():
    print("Exemplos detalhados de formatação de números de ponto flutuante.")
    flutuante = 45.678
    print(f"--- Número de Ponto Flutuante ({flutuante}) ---")
    print(f"Ponto fixo (f): {flutuante:f}")         # Exibe o número em notação de ponto fixo
    print(f"Ponto fixo com 2 casas (:.2f): {flutuante:.2f}") # Exibe com 2 casas decimais
    print(f"Notação exponencial (e): {flutuante:e}")   # Exibe em notação científica (com 'e' minúsculo)
    print(f"Notação exponencial (E): {flutuante:E}")   # Exibe em notação científica (com 'E' maiúsculo)
    print(f"Formato geral (g): {flutuante:g}")       # Escolhe automaticamente entre ponto fixo e exponencial para concisão
    print(f"Formato geral (G): {flutuante:G}")       # Similar a 'g', mas usa 'E' maiúsculo na exponencial
    print(f"Porcentagem (%): {flutuante:%}")         # Multiplica por 100 e exibe com sinal de %
    print(f"Porcentagem com 2 casas (:.2%): {flutuante:.2%}") # Porcentagem com 2 casas decimais
    print(f"Ponto fixo com sinal (+f): {flutuante:+f}") # Exibe o sinal (+ ou -)
    print(f"Ponto fixo com espaço para positivo ( f): {flutuante: f}") # Espaço para positivos, '-' para negativos
    print(f"Ponto fixo com largura mínima (10f): {flutuante:10f}") # Largura mínima de 10, preenche com espaços à esquerda
    print(f"Ponto fixo alinhado à esquerda (<10f): {flutuante:<10f}") # Alinha à esquerda em largura 10
    print(f"Ponto fixo alinhado à direita (>10f): {flutuante:>10f}") # Alinha à direita em largura 10
    print(f"Ponto fixo centralizado (^10f): {flutuante:^10f}") # Centraliza em largura 10
    print(f"Ponto fixo com separador de milhares (,f): {flutuante:,f}") # Adiciona vírgulas como separadores de milhares
    print(f"Ponto fixo com separador de milhares (_f): {flutuante:_f}") # Adiciona underscores como separadores (Python 3.7+)
    print(f"Formato geral com separador de milhares (,g): {flutuante:,g}") # Separador de milhares no formato geral
    print(f"Formato geral com separador de milhares (_g): {flutuante:_g}") # Separador de milhares no formato geral (Python 3.7+)
    print(f"Formato geral com largura (10.2g): {flutuante:10.2g}") # Largura total 10, 2 dígitos significativos

def exibir_formatacao_texto():
    print("Exemplos detalhados de formatação de texto.")
    texto = "Olá"
    print(f"--- Texto ({texto}) ---")
    print(f"String (s): {texto:s}")           # Exibe a string como está
    print(f"Representação (r): {texto!r}")     # Exibe a representação da string (com aspas)
    print(f"Alinhado à esquerda (:<10): {texto:<10}") # Alinha à esquerda em largura 10
    print(f"Alinhado à direita (:>10): {texto:>10}") # Alinha à direita em largura 10
    print(f"Centralizado (:^10): {texto:^10}")     # Centraliza em largura 10
    print(f"Preenchido à esquerda com '*' (:*<10): {texto:*<10}") # Preenche com '*' à direita para largura 10
    print(f"Preenchido à direita com '-' (:-<10): {texto:->10}") # Preenche com '-' à esquerda para largura 10
    print(f"Preenchido centralizado com '.' (:.<10): {texto:.^10}") # Preenche com '.' em ambos os lados para centralizar em largura 10

def exibir_operadores_comparacao():
    numero1 = 10
    numero2 = 5

    # Operador Maior Que (>)
    print(f"Vamos testar o operador 'maior que' (>). Ele verifica se o valor à esquerda é maior que o valor à direita.")
    if numero1 > numero2:
        resultado_maior = True
    else:
        resultado_maior = False
    print(f"{numero1} > {numero2} é: {resultado_maior}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    # Operador Menor Que (<)
    print(f"Agora o operador 'menor que' (<). Ele verifica se o valor à esquerda é menor que o valor à direita.")

    if numero1 < numero2:
        resultado_menor = True
    else:
        resultado_menor = False
    print(f"{numero1} < {numero2} é: {resultado_menor}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    # Operador Maior ou Igual A (>=)
    print(f"O operador 'maior ou igual a' (>=). Ele verifica se o valor à esquerda é maior ou igual ao valor à direita.")

    if numero1 >= numero2:
        resultado_maior_igual = True
    else:
        resultado_maior_igual = False
    print(f"{numero1} >= {numero2} é: {resultado_maior_igual}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    # Operador Menor ou Igual A (<=)
    print(f"O operador 'menor ou igual a' (<=). Ele verifica se o valor à esquerda é menor ou igual ao valor à direita.")

    if numero1 <= numero2:
        resultado_menor_igual = True
    else:
        resultado_menor_igual = False
    print(f"{numero1} <= {numero2} é: {resultado_menor_igual}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    # Operador Igual A (==)
    print(f"O operador 'igual a' (==). Ele verifica se o valor à esquerda é igual ao valor à direita.")

    if numero1 == numero2:
        resultado_igual = True
    else:
        resultado_igual = False
    print(f"{numero1} == {numero2} é: {resultado_igual}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    # Operador Diferente De (!=)
    print(f"Finalmente, o operador 'diferente de' (!=). Ele verifica se o valor à esquerda é diferente do valor à direita.")

    if numero1 != numero2:
        resultado_diferente = True
    else:
        resultado_diferente = False
    print(f"{numero1} != {numero2} é: {resultado_diferente}")
    input("Pressione Enter para o próximo conjunto de exemplos...")
    print("-" * 30)

    print("\nAgora com valores iguais:")
    numero3 = 7
    numero4 = 7

    print(f"Testando novamente o operador '>=' com {numero3} e {numero4}.")

    if numero3 > numero4:
        resultado_maior_igual_igual = True
    elif numero3 >= numero4:
        resultado_maior_igual_igual = True
    else:
        resultado_maior_igual_igual = False
    print(f"{numero3} >= {numero4} é: {resultado_maior_igual_igual}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    print(f"Testando novamente o operador '<=' com {numero3} e {numero4}.")

    if numero3 < numero4:
        resultado_menor_igual_igual = True
    elif numero3 <= numero4:
        resultado_menor_igual_igual = True
    else:
        resultado_menor_igual_igual = False
    print(f"{numero3} <= {numero4} é: {resultado_menor_igual_igual}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    print(f"Testando novamente o operador '==' com {numero3} e {numero4}.")

    if numero3 != numero4:
        resultado_igual_igual = False
    elif numero3 == numero4:
        resultado_igual_igual = True
    else:
        resultado_igual_igual = False
    print(f"{numero3} == {numero4} é: {resultado_igual_igual}")
    input("Pressione Enter para o próximo operador...")
    print("-" * 30)

    print(f"Testando novamente o operador '!=' com {numero3} e {numero4}.")

    if numero3 == numero4:
        resultado_diferente_igual = False
    elif numero3 != numero4:
        resultado_diferente_igual = True
    else:
        resultado_diferente_igual = False
    print(f"{numero3} != {numero4} é: {resultado_diferente_igual}")
    input("Pressione Enter para o exemplo com entrada do usuário...")
    print("-" * 30)

    print("\nExemplo com entrada do usuário:")
    try:
        valor1 = float(input("Digite o primeiro valor: "))
        valor2 = float(input("Digite o segundo valor: "))

        print(f"\nComparando {valor1} e {valor2}:")

        print(f"Verificando se {valor1} é maior que {valor2} (>).")
        input("Pressione Enter para ver o resultado...")
        if valor1 <= valor2:
            print(f"{valor1} > {valor2} é: False")
        elif valor1 > valor2:
            print(f"{valor1} > {valor2} é: True")
        else:
            print(f"{valor1} > {valor2} é: Algo inesperado.")
        input("Pressione Enter para o próximo operador...")
        print("-" * 20)

        print(f"Verificando se {valor1} é menor que {valor2} (<).")
        input("Pressione Enter para ver o resultado...")
        if valor1 >= valor2:
            print(f"{valor1} < {valor2} é: False")
        elif valor1 < valor2:
            print(f"{valor1} < {valor2} é: True")
        else:
            print(f"{valor1} < {valor2} é: Algo inesperado.")
        input("Pressione Enter para o próximo operador...")
        print("-" * 20)

        print(f"Verificando se {valor1} é maior ou igual a {valor2} (>=).")
        input("Pressione Enter para ver o resultado...")
        if valor1 < valor2:
            print(f"{valor1} >= {valor2} é: False")
        elif valor1 >= valor2:
            print(f"{valor1} >= {valor2} é: True")
        else:
            print(f"{valor1} >= {valor2} é: Algo inesperado.")
        input("Pressione Enter para o próximo operador...")
        print("-" * 20)

        print(f"Verificando se {valor1} é menor ou igual a {valor2} (<=).")
        input("Pressione Enter para ver o resultado...")
        if valor1 > valor2:
            print(f"{valor1} <= {valor2} é: False")
        elif valor1 <= valor2:
            print(f"{valor1} <= {valor2} é: True")
        else:
            print(f"{valor1} <= {valor2} é: Algo inesperado.")
        input("Pressione Enter para o próximo operador...")
        print("-" * 20)

        print(f"Verificando se {valor1} é igual a {valor2} (==).")
        input("Pressione Enter para ver o resultado...")
        if valor1 != valor2:
            print(f"{valor1} == {valor2} é: False")
        elif valor1 == valor2:
            print(f"{valor1} == {valor2} é: True")
        else:
            print(f"{valor1} == {valor2} é: Algo inesperado.")
        input("Pressione Enter para o próximo operador...")
        print("-" * 20)

        print(f"Verificando se {valor1} é diferente de {valor2} (!=).")
        input("Pressione Enter para ver o resultado...")
        if valor1 == valor2:
            print(f"{valor1} != {valor2} é: False")
        elif valor1 != valor2:
            print(f"{valor1} != {valor2} é: True")
        else:
            print(f"{valor1} != {valor2} é: Algo inesperado.")

    except ValueError:
        print("Entrada inválida. Por favor, digite números.")
def exibir_operadores_logicos():
    print("\n--- Exemplos de  Operadores Lógicos ---")
    nome_usuario = "Bob"
    senha_digitada = "SecurePass"
    email_digitado = "bob.smith@example.org"
    idade_usuario = 16
    nivel_acesso = "leitor"
    usuario_ativo = True
    tem_permissoes_edicao = False
    linguagem_preferida = "Java"

    print(f"Nome: {nome_usuario}, Senha: {senha_digitada}, Email: {email_digitado}, Idade: {idade_usuario}, Nível: {nivel_acesso}, Ativo: {usuario_ativo}, Edição: {tem_permissoes_edicao}, Linguagem: {linguagem_preferida}\n")

    # Validação de login com AND
    print("--- Validação de Login com AND ---")
    nome_correto = "Bob"
    senha_correta = "SecurePass"
    login_sucesso = (nome_usuario == nome_correto) and (senha_digitada == senha_correta)
    if login_sucesso:
        print("Login bem-sucedido!")
    else:
        print("Falha ao fazer login: nome de usuário ou senha incorretos.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Validação de acesso com AND e OR
    print("\n--- Validação de Acesso com AND e OR ---")
    # O usuário pode ter acesso se for admin E estiver ativo, OU se for editor E estiver ativo, OU se for leitor E estiver ativo.
    pode_acessar = (nivel_acesso == "admin" and usuario_ativo) or (nivel_acesso == "editor" and usuario_ativo) or (nivel_acesso == "leitor" and usuario_ativo)

    if pode_acessar:
        print("Acesso concedido.")
        if nivel_acesso == "admin":
            print("Acesso administrativo total.")
        elif nivel_acesso == "editor":
            print("Acesso de edição de conteúdo.")
        else:
            print("Acesso de leitura.")
    else:
        print("Acesso negado ou usuário inativo.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Validação de permissões de edição com AND e NOT
    print("\n--- Validação de Permissões de Edição com AND e NOT ---")
    tem_permissao = usuario_ativo and tem_permissoes_edicao
    if tem_permissao:
        print("Permissões de edição concedidas.")
    else:
        print("Permissões de edição negadas.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Validação de formato de email com AND
    print("\n--- Validação de Formato de Email com AND ---")
    formato_valido = ("@" in email_digitado) and ("." in email_digitado.split("@")[1])
    if formato_valido:
        print("Formato de email parece válido.")
    else:
        print("Formato de email inválido.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)
    
    # Exemplo de NOT com uma variável booleana
    print("\n--- Exemplo de NOT com Variável Booleana ---")
    nao_ativo = not usuario_ativo
    print(f"Usuário ativo: {usuario_ativo}")
    print(f"NOT usuário ativo (não ativo): {nao_ativo}")
    if nao_ativo:
        print("Este bloco será executado se o usuário NÃO estiver ativo.")
    else:
        print("Este bloco será executado se o usuário estiver ativo.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Exemplo de NOT com uma comparação
    print("\n--- Exemplo de NOT com Comparação ---")
    idade_nao_permitida = not (idade_usuario >= 18)
    print(f"Idade do usuário: {idade_usuario}")
    print(f"NOT (idade >= 18): {idade_nao_permitida}")
    if idade_nao_permitida:
        print("O usuário não tem idade suficiente.")
    else:
        print("O usuário tem idade suficiente.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Exemplo de NOT combinado com AND
    print("\n--- Exemplo de NOT combinado com AND ---")
    nao_leitor_ativo = not (nivel_acesso == "leitor" and usuario_ativo)
    print(f"Nível de acesso: {nivel_acesso}, Usuário ativo: {usuario_ativo}")
    print(f"NOT (nível == 'leitor' AND ativo): {nao_leitor_ativo}")
    if nao_leitor_ativo:
        print("O usuário não é um leitor ativo.")
    else:
        print("O usuário é um leitor ativo.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Exemplo de NOT combinado com OR
    print("\n--- Exemplo de NOT combinado com OR ---")
    nao_python_ou_java = not (linguagem_preferida == "Python" or linguagem_preferida == "Java")
    print(f"Linguagem preferida: {linguagem_preferida}")
    print(f"NOT (linguagem == 'Python' OR linguagem == 'Java'): {nao_python_ou_java}")
    if nao_python_ou_java:
        print("A linguagem preferida não é Python nem Java.")
    else:
        print("A linguagem preferida é Python ou Java.")

    # Validação de linguagem preferida com OR (ênfase)
    print("\n--- Validação de Linguagem Preferida com OR (Ênfase) ---")
    # Verifica se a linguagem preferida é Python OU JavaScript OU Java
    eh_preferencial = (linguagem_preferida == "Python") or (linguagem_preferida == "JavaScript") or (linguagem_preferida == "Java")
    if eh_preferencial:
        print(f"{linguagem_preferida} ('{linguagem_preferida}') é considerada uma linguagem preferencial.")
    else:
        print(f"{linguagem_preferida} ('{linguagem_preferida}') não está na lista de linguagens preferenciais (Python, JavaScript, Java).")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Validação de idade para funcionalidades específicas com AND e OR
    print("\n--- Validação de Idade para Funcionalidades Específicas (com OR) ---")
    # Acesso total se for maior ou igual a 18 OU se o nível de acesso for "admin" (exemplo ilustrativo)
    acesso_total = (idade_usuario >= 18) or (nivel_acesso == "admin")
    acesso_basico = (idade_usuario >= 16) and not acesso_total

    if acesso_total:
        print("Acesso total às funcionalidades.")
    elif acesso_basico:
        print("Acesso a funcionalidades básicas.")
    else:
        print("Acesso limitado.")
    input("Pressione Enter para o próximo exemplo...")
    print("-" * 30)

    # Validação combinada com NOT, AND e OR
    print("\n--- Validação Combinada com NOT, AND e OR ---")
    if not usuario_ativo:
        print("Usuário está inativo. Acesso negado.")
    elif (nivel_acesso == "admin" and usuario_ativo) or (tem_permissoes_edicao and usuario_ativo):
        print("Usuário ativo com privilégios de administrador OU permissões de edição.")
    else:
        print("Usuário ativo com acesso padrão.")
    input("\nPressione Enter para voltar ao menu...")
while True:
    print("\n--- Menu de Seleção ---")
    print("Escolha o que você quer ver:")
    print("1 - Tipos Primitivos (inferidos)")
    print("2 - Tipos Primitivos e Suas Anotações")
    print("3 - Exemplo 'Olá Mundo'")
    print("4 - Exemplo de Entrada e Saída")
    print("5 - Exemplo de Entrada de Letra")
    print("6 - Exemplo de Entrada de Idade")
    print("7 - Exemplo de Operações Matemáticas")
    print("8 - Exemplo de Tabela Simples")
    print("9 - Exemplo de Tamanho de String")
    print("10 - Exemplos de Conversões de String")
    print("11 - Exemplo de Substituição em String")
    print("12 - Exemplos de Formatação com f-strings")
    print("13 - Exemplos de Formatação com .format()")
    print("14 - Exemplos de Formatação com operador %")
    print("15 - Exemplos de Data e Hora")
    print("16 - Exemplos de Funções Embutidas")
    print("17 - Formatação Detalhada de Inteiros")
    print("18 - Formatação Detalhada de Flutuante")
    print("19 - Formatação Detalhada de Texto")
    print("20 - Exemplos de Operadores de Comparação")
    print("21 - Exemplos de Operadores Lógicos")

    print("0 - Sair")

    opcao = input("Digite o número da sua escolha: ")

    if opcao == '1':
        exibir_tipos_primitivos()
    elif opcao == '2':
        exibir_tipos_anotados()
    elif opcao == '3':
        exibir_ola_mundo()
    elif opcao == '4':
        exibir_entrada_saida()
    elif opcao == '5':
        letra = exibir_entrada_letra() 
    elif opcao == '6':
        idadep = exibir_entrada_idade() 
    elif opcao == '7':
        exibir_operacoes_matematicas()
    elif opcao == '8':
        exibir_tabela()
    elif opcao == '9':
        exibir_tamanho_string()
    elif opcao == '10':
        exibir_conversoes_string()
    elif opcao == '11':
        exibir_replace_string(letra) 
    elif opcao == '12':
        exibir_fstrings()
    elif opcao == '13':
        exibir_format_method()
    elif opcao == '14':
        exibir_operador_porcentagem()
    elif opcao == '15':
        exibir_datas_horas()
    elif opcao == '16':
        exibir_funcoes_embutidas()
    elif opcao == '17':
        exibir_formatacao_inteiros()
    elif opcao == '18':
        exibir_formatacao_flutuantes()
    elif opcao == '19':
        exibir_formatacao_texto()
    elif opcao=='20':
        exibir_operadores_comparacao()
    elif opcao=='21':
        exibir_operadores_logicos()
    elif opcao == '0':
        print("Saindo do programa.")
        break
    else:
        print("Opção inválida. Por favor, digite um número válido do menu.")