from conta import Conta

class operacoes:
       
    def __init__(self, nome):
        self.nome = nome
        self.saldo = 0.0
        
    def depositar(self, valor):
        