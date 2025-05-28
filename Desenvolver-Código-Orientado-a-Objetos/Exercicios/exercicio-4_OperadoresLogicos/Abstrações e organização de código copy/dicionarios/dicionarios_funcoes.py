from collections import Counter
pessoa = {"nome": "Ana", "idade": 25, "cidade": "São Paulo"}

def dicionario_acessando_valor_chave():
    print("\nAcessando valores com a chave Nome:")
    print(f"Nome: {pessoa['nome']}")
    input("\nPressione Enter para voltar ao menu...")

def dicionario_Usando_get_evitar_erro():
    print("\nUsando get(): retorna o valor da chave ou None se não existir")
    print(f"Telefone (não existe): {pessoa.get('telefone')}")
    print(f"Cidade: {pessoa.get('cidade')}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_listando_chaves():
    print("\nUsando keys(): retorna todas as chaves do dicionário")
    print(f"Chaves: {list(pessoa.keys())}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_listando_valores():    
    print("\nUsando values(): retorna todos os valores")
    print(f"Valores: {list(pessoa.values())}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_listando_chave_valor():    
    print("\nUsando items(): retorna pares chave-valor")
    for chave, valor in pessoa.items():
        print(f"{chave} => {valor}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_Atualizando_valores_update():   
    print("\nUsando update(): atualiza ou adiciona valores")
    pessoa.update({"idade": 26, "telefone": "1234-5678"})
    print(f"Dicionário após update(): {pessoa}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_removendo_pop():
    print("\nUsando pop(): remove o item pela chave")
    idade_removida = pessoa.pop("idade")
    print(f"Idade removida: {idade_removida}")
    print(f"Dicionário após pop(): {pessoa}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_removendo_del():
    print("\nUsando del para remover uma chave específica:")
    del pessoa["telefone"]
    print(f"Dicionário após del telefone: {pessoa}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_verifica_existencia_chave():
    print("\nVerificando se 'nome' está no dicionário:")
    if 'nome' in pessoa:
        print("Chave 'nome' encontrada!")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_copia():
    print("\nUsando copy() para duplicar um dicionário:")
    pessoa_copia = pessoa.copy()
    print(f"Cópia do dicionário: {pessoa_copia}")
    input("\nPressione Enter para voltar ao menu...")

    
def dicionario_valor_padrao():
    print("\nUsando setdefault():")
    print(f"Endereço (não existe): {pessoa.setdefault('endereco', 'Não informado')}")
    print(f"Dicionário após setdefault(): {pessoa}")

    ana = {"nome": "Ana", "idade": 25, "endereco": "Rua das Flores"}
    joao = {"nome": "João", "idade": 30}  

    cadastros = [ana, joao]

    for pessoa in cadastros:
        pessoa.setdefault("endereco", "Não informado")
    
    for pessoa in cadastros:
        print(pessoa)
        
    nome = input("Nome: ")
    idade = input("Idade: ")
    endereco = input("Endereço (pressione Enter se não quiser informar): ")

    pessoa = {
        "nome": nome,
        "idade": idade
    }

    if endereco:
        pessoa["endereco"] = endereco
    else:
        pessoa.setdefault("endereco", "Não informado")

    print(pessoa)
    input("\nPressione Enter para voltar ao menu...")

   
def dicionario_fromkeys():
    print("\nUsando fromkeys():")
    print("Você poderá escolher quantos e quais campos deseja adicionar ao dicionário.")
    print("Todos os campos terão como valor padrão 'Não informado'.")

    
    quantidade = int(input("Quantos campos terá o seu dicionário? "))

   
    campos = []
    for i in range(quantidade):
        nome_campo = input(f"Digite o nome do campo #{i+1}: ")
        campos.append(nome_campo)

   
    pessoa = dict.fromkeys(campos, "Não informado")
    print(f"\nDicionário criado com fromkeys(): {pessoa}")

    
    print("\nPreenchendo os campos (pressione Enter para manter 'Não informado'):")
    for campo in campos:
        valor = input(f"Digite o(a) {campo}: ")
        if valor:
            pessoa[campo] = valor

    print(f"\nDicionário final após preenchimento: {pessoa}")
    input("\nPressione Enter para voltar ao menu...")



def dicionario_popitem():  
    print("\nUsando popitem():")
    print("Vamos criar um dicionário com dados inseridos pelo usuário.")
    print("Depois, usaremos popitem() para remover o último item adicionado.")

    
    quantidade = int(input("Quantos pares chave-valor você quer adicionar ao dicionário? "))

    
    dicionario = {}
    for i in range(quantidade):
        chave = input(f"Digite a chave #{i+1}: ")
        valor = input(f"Digite o valor para '{chave}': ")
        dicionario[chave] = valor

    
    print(f"\nDicionário criado: {dicionario}")

   
    removido = dicionario.popitem()
    print(f"\nItem removido com popitem(): {removido}")
    print(f"Dicionário após popitem(): {dicionario}")
    input("\nPressione Enter para voltar ao menu...")




def dicionario_dict():
    print("\nUsando dict():")
    print("Vamos criar um dicionário usando a função dict() com uma lista de tuplas.")
    print("Cada tupla representa um par (chave, valor).")

   
    quantidade = int(input("Quantos pares chave-valor você quer adicionar? "))

    
    pares = []
    for i in range(quantidade):
        chave = input(f"Digite a chave #{i+1}: ")
        valor = input(f"Digite o valor para '{chave}': ")
        pares.append((chave, valor)) 

   
    dicionario = dict(pares)

    
    print(f"\nDicionário criado com dict(): {dicionario}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_counter():
    print("\nUsando Counter:")
    print("Vamos contar quantas vezes cada valor aparece em uma lista ou dicionário.")

    
    tipo = input("Deseja contar elementos de uma (l)ista ou de um (d)icionário? ").lower()

   
    if tipo == 'l':
        itens = input("Digite os elementos da lista separados por vírgula (ex: maçã,banana,maçã): ")
        lista = [item.strip() for item in itens.split(',')]
        contagem = Counter(lista)
        print(f"\nContagem de elementos com Counter: {contagem}")

    
    elif tipo == 'd':
        quantidade = int(input("Quantos pares chave-valor deseja inserir no dicionário? "))
        dicionario = {}
        for i in range(quantidade):
            chave = input(f"Digite a chave #{i+1}: ")
            valor = input(f"Digite o valor para '{chave}': ")
            dicionario[chave] = valor
        contagem = Counter(dicionario.values())
        print(f"\nDicionário criado: {dicionario}")
        print(f"Contagem de valores com Counter: {contagem}")

    else:
        print("Opção inválida. Digite 'l' para lista ou 'd' para dicionário.")
    input("\nPressione Enter para voltar ao menu...")

    
def dicionario_counter_most_common():
    print("\nUsando Counter().most_common():")
    print("Vamos contar os elementos de uma lista e mostrar os mais comuns!")

   
    itens = input("Digite os elementos separados por vírgula (ex: azul,azul,verde): ")
    lista = [item.strip() for item in itens.split(",")]

    
    contagem = Counter(lista)
    print(f"\nContagem completa: {contagem}")

   
    quantidade = input("Quantos elementos mais comuns deseja exibir? (pressione Enter para exibir todos): ")

    
    if quantidade.strip() == "":
        mais_comuns = contagem.most_common() 
    else:
        mais_comuns = contagem.most_common(int(quantidade))

    print(f"\nElementos mais comuns: {mais_comuns}")
    input("\nPressione Enter para voltar ao menu...")





def dicionario_interando_chaves_valores():
    print("\nIterando pelas chaves:")
    pessoa_copia = pessoa.copy()
    for chave in pessoa_copia.keys():
        print(f"Chave: {chave}")

    print("\nIterando pelos valores:")
    for valor in pessoa_copia.values():
        print(f"Valor: {valor}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_lista_dict():
    print("\nDicionários também podem conter listas e outros dicionários:")
    complexo = {
        "nome": "Carlos",
        "idade": 30,
        "filhos": ["João", "Lucas"],
        "endereco": {"rua": "Av. Central", "numero": 100}
    }
    print(f"Exemplo de dicionário complexo: {complexo}")
    input("\nPressione Enter para voltar ao menu...")


def dicionario_clear():
    print("\nUsando clear(): remove todos os itens")
    pessoa.clear()
    print(f"Dicionário após clear(): {pessoa}")
    input("\nPressione Enter para voltar ao menu...")


    
def dicionario_interativo():
    print("\n--- Criando seu próprio dicionário ---")
    cadastro = {}
    campos = ["nome", "idade", "cidade"]

    for campo in campos:
        valor = input(f"Digite o(a) {campo}: ")
        cadastro[campo] = valor

    print(f"\nCadastro criado: {cadastro}")
    input("\nPressione Enter para voltar ao menu...")

