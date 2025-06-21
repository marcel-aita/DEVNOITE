# Exercício 8 
# Desenvolva um pacote com dois módulos: um para produtos e outro para clientes.
# Crie métodos para atualizar estoque e simular a compra de produtos.

# Estrutura do pacote:
# Exercicio8/
# ├── __init__.py
# ├── produtos.py
# └── clientes.py
# Exercicio8/produtos.py
class Produto:
    def __init__(self, nome, preco:float, quantidade:int = 0):
        self.quantidade = quantidade
        self.nome = nome
        self.preco = preco
        self.produtos = []    
    
    def exibir_produtos(self):
        for produto in self.produtos:
            print(f"Produto: {produto.nome}, Preço: R$: {produto.preco:.2f}, Quantidade: {produto.quantidade}")

    def adicionar_produto(self, produto):
        self.produtos.append(produto)

    def atualizar_estoque(self, nome, quantidade, preco):
        for produto in self.produtos:
            if produto.nome == nome:
                produto.quantidade += quantidade
                produto.preco = preco
                print(f"Estoque atualizado: {produto.nome}, Quantidade: {produto.quantidade}, Preço: R$: {produto.preco:.2f}")
                return
        print("Produto não encontrado no estoque.")

    def simular_compra(self, nome, quantidade):
        for produto in self.produtos:
            

    
    
        
    

