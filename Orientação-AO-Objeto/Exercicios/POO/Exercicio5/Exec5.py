from .estudante import Estudante 
from .curso import Curso

def exec5():
    nome_curso = input("Digite o nome do curso: ")
    curso = Curso(nome_curso)

    qtd_estudantes = int(input("Quantos estudantes deseja cadastrar? "))

    for _ in range(qtd_estudantes):
        nome = input("Nome do estudante: ")
        idade = int(input("Idade do estudante: "))
        estudante = Estudante(nome, idade)

        qtd_notas = int(input(f"Quantas notas deseja adicionar para {nome}? "))
        for i in range(qtd_notas):
            nota = float(input(f"Digite a nota {i+1}: "))
            estudante.adicionar_nota(nota)
        print(f"\n {estudante.nome} ' , ' {curso.nome}'.")
        curso.cadastrar_estudante(estudante)

    print("\nEstudantes cadastrados no curso:")
    curso.listar_estudantes()
    input("Pressione Enter para voltar ao menu...")

