from .carro import Carro

def demonstrar_composicao(): 
    print("Composição é um relacionamento aonde um objeto possui outro objeto,")
    print("e a existência do objeto parte depende do objeto todo.")
    print("Aqui, o carro contém um motor exclusivo — se o carro for destruído,")
    print("seu motor também deixa de existir automaticamente.\n") 
    meu_carro_novo = Carro()
    meu_carro_novo.configurar_carro("Honda", "Civic", "2.0 VTEC")

    print(f"\nEstado inicial do carro:")
    print(meu_carro_novo.exibir_status_carro())

    
    print("\n--- Ligando o Carro ---")
    print(meu_carro_novo.ligar_o_carro())
    print(meu_carro_novo.exibir_status_carro())

    print("\n--- Desligando o Carro ---")
    print(meu_carro_novo.desligar_o_carro())
    print(meu_carro_novo.exibir_status_carro())

   
    print("\n O carro contém um motor interno exclusivo.")
    print("Se o objeto 'meu_carro_novo' for removido, seu motor interno também será destruído automaticamente.\n")
    del meu_carro_novo
    print(">>> O objeto 'meu_carro_novo' foi removido da memória. <<<")
    input("Pressione Enter para voltar ao menu...")
    
