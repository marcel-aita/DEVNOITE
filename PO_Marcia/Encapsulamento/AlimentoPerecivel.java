// Outra subclasse de 'Alimento'. Juntas, 'AlimentoPerecivel' e
// 'AlimentoNaoPerecivel' demonstram polimorfismo. Um 'Alimento' pode ser de
// um desses dois tipos, e o código pode tratar ambos de forma genérica.
public class AlimentoPerecivel extends Alimento {

    private String temperatura;
    private String prazoAbertura;

    public AlimentoPerecivel(String ingrediente, String marca, String nomeProduto, String categoria, String temperatura, String prazoAbertura) {
        super(ingrediente, marca, nomeProduto, categoria);
        this.temperatura = temperatura;
        this.prazoAbertura = prazoAbertura;
    }

    public String getTemperatura() {
        return temperatura;
    }

    public void setTemperatura(String temperatura) {
        this.temperatura = temperatura;
    }

    public String getPrazoAbertura() {
        return prazoAbertura;
    }

    public void setPrazoAbertura(String prazoAbertura) {
        this.prazoAbertura = prazoAbertura;
    }
}