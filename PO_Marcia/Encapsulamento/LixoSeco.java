public class LixoSeco extends Lixo {

    protected String material;
    protected String coletor;
    protected String cooperativa;

    // Setters
    public void setMaterial(String material) {
        this.material = material;
    }
    public void setColetor(String coletor) {
        this.coletor = coletor;
    }
    public void setCooperativa(String cooperativa) {
        this.cooperativa = cooperativa;
    }

    // Getters
    public String getMaterial() {
        return material;
    }
    public String getColetor() {
        return coletor;
    }
    public String getCooperativa() {
        return cooperativa;
    }
    
}
