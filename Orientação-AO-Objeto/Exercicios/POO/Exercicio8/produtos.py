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
    def __init__(self, nome, preco, quantidade):
        self.nome = nome
        self.preco = preco
        self.quantidade = quantidade

    def atualizar_estoque(self, quantidade):
        self.quantidade += quantidade

    def __str__(self):
        return f"{self.nome} - R${self.preco:.2f} - Estoque: {self.quantidade}"
    
    