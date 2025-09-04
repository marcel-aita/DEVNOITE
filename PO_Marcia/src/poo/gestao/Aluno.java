import java.util.ArrayList;

/**
 * Classe que representa um aluno, herdando de Pessoa.
 * Aplica o conceito de Herança e Polimorfismo (sobrescrita).
 * Adiciona lógica para o sistema de prova de recuperação.
 */
public class Aluno extends Pessoa {

    private Turma turma;
    private ArrayList<Notas> notas;
    private int acertosCalculos;
    private ArrayList<ResultadoQuestao> resultadosProva;

    /**
     * Classe interna para armazenar o resultado de cada questão da prova.
     */
    public static class ResultadoQuestao {
        public String nomeCalculo;
        public boolean acertou;

        public ResultadoQuestao(String nomeCalculo, boolean acertou) {
            this.nomeCalculo = nomeCalculo;
            this.acertou = acertou;
        }
    }

    // Construtor que invoca o construtor da superclasse
    public Aluno(String nome, String matricula) {
        super(nome, matricula);
        this.notas = new ArrayList<>();
        this.acertosCalculos = 0;
        this.resultadosProva = new ArrayList<>();
    }

    /**
     * Sobrescreve o método cadastrar da classe Pessoa.
     * Exemplo de Polimorfismo (sobrescrita).
     */
    @Override
    public void cadastrar() {
        // Nada para fazer aqui na versão com JOptionPane
    }

    public void setTurma(Turma turma) {
        this.turma = turma;
    }

    public Turma getTurma() {
        return turma;
    }

    public void adicionarNotas(Notas novasNotas) {
        this.notas.add(novasNotas);
    }

    public ArrayList<Notas> getNotas() {
        return notas;
    }

    /**
     * Adiciona um acerto ao contador de acertos do aluno.
     */
    public void adicionarAcerto() {
        this.acertosCalculos++;
    }

    /**
     * Registra o resultado de uma questão na prova.
     * @param nomeQuestao O nome do cálculo.
     * @param acertou Verdadeiro se a resposta estiver correta, falso caso contrário.
     */
    public void registrarResultado(String nomeQuestao, boolean acertou) {
        resultadosProva.add(new ResultadoQuestao(nomeQuestao, acertou));
    }

    /**
     * Retorna o total de acertos do aluno.
     * @return Número total de acertos.
     */
    public int getAcertosCalculos() {
        return acertosCalculos;
    }

    /**
     * Calcula a média dos acertos dos cálculos.
     * @return A média dos acertos.
     */
    public double calcularMediaAcertos() {
        final int TOTAL_QUESTOES = resultadosProva.size();
        return (TOTAL_QUESTOES == 0) ? 0.0 : ((double) acertosCalculos / TOTAL_QUESTOES) * 10;
    }

    /**
     * Verifica se o aluno foi aprovado na recuperação.
     * @return true se a média for >= 6, false caso contrário.
     */
    public boolean verificarAprovacao() {
        return calcularMediaAcertos() >= 6.0;
    }

    /**
     * Gera e retorna uma string com o relatório final do aluno.
     * @return String contendo o relatório.
     */
    public String gerarRelatorio() {
        StringBuilder relatorio = new StringBuilder();
        relatorio.append("--- RELATÓRIO DE RECUPERAÇÃO FINAL ---\n");
        relatorio.append("Nome do Aluno: ").append(getNome()).append("\n");
        relatorio.append("Matrícula: ").append(getMatricula()).append("\n");
        relatorio.append("Turma: ").append((turma != null ? turma.getNomeTurma() : "Não atribuída")).append("\n");
        relatorio.append("\nResultados por Cálculo:\n");

        for (ResultadoQuestao resultado : resultadosProva) {
            String situacao = resultado.acertou ? "Acertou" : "Errou";
            relatorio.append("- ").append(resultado.nomeCalculo).append(": ").append(situacao).append("\n");
        }

        double mediaFinal = calcularMediaAcertos();
        String situacaoFinal = verificarAprovacao() ? "APROVADO(A)" : "REPROVADO(A)";

        relatorio.append("\n--- Resumo ---\n");
        relatorio.append(String.format("Média Final: %.2f\n", mediaFinal));
        relatorio.append("Situação: ").append(situacaoFinal).append("\n");

        return relatorio.toString();
    }

    /**
     * Reseta o contador de acertos para que o aluno possa fazer a prova novamente.
     */
    public void resetAcertos() {
        this.acertosCalculos = 0;
        this.resultadosProva.clear();
    }
}
