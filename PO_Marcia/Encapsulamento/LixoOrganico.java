// A palavra-chave 'extends' estabelece a herança. 'LixoOrganico' herda de 'Lixo'.
public class LixoOrganico extends Lixo {
    // Atributos específicos desta subclasse. 'private' é a forma mais estrita de
    // encapsulamento, limitando o acesso apenas a esta classe.
    private String tempodecomposicao;
    private String aterro;
    private String compostagem;

    // Construtor: chama o construtor da classe pai usando a palavra-chave 'super()'.
    // Isso garante que a parte 'Lixo' do objeto seja inicializada corretamente.
    public LixoOrganico(String tipo, int quantidade, float valor, String tempodecomposicao, String aterro, String compostagem) {
        super(tipo, quantidade, valor);
        this.tempodecomposicao = tempodecomposicao;
        this.aterro = aterro;
        this.compostagem = compostagem;
    }

    // Setters e Getters para os atributos específicos de LixoOrganico.
    public void setTempodecomposicao(String tempodecomposicao) {
        this.tempodecomposicao = tempodecomposicao;
    }

    public void setAterro(String aterro) {
        this.aterro = aterro;
    }

    public void setCompostagem(String compostagem) {
        this.compostagem = compostagem;
    }

    public String getTempodecomposicao() {
        return tempodecomposicao;
    }

    public String getAterro() {
        return aterro;
    }

    public String getCompostagem() {
        return compostagem;
    }

    // Sobrescrita do método 'descarte()' da classe pai.
    // A anotação '@Override' é uma boa prática que indica que o método está
    // substituindo a implementação da superclasse.
    @Override
    public void descarte() {
        System.out.println("Lixo orgânico descartado. Encaminhar para a compostagem.");
    }
}