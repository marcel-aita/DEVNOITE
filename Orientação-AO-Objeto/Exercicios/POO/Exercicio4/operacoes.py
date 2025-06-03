from conta import Conta
from conta import exec4

class operacoes:
       
    def __init__(self, nome):
        self.nome = nome
        self.saldo = 0.0
        self.valor = 0.0
        
    def depositar(self, valor):
        while True:
            print("1 - Depósito")
            print("2 - Saque")

            print(" 0 - Sair")

            opcao = input("Escolha uma opção: ")
            
            if opcao == "1":
                valor = float(input("Digite o valor do depósito: "))
                self.saldo += valor
                print(f"Depósito realizado com sucesso! Saldo atual: R$ {self.saldo:.2f}")
            elif opcao == "2":
                valor = float(input("Digite o valor do saque: "))
                if valor > self.saldo:
                    print("Saldo insuficiente para saque.")
                else:
                    self.saldo -= valor
                    print(f"Saque realizado com sucesso! Saldo atual: R$ {self.saldo:.2f}")
            elif opcao == "0":
                print("Saindo do menu de operações.")

    if __name__ == "__main__":
        exec4()
        operacoes = operacoes("Titular Exemplo")
        operacoes.depositar(0.0)

        