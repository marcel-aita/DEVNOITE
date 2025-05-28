from .motor import Motor

class Carro:
    def configurar_carro(self, marca_carro, modelo_carro, tipo_motor_carro):
        self.marca = marca_carro
        self.modelo = modelo_carro
      
        self.motor_do_carro = Motor()
        self.motor_do_carro.configurar_motor(tipo_motor_carro)

    def ligar_o_carro(self):
        mensagem_motor = self.motor_do_carro.ligar_motor()
        return f"O {self.marca} {self.modelo} está iniciando... {mensagem_motor}"

    def desligar_o_carro(self):
        mensagem_motor = self.motor_do_carro.desligar_motor()
        return f"O {self.marca} {self.modelo} está parando... {mensagem_motor}"

    def exibir_status_carro(self):
        status = f"Carro: {self.marca} {self.modelo}\n"
        status += f"Motor: {self.motor_do_carro.mostrar_tipo_motor().split(': ')[1]} (Status: {'Ligado' if self.motor_do_carro.esta_ligado() else 'Desligado'})"
        return status