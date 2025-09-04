
/**
 * Classe para gerenciar as notas de um aluno.
 * Aplica o conceito de encapsulamento.
 */
public class Notas {

    private double nota1;
    private double nota2;
    private double nota3;

    // Construtor
    public Notas(double nota1, double nota2, double nota3) {
        this.nota1 = nota1;
        this.nota2 = nota2;
        this.nota3 = nota3;
    }

    // Métodos para o encapsulamento
    public double getNota1() {
        return nota1;
    }

    public double getNota2() {
        return nota2;
    }

    public double getNota3() {
        return nota3;
    }

    /**
     * Calcula a média das três notas.
     * @return A média das notas.
     */
    public double calcularMedia() {
        return (nota1 + nota2 + nota3) / 3;
    }
}
