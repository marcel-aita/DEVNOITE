class Livro:
    def __init__(self, titulo, autor):
        self.titulo = titulo
        self.autor = autor
        self.emprestado = False

    def exibir_info(self):
        status = "Emprestado" if self.emprestado else "Disponível"
        return f"'{self.titulo}' por {self.autor} - Status: {status}"

    def registrar_emprestimo(self):
        if self.emprestado:
            return False
        else:
            self.emprestado = True
            return True