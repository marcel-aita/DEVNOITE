public class Alimento {
    protected String ingrediente;
    protected String marca;
    protected String nomeProduto;
    protected String armazenamento;
    protected String embalagem;
    protected String categoria;
    protected String fabricante;

    public void setIngrediente(String i) {
        this.ingrediente = i;
    }

    public String getIngrediente(){
        return ingrediente;
    }

    public void setMarca(String m) {
        this.marca = m;
    }

    public String getMarca(){
        return marca;
    }

    public void setCategoria(String c) {
        this.categoria = c;
    }

    public String getCategoria(){
        return categoria;
    }

}