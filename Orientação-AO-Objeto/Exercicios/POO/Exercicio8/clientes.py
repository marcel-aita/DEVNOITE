# Exercício 8 
# Desenvolva um pacote com dois módulos: um para produtos e outro para clientes.
# Crie métodos para atualizar estoque e simular a compra de produtos.

class Cliente:
    def __init__(self, nome, saldo):
        self.nome = nome
        self.saldo = saldo