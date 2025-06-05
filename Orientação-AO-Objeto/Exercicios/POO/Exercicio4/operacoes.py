from .conta import Conta

class Operacoes:
    def __init__(self, titular: str, saldo: float):
        self.conta = Conta(titular, saldo)
        self.titular = titular
        self.saldo = saldo
    
def exec4(self):
        print(f"Titular: {self.titular}")
        print(f"Saldo: R${self.saldo:.2f}")
        self.consultar_saldo
        self.depositar
        self.sacar
        self.consultar_saldo
        self.sacar(self.saldo)
