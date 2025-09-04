
import java.util.ArrayList;

/**
 * Classe que representa uma turma.
 * Contém uma lista de alunos.
 */
public class Turma {

    private String nomeTurma;
    private ArrayList<Aluno> alunos;

    // Construtor
    public Turma(String nomeTurma) {
        this.nomeTurma = nomeTurma;
        this.alunos = new ArrayList<>();
    }

    // Método para adicionar um aluno à turma
    public void adicionarAluno(Aluno aluno) {
        this.alunos.add(aluno);
    }

    public String getNomeTurma() {
        return nomeTurma;
    }

    public ArrayList<Aluno> getAlunos() {
        return alunos;
    }
}
