

/**
 * Classe principal do sistema.
 * Gerencia o fluxo de criação de objetos, preenchimento de dados
 * e execução da prova de recuperação de forma direta.
 */
public class Principal {

    public static void main(String[] args) {
        // --- 1. CRIAÇÃO DOS OBJETOS ---
        // Criação de objetos para as classes de gestão
        Aluno a = new Aluno("João da Silva", "2023001");
        Turma t = new Turma("Turma 3A - Manhã");
        Notas n = new Notas(7.5, 8.0, 9.0);

        // Criação de objetos para as classes de cálculo (questões da prova)
        Bhaskara qb = new Bhaskara();
        GeratrizTriangulo qt = new GeratrizTriangulo();
        AreaRetangulo qr = new AreaRetangulo();
        RaioCilindro qc = new RaioCilindro();

        // --- 2. PREENCHIMENTO DE DADOS E RELACIONAMENTOS ---
        // Preenchendo dados do aluno
        a.setTurma(t);
        a.adicionarNotas(n);

        // Resetando os acertos do aluno para iniciar a prova
        a.resetAcertos();

        // --- 3. EXECUÇÃO DA PROVA (Cálculos) ---
        // Aqui simulamos a execução da prova, onde as respostas são
        // comparadas com valores predefinidos em cada classe de cálculo.

        // Simulação de resposta para Bhaskara
        boolean acertouBhaskara = qb.verificarResposta(2.0);
        a.registrarResultado(qb.getNome(), acertouBhaskara);
        if (acertouBhaskara) {
            a.adicionarAcerto();
        }

        // Simulação de resposta para Geratriz de Triângulo
        boolean acertouTriangulo = qt.verificarResposta(12.0);
        a.registrarResultado(qt.getNome(), acertouTriangulo);
        if (acertouTriangulo) {
            a.adicionarAcerto();
        }

        // Simulação de resposta para Área de Retângulo
        boolean acertouRetangulo = qr.verificarResposta(40.0);
        a.registrarResultado(qr.getNome(), acertouRetangulo);
        if (acertouRetangulo) {
            a.adicionarAcerto();
        }

        // Simulação de resposta para Raio de Cilindro
        boolean acertouCilindro = qc.verificarResposta(2.0);
        a.registrarResultado(qc.getNome(), acertouCilindro);
        if (acertouCilindro) {
            a.adicionarAcerto();
        }

        // --- 4. EXIBIÇÃO DO RELATÓRIO FINAL ---
        // Geração e impressão do relatório no console
        System.out.println(a.gerarRelatorio());
    }
}
