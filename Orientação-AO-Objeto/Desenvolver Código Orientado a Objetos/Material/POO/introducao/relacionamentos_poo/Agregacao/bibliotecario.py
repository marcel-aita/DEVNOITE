class Bibliotecario:
    def __init__(self, nome):
        self.nome = nome
        self.livros = []  
        
    def adicionar_livro(self, livro):
        self.livros.append(livro)
        print(f"Livro '{livro.titulo}' adicionado à biblioteca de {self.nome}.")

    def exibir_livros(self):
        print(f"\nLivros sob responsabilidade do bibliotecário {self.nome}:")
        if not self.livros:
            print("Nenhum livro registrado.")
        else:
            for livro in self.livros:
                print(f"- {livro.exibir_info()}")

    def emprestar_livro(self, titulo):
        for livro in self.livros:
            if livro.titulo.lower() == titulo.lower():
                if livro.registrar_emprestimo():
                    print(f" {self.nome} emprestou o livro '{livro.titulo}'.")
                else:
                    print(f"O livro '{livro.titulo}' já está emprestado.")
                return
        print(f"Livro '{titulo}' não encontrado na biblioteca.")