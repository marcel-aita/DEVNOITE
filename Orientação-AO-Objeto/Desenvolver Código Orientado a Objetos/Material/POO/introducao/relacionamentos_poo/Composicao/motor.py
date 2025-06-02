class Motor:
    def configurar_motor(self, tipo_motor):
        self.tipo = tipo_motor
        self.status_ligado = False

    def ligar_motor(self):
        self.status_ligado = True
        return f"Motor {self.tipo} ligou."

    def desligar_motor(self):
        self.status_ligado = False
        return f"Motor {self.tipo} desligou."

    def mostrar_tipo_motor(self):
        return f"Motor: {self.tipo}"

    def esta_ligado(self):
        return self.status_ligado