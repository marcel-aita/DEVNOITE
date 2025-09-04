public class Estoque {

    // Atributos privados, que só podem ser acessados através dos métodos públicos
    // da própria classe. Isso é a base do encapsulamento.
    private int quantidadeTotal;
    private String localizacao;
    private String dataVencimentoProduto;

    public Estoque(int quantidadeTotal, String localizacao, String dataVencimentoProduto) {
        this.quantidadeTotal = quantidadeTotal;
        this.localizacao = localizacao;
        this.dataVencimentoProduto = dataVencimentoProduto;
    }

    public int getQuantidadeTotal() {
        return quantidadeTotal;
    }

    public void setQuantidadeTotal(int quantidadeTotal) {
        this.quantidadeTotal = quantidadeTotal;
    }

    public String getLocalizacao() {
        return localizacao;
    }

    public void setLocalizacao(String localizacao) {
        this.localizacao = localizacao;
    }

    public String getDataVencimentoProduto() {
        return dataVencimentoProduto;
    }

    public void setDataVencimentoProduto(String dataVencimentoProduto) {
        this.dataVencimentoProduto = dataVencimentoProduto;
    }
}