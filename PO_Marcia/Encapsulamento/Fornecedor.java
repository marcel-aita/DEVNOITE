public class Fornecedor {

    private int cnpj;
    private String InscricaoEstadual;
    private String razaosocial;
    private String nomeFantasia;
    private String endereco;
    private int numero;
    private int cep;
    private String cidade;
    private String estado;
    private int telefone;
    private String email;
    private boolean status;
    
    //setters
    public void setCnpj(int c){
        this.cnpj = c;
    }

    public void setInscricaoEstadual(String insc){
        this.InscricaoEstadual = insc;
    }

    public void setRazaosocial(String rz){
        this.razaosocial = rz;
    }

    public void setNomeFantasia(String nf){
        this.nomeFantasia = nf;
    }

    public void setEndereco(String end){
        this.endereco = end;
    }
    
    //getters
    public int getCnpj(){
        return this.cnpj;
    }

    public String getInscricaoEstadual(){
        return this.InscricaoEstadual;
    }

    public String getRazaosocial(){
        return this.razaosocial;
    }

    public String getNomeFantasia(){
        return this.nomeFantasia;
    }

    public String getEndereco(){
        return this.endereco;
    }

}
