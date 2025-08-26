//Crie uma classe chamada Estoque com os seguinte atributos nomeados: quantidaeTotal, localizacao, dataVencimentoProduto, categoria. Depois implementa os métodos get e set para cada atributo. 

public class Estoque{
    private int quantidadeTotal;
    private String localizacao;
    private String dataVencimentoProduto;
    private String categoria;

    // Setters
    public void setQuantidadeTotal(int quantidadeTotal) {
        this.quantidadeTotal = quantidadeTotal;
    }
    public void setLocalizacao(String localizacao) {
        this.localizacao = localizacao;
    }
    public void setDataVencimentoProduto(String dataVencimentoProduto) {
        this.dataVencimentoProduto = dataVencimentoProduto;
    }
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    
    // Getters
    public int getQuantidadeTotal() {
        return quantidadeTotal;
    }
    public String getLocalizacao() {
        return localizacao;
    }
    public String getDataVencimentoProduto() {
        return dataVencimentoProduto;
    }
    public String getCategoria() {
        return categoria;
    }
    
}