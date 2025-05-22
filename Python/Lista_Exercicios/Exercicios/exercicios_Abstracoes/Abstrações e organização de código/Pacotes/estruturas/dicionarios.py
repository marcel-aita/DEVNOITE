def dados_alunos(quantidade):
    alunos = []

    for i in range(quantidade):
        print(f"\n--- Cadastro do aluno {i + 1} ---")
        nome = input("Nome: ").strip()
        idade = int(input("Idade: "))
        curso = input("Curso: ").strip()

        aluno = {
            "nome": nome,
            "idade": idade,
            "curso": curso
        }

        alunos.append(aluno)

   

    return alunos