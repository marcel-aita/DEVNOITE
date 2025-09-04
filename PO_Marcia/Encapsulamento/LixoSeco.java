// Outra subclasse de 'Lixo', que demonstra o polimorfismo.
public class LixoSeco extends Lixo {
    // Atributos específicos de LixoSeco.
    private String material;
    private String coletor;
    private String cooperativa;

    // Construtor: chama 'super()' para inicializar os atributos da classe pai.
    public LixoSeco(String tipo, int quantidade, float valor, String material, String coletor, String cooperativa) {
        super(tipo, quantidade, valor);
        this.material = material;
        this.coletor = coletor;
        this.cooperativa = cooperativa;
    }

    // Setters e Getters para os atributos específicos de LixoSeco.
    public void setMaterial(String material) {
        this.material = material;
    }

    public void setColetor(String coletor) {
        this.coletor = coletor;
    }

    public void setCooperativa(String cooperativa) {
        this.cooperativa = cooperativa;
    }

    public String getMaterial() {
        return material;
    }

    public String getColetor() {
        return coletor;
    }

    public String getCooperativa() {
        return cooperativa;
    }

    // Sobrescrita do método 'descarte()' para a implementação de lixo seco.
    @Override
    public void descarte() {
        System.out.println("Lixo seco descartado. Encaminhar para o coletor e cooperativa.");
    }
}