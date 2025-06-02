# Crie uma classe que represente um carro com três atributos.
# Implemente dois métodos para atualizar dois desses atributos.

class Carro:
    def __init__(self, cor, modelo, placa):
        self.cor = cor
        self.modelo = modelo
        self.placa = placa
    
    def atualizar_cor(self, nova_cor):
        self.cor = nova_cor

    def atualizar_modelo(self, novo_modelo):
        self.modelo = novo_modelo
    def atualizar_placa(self, nova_placa):
        self.placa = nova_placa
    
    def __str__(self):
        return f'Carro({self.cor}, {self.modelo}, {self.placa})'
    
def exec3():
    cor = input("Digite a cor do carro: ")
    modelo = input("Digite o modelo do carro: ")
    placa = input("Digite a placa do carro: ")
    carro = Carro(cor, modelo, placa)

    print(f"\n ---Carro atual--- : {carro}")    
    
    nova_cor = input("Digite a nova cor do carro: ")
    carro.atualizar_cor(nova_cor)
    novo_modelo = input("Digite o novo modelo do carro: ")
    carro.atualizar_modelo(novo_modelo)
    nova_placa = input("Digite a nova placa do carro: ")
    carro.atualizar_placa(nova_placa)

    print(f"\n ---Carro atualizado--- : {carro}")
        
    if __name__ == "__main__":
       exec3()