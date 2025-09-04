
import javax.swing.JOptionPane;

/**
 * Classe que calcula a geratriz de um triângulo (interpretada como perímetro).
 * Herda de Calculo e sobrescreve seus métodos. Atua como uma questão de prova.
 */
public class GeratrizTriangulo extends Calculo {

    public GeratrizTriangulo() {
        super(
            "Geratriz de Triângulo",
            "Questão: Qual a geratriz (perímetro) de um triângulo com lados 3, 4 e 5?",
            12.0
        );
    }

    @Override
    public boolean realizarCalculo() {
        try {
            double lado1 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o comprimento do primeiro lado:", getEnunciado(), JOptionPane.QUESTION_MESSAGE));
            double lado2 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o comprimento do segundo lado:", getEnunciado(), JOptionPane.QUESTION_MESSAGE));
            double lado3 = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o comprimento do terceiro lado:", getEnunciado(), JOptionPane.QUESTION_MESSAGE));

            double respostaAluno = Double.parseDouble(JOptionPane.showInputDialog(null, "Sua resposta para a geratriz:", "Resposta", JOptionPane.QUESTION_MESSAGE));

            return verificarResposta(respostaAluno);
        } catch (NumberFormatException e) {
            JOptionPane.showMessageDialog(null, "Entrada inválida. Por favor, digite um número.", "Erro", JOptionPane.ERROR_MESSAGE);
            return false;
        }
    }
}
