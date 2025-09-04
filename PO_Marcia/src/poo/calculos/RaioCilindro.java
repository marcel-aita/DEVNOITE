
import javax.swing.JOptionPane;

/**
 * Classe que calcula o raio circunscrito em um cilindro de altura 15,
 * dado um volume. Herda de Calculo e sobrescreve seus métodos.
 * Atua como uma questão de prova.
 */
public class RaioCilindro extends Calculo {

    public RaioCilindro() {
        super(
            "Raio de Cilindro",
            "Questão: Qual o raio de um cilindro com volume 188.495 e altura fixa de 15? (Use PI como 3.14159)",
            2.0
        );
    }

    @Override
    public boolean realizarCalculo() {
        try {
            double volume = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor do volume:", getEnunciado(), JOptionPane.QUESTION_MESSAGE));

            double respostaAluno = Double.parseDouble(JOptionPane.showInputDialog(null, "Sua resposta para o raio:", "Resposta", JOptionPane.QUESTION_MESSAGE));

            return verificarResposta(respostaAluno);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Entrada inválida. Por favor, digite um número.", "Erro", JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
}
