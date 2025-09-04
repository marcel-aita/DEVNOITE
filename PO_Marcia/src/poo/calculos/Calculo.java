
import javax.swing.JOptionPane;

/**
 * Classe abstrata que serve como base para todos os cálculos.
 * Aplica o conceito de Abstração, definindo o comportamento comum
 * para as subclasses. Agora inclui enunciado, resposta correta e falsa
 * para simular uma questão de prova.
 */
public abstract class Calculo {

    private String nome;
    private String enunciado;
    private double respostaCorreta;

    public Calculo(String nome, String enunciado, double respostaCorreta) {
        this.nome = nome;
        this.enunciado = enunciado;
        this.respostaCorreta = respostaCorreta;
    }

    public String getNome() {
        return nome;
    }

    public String getEnunciado() {
        return enunciado;
    }

    public double getRespostaCorreta() {
        return respostaCorreta;
    }

    /**
     * Método abstrato para realizar o cálculo e interagir com o usuário via JOptionPane.
     * @return Verdadeiro se o aluno acertou o cálculo, falso caso contrário.
     */
    public abstract boolean realizarCalculo();

    /**
     * Verifica se a resposta do aluno está correta.
     * @param respostaAluno A resposta fornecida pelo aluno.
     * @return true se a resposta for igual à resposta correta, false caso contrário.
     */
    public boolean verificarResposta(double respostaAluno) {
        return Math.abs(respostaAluno - this.respostaCorreta) < 0.001;
    }
}
