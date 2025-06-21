# Exercício 8 
# Desenvolva um pacote com dois módulos: um para produtos e outro para clientes.
# Crie métodos para atualizar estoque e simular a compra de produtos.

class Cliente:
    def __init__(self, nome, saldo):
        self.nome = nome
        self.saldo = saldo
        self.clientes = []

    def exibir_clientes(self):
        for cliente in self.clientes:
            print(f"Cliente: {cliente.nome}, Saldo: R$: {cliente.saldo:.2f}")
    
    def adicionar_clientes(self, cliente):
        self.clientes.append(cliente)

    

    