from conta import Conta
from operacoes import operacoes
from operacoes import exec4
from global_imports import *
def exec4():
    conta = Conta(
        input("Digite o nome do titular: "),
        input("Digite o número da conta: "),
        input("Digite o número da agência: "),
        input("Digite a senha: ")
    )
    conta.apresentacao()
    
    operacao = operacoes(conta.titular)
    operacao.depositar(0.0)  # Inicializa com 0.0 para evitar erro de saldo inicial
if __name__ == "__main__":
    exec4()
