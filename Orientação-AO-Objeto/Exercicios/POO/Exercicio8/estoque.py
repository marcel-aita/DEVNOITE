# Exercício 8 
# Desenvolva um pacote com dois módulos: um para produtos e outro para clientes.
# Crie métodos para atualizar estoque e simular a compra de produtos.
from .produtos import Produto
from .clientes import Cliente

class Estoque:
    def __init__(self):
        self.produtos = []
        self.clientes = []

    def adicionar_produto(self, produto):
        self.produtos.append(produto)
            
    def adicionar_cliente(self, cliente):
        self.cliente.append(cliente)

    def exibir_produtos(self):
        for produto in self.produtos:
            produto.exibir_info()

    def exibir_clientes(self):
        for cliente in self.clientes:
            print(cliente.exibir_info())

    def atualizar_estoque(self, produto, quantidade, preco):
        for p in self.produtos:
            if p.nome == produto.nome:
                p.quantidade += quantidade
                p.preco = preco
                print(f"Estoque atualizado: {p.nome}, Quantidade: {p.quantidade}, Preço: R$: {p.preco:.2f}")
                return
        print("Produto não encontrado no estoque.")
            
pass

    

        