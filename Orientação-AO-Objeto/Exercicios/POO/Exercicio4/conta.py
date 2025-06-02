# Crie um pacote com dois módulos.
# Implemente uma classe que represente uma conta bancária com saldo e titular.
# Implemente métodos para realizar operações financeiras.

class Conta:
    def __init__(self, titular, conta, agencia, senha):
        self.titular = titular
        self.conta = conta
        self.agencia = agencia
        self.senha = senha       

    def apresentacao(self):
        print(f"Titular: {self.titular}, Conta: {self.conta}, Agência: {self.agencia}, Senha: {self.senha}")


def exec4():
    conta = Conta(
        input("Digite o nome do titular: "),
        input("Digite o número da conta: "),
        input("Digite o número da agência: "),
        input("Digite a senha: ")
    )
    conta.apresentacao()
if __name__ == "__main__":
    exec4()