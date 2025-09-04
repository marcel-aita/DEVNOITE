
import javax.swing.JOptionPane;

/**
 * Classe que implementa o cálculo de Bhaskara, herdando de Calculo.
 * Demonstra Polimorfismo por sobrescrita e atua como uma questão de prova.
 */
public class Bhaskara extends Calculo {

    public Bhaskara() {
        super(
            "Bhaskara",
            "Questão: Encontre a maior raiz real da equação quadrática 1x^2 + -3x + 2 = 0.",
            2.0
        );
    }

    @Override
    public boolean realizarCalculo() {
        try {
            double a = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor de 'a':", getEnunciado(), JOptionPane.QUESTION_MESSAGE));
            double b = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor de 'b':", getEnunciado(), JOptionPane.QUESTION_MESSAGE));
            double c = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor de 'c':", getEnunciado(), JOptionPane.QUESTION_MESSAGE));

            double delta = (b * b) - 4 * a * c;
            if (delta < 0) {
                JOptionPane.showMessageDialog(null, "Não é possível calcular, pois o delta é negativo.", "Erro", JOptionPane.ERROR_MESSAGE);
                return false;
            }

            double raiz1 = (-b + Math.sqrt(delta)) / (2 * a);
            double raiz2 = (-b - Math.sqrt(delta)) / (2 * a);

            double respostaAluno = Double.parseDouble(JOptionPane.showInputDialog(null, "Sua resposta para a maior raiz:", "Resposta", JOptionPane.QUESTION_MESSAGE));

            return verificarResposta(respostaAluno);

        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Entrada inválida. Por favor, digite um número.", "Erro", JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
}
