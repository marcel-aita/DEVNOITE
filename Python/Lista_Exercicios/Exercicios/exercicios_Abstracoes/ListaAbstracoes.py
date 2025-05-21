# 1. DICIONÁRIOS

## 1.1 Criação e manipulação de dicionários
# Crie um dicionário chamado produto com os campos: nome, preco, quantidade.
# Adicione valores e atualize o preço. Imprima antes e depois da atualização.

## 1.2 Acessando valores de dicionários
# Crie um dicionário usuario com as chaves nome, idade, email.
# Imprima o nome usando a chave. Use get para acessar um campo inexistente.

## 1.3 Utilizando fromkeys() para inicializar um dicionário
# Crie um dicionário com fromkeys(), chaves: nomes de produtos, valor padrão: 'não disponível'.
# Permita ao usuário alterar a disponibilidade de alguns produtos.

## 1.4 Usando setdefault() para garantir consistência
# Crie um dicionário clientes. Adicione um campo endereco se não existir usando setdefault().

## 1.5 Iterando por um dicionário complexo
# Crie um dicionário com lista e outro dicionário dentro (ex: pessoa com contatos).
# Itere sobre as chaves e valores.

## 1.6 Contagem de ocorrências com Counter
# Crie uma lista de palavras repetidas e use Counter para contar ocorrências.
# Exiba as palavras mais comuns.

def exe1():
    # 1.1 Criação e manipulação de dicionários
    produto = {
        'nome': 'Produto A',
        'preco': 10.0,
        'quantidade': 5
    }
    print("Antes da atualização:", produto)
    produto['preco'] = 12.0
    print("Depois da atualização:", produto)

    # 1.2 Acessando valores de dicionários
    usuario = {
        'nome': 'João',
        'idade': 30,
        'email': 'joao.toy@hotmail.com'
    }
    print("Nome do usuário:", usuario['nome'])
    print("Campo inexistente:", usuario.get('telefone', 'Campo não encontrado'))
    # 1.3 Utilizando fromkeys() para inicializar um dicionário
    produtos = ['Produto A', 'Produto B', 'Produto C']
    disponibilidade = dict.fromkeys(produtos, 'não disponível')
    print("Dicionário de produtos:", disponibilidade)
    disponibilidade['Produto A'] = 'disponível'
    print("Atualização de disponibilidade:", disponibilidade)
    # 1.4 Usando setdefault() para garantir consistência
    clientes = {}
    clientes.setdefault('endereco', 'Rua A, 123')
    print("Dicionário de clientes:", clientes)
    # 1.5 Iterando por um dicionário complexo
    pessoa = {
        'nome': 'Maria',
        'contatos': {
            'telefone': '123456789',
            'email': 'maria@email.com'
        }
    }
    for chave, valor in pessoa.items():
        print(f"{chave}: {valor}")
    # 1.6 Contagem de ocorrências com Counter
    from collections import Counter
    palavras = ['maçã', 'banana', 'maçã', 'laranja', 'banana', 'maçã']
    contagem = Counter(palavras)
    print("Contagem de palavras:", contagem)
    

# 2. FUNÇÕES

## 2.1 Funções com parâmetros e retorno
# Crie uma função saudacao(nome) que retorna uma mensagem de boas-vindas.

## 2.2 Função para calcular área e perímetro de um triângulo
# Crie calcular_area_perimetro_triangulo(base, altura) que retorna área e perímetro.

## 2.3 Funções com valores padrão
# Crie multiplicar(a, b=5) que retorna o produto.

## 2.4 Função lambda para operação matemática
# Crie uma lambda que recebe dois números e retorna o maior.

## 2.5 Funções aninhadas
# Crie calculadora() com funções internas para soma, subtração, multiplicação e divisão.

def exe2():
    # 2.1 Funções com parâmetros e retorno
    def saudacao(nome):
        return f"Bem-vindo(a), {nome}!"

    print(saudacao("João"))

    # 2.2 Função para calcular área e perímetro de um triângulo
    def calcular_area_perimetro_triangulo(base, altura):
        area = (base * altura) / 2
        perimetro = base + altura + (base**2 + altura**2)**0.5
        return area, perimetro

    area, perimetro = calcular_area_perimetro_triangulo(5, 10)
    print(f"Área: {area}, Perímetro: {perimetro}")

    # 2.3 Funções com valores padrão
    def multiplicar(a, b=5):
        return a * b

    print(multiplicar(3))

    # 2.4 Função lambda para operação matemática
    maior = lambda x, y: x if x > y else y
    print(maior(10, 20))

    # 2.5 Funções aninhadas
    def calculadora():
        def soma(x, y):
            return x + y

        def subtracao(x, y):
            return x - y

        def multiplicacao(x, y):
            return x * y

        def divisao(x, y):
            return x / y

        return soma, subtracao, multiplicacao, divisao

    soma_func, sub_func, mult_func, div_func = calculadora()
    print(soma_func(10, 5))
    print(sub_func(10, 5))
    print(mult_func(10, 5))
    print(div_func(10, 5))
    

# 3. MÓDULOS E PACOTES


## 3.1 Importando e utilizando módulos
# Crie operacoes.py com soma(a, b) e diferenca(a, b).
# Crie main.py que importa e usa essas funções.

## 3.2 Organizando um pacote Python
# Crie pacote matematica com area.py e perimetro.py.
# Cada módulo calcula área e perímetro de quadrado e círculo.
# No principal, importe e calcule para círculo (raio 5) e quadrado (lado 4).

## 3.3 Criando um pacote para utilitários de strings
# Crie pacote utils_strings com formata.py (formatar texto) e conta.py (contar caracteres).
# Importe e use no principal para formatar e contar caracteres de uma string.

## 3.4 Utilizando __init__.py em pacotes
# Crie pacote geometria com area.py e perimetro.py.
# Em __init__.py, importe funções de área e perímetro e use no script principal.

# 4. EXTRAS

## 4.1 Desafio: Mini sistema de cadastro de clientes
# Crie sistema de cadastro usando dicionários: nome, idade, endereço, telefone.
# Imprima lista com todos os cadastros.

## 4.2 Desafio: Calculadora com funções e módulos
# Crie calculadora.py com soma, subtração, multiplicação e divisão.
# No script principal, importe e crie interface simples para o usuário escolher operação.