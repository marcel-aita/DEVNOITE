import javax.swing.JOptionPane;
import java.util.ArrayList;
import poo.gestao.Aluno;
import poo.gestao.Turma;
import poo.gestao.Notas;
import poo.calculos.Calculo;
import poo.calculos.Bhaskara;
import poo.calculos.GeratrizTriangulo;
import poo.calculos.AreaRetangulo;
import poo.calculos.RaioCilindro;

/**
 * Classe principal do sistema.
 * Gerencia o menu de interações com o usuário e
 * invoca as funcionalidades das outras classes usando JOptionPane.
 */
public class Main {

    private static ArrayList<Aluno> alunosCadastrados = new ArrayList<>();
    private static ArrayList<Turma> turmasCadastradas = new ArrayList<>();

    public static void main(String[] args) {
        String[] opcoes = {"Cadastrar Aluno", "Cadastrar Turma", "Cadastrar Notas", "Prova de Recuperação", "Sair"};
        int opcao;

        do {
            opcao = JOptionPane.showOptionDialog(
                null,
                "Selecione uma opção:",
                "Menu Principal",
                JOptionPane.DEFAULT_OPTION,
                JOptionPane.INFORMATION_MESSAGE,
                null,
                opcoes,
                opcoes[0]
            );

            switch (opcao) {
                case 0: // Cadastrar Aluno
                    cadastrarAluno();
                    break;
                case 1: // Cadastrar Turma
                    cadastrarTurma();
                    break;
                case 2: // Cadastrar Notas
                    cadastrarNotas();
                    break;
                case 3: // Prova de Recuperação
                    menuProvaRecuperacao();
                    break;
                case 4: // Sair
                    JOptionPane.showMessageDialog(null, "Saindo do sistema. Até mais!");
                    break;
                default:
                    // Ação para fechar a janela, que também sai do loop
            }

        } while (opcao != 4 && opcao != JOptionPane.CLOSED_OPTION);
    }

    public static void cadastrarAluno() {
        String nome = JOptionPane.showInputDialog(null, "Digite o nome do aluno:", "Cadastro de Aluno", JOptionPane.QUESTION_MESSAGE);
        String matricula = JOptionPane.showInputDialog(null, "Digite a matrícula do aluno:", "Cadastro de Aluno", JOptionPane.QUESTION_MESSAGE);

        if (nome != null && matricula != null) {
            Aluno novoAluno = new Aluno(nome, matricula);
            alunosCadastrados.add(novoAluno);
            JOptionPane.showMessageDialog(null, "Aluno " + nome + " cadastrado com sucesso!");
        }
    }

    public static void cadastrarTurma() {
        String nomeTurma = JOptionPane.showInputDialog(null, "Digite o nome da turma:", "Cadastro de Turma", JOptionPane.QUESTION_MESSAGE);

        if (nomeTurma != null) {
            Turma novaTurma = new Turma(nomeTurma);
            turmasCadastradas.add(novaTurma);
            JOptionPane.showMessageDialog(null, "Turma " + nomeTurma + " cadastrada com sucesso!");
        }
    }

    public static void cadastrarNotas() {
        if (alunosCadastrados.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Nenhum aluno cadastrado para atribuir notas.");
            return;
        }
        
        String[] nomesAlunos = alunosCadastrados.stream().map(Aluno::getNome).toArray(String[]::new);
        int escolhaAluno = JOptionPane.showOptionDialog(null, "Selecione o aluno para atribuir notas:", "Cadastro de Notas", JOptionPane.DEFAULT_OPTION, JOptionPane.QUESTION_MESSAGE, null, nomesAlunos, nomesAlunos[0]);

        if (escolhaAluno != JOptionPane.CLOSED_OPTION) {
            try {
                Aluno alunoSelecionado = alunosCadastrados.get(escolhaAluno);
                double n1 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a Nota 1:", "Notas de " + alunoSelecionado.getNome(), JOptionPane.QUESTION_MESSAGE));
                double n2 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a Nota 2:", "Notas de " + alunoSelecionado.getNome(), JOptionPane.QUESTION_MESSAGE));
                double n3 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite a Nota 3:", "Notas de " + alunoSelecionado.getNome(), JOptionPane.QUESTION_MESSAGE));
                
                Notas novasNotas = new Notas(n1, n2, n3);
                alunoSelecionado.adicionarNotas(novasNotas);
                JOptionPane.showMessageDialog(null, "Notas cadastradas para " + alunoSelecionado.getNome() + ". Média: " + String.format("%.2f", novasNotas.calcularMedia()));
            } catch (NumberFormatException e) {
                JOptionPane.showMessageDialog(null, "Entrada de nota inválida. Por favor, digite um número.", "Erro", JOptionPane.ERROR_MESSAGE);
            }
        }
    }

    public static void menuProvaRecuperacao() {
        if (alunosCadastrados.isEmpty()) {
            JOptionPane.showMessageDialog(null, "Nenhum aluno cadastrado para realizar a prova de recuperação.");
            return;
        }

        String[] nomesAlunos = alunosCadastrados.stream().map(Aluno::getNome).toArray(String[]::new);
        int escolhaAluno = JOptionPane.showOptionDialog(null, "Selecione o aluno que irá realizar a prova:", "Prova de Recuperação", JOptionPane.DEFAULT_OPTION, JOptionPane.QUESTION_MESSAGE, null, nomesAlunos, nomesAlunos[0]);

        if (escolhaAluno != JOptionPane.CLOSED_OPTION) {
            Aluno alunoDaProva = alunosCadastrados.get(escolhaAluno);
            alunoDaProva.resetAcertos();

            ArrayList<Calculo> questoesDaProva = new ArrayList<>();
            questoesDaProva.add(new Bhaskara());
            questoesDaProva.add(new GeratrizTriangulo());
            questoesDaProva.add(new AreaRetangulo());
            questoesDaProva.add(new RaioCilindro());

            for (Calculo questao : questoesDaProva) {
                boolean acertou = questao.realizarCalculo();
                alunoDaProva.registrarResultado(questao.getNome(), acertou);
                if (acertou) {
                    alunoDaProva.adicionarAcerto();
                }
            }

            // Geração do relatório ao final da prova
            JOptionPane.showMessageDialog(null, alunoDaProva.gerarRelatorio(), "Relatório Final", JOptionPane.INFORMATION_MESSAGE);
        }
    }
}
