from .conta import Conta

   
def exec4():
    print("\n--- Bem Vindo ---")
    titular = input("Digite o nome do titular da conta: ")
    saldo:float = 0.0
   

    conta = Conta(titular, saldo)

    while True:
        print("\n--- Menu da Conta ---")
        print("1 - Consultar saldo")
        print("2 - Depositar")
        print("3 - Sacar")
        print("0 - Sair")
        opcao = input("Escolha uma opção: ")

        if opcao == "1":
            print(conta.consultar_saldo())
        elif opcao == "2":
            valor = float(input("Valor para depósito: "))
            conta.depositar(valor)
        elif opcao == "3":
            valor = float(input("Valor para saque: "))
            conta.sacar(valor)
        elif opcao == "0":
            print("Saindo da conta bancária...")
            break
        else:
            print("Opção inválida.")