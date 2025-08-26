public class LixoOrganico extends Lixo {
    protected String tempodecomposicao;
    protected String aterro;
    protected String compostagem;

    // Setters
    public void setTempodecomposicao(String tempodecomposicao) {
        this.tempodecomposicao = tempodecomposicao;
    }
    public void setAterro(String aterro) {
        this.aterro = aterro;
    }
    public void setCompostagem(String compostagem) {
        this.compostagem = compostagem;
    }

    // Getters
    public String getTempodecomposicao() {
        return tempodecomposicao;
    }
    public String getAterro() {
        return aterro;
    }
    public String getCompostagem() {
        return compostagem;
    }
    
    
}
