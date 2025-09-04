
import javax.swing.JOptionPane;

/**
 * Classe que calcula a área de um retângulo.
 * Herda de Calculo e sobrescreve seus métodos. Atua como uma questão de prova.
 */
public class AreaRetangulo extends Calculo {

    public AreaRetangulo() {
        super(
            "Área de Retângulo",
            "Questão: Calcule a área de um retângulo com base 5 e altura 8.",
            40.0
        );
    }

    @Override
    public boolean realizarCalculo() {
        try {
            double base = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor da base:", getEnunciado(), JOptionPane.QUESTION_MESSAGE));
            double altura = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o valor da altura:", getEnunciado(), JOptionPane.QUESTION_MESSAGE));

            double respostaAluno = Double.parseDouble(JOptionPane.showInputDialog(null, "Sua resposta para a área:", "Resposta", JOptionPane.QUESTION_MESSAGE));

            return verificarResposta(respostaAluno);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Entrada inválida. Por favor, digite um número.", "Erro", JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
}
