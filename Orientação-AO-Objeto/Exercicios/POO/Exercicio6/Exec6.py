from .livro import Livro
from .bibliotecario import Bibliotecario

def exec6():
    nome_biblio = input("Digite o nome do bibliotecario:")
    bibliotecario = Bibliotecario(nome_biblio)
    
    for i in range(2):
        titulo = input(f"Digite o título do livro {i+1}: ")
        autor = input(f"Digite o autor do livro {i+1}: ")
        livro = Livro(titulo, autor)
        bibliotecario.adicionar_livro(livro)

    print(f"\nO bibliotecário '{bibliotecario.nome}' está agregando o livro '{livro.titulo}'.")
    bibliotecario.exibir_livros()

    emprestar = input("\nDeseja emprestar algum livro? (s/n): ").strip().lower()
    if emprestar == 's':
        titulo_emprestimo = input("Digite o título do livro que deseja emprestar: ")
        bibliotecario.emprestar_livro(titulo_emprestimo)

    bibliotecario.exibir_livros()
    input("Pressione Enter para voltar ao menu...")