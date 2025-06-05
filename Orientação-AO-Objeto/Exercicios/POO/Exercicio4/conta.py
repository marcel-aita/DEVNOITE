# Crie um pacote com dois módulos.
# Implemente uma classe que represente uma conta bancária com saldo e titular.
# Implemente métodos para realizar operações financeiras.

class Conta:
    def __init__(self, titular, saldo:float):
        self.titular = titular
        self.saldo = saldo
        conta = Conta(titular, saldo) 

    def depositar (self, valor:float):
        if valor > 0:
            self.saldo += valor
            print(f"Depósito de R${valor:.2f} realizado com sucesso.")
        else:
            print("Valor de depósito inválido.")

    def sacar(self, valor:float):
        if valor > 0 and valor <= self.saldo:
            self.saldo -= valor
            print(f"Saque de R${valor:.2f} realizado com sucesso.")
        else:
            print("Valor de saque inválido ou saldo insuficiente.")
    
    def consultar_saldo(self):
        print(f"Saldo atual: R${self.saldo:.2f}")

   