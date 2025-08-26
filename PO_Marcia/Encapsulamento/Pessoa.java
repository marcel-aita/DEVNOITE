public class Pessoa{
    //Variáveis guardadas dentro da classe devido ao private
    private String nome;
    private int idade;
    private int cpf;

    //Método publico para enviar um nome por parâmetro, ou seja
    //dentro dos parênteses. Uso o this, que é palavra reservada 
    //para setar para a variável nome que está encapsulada dentro da 
    //classe, devido a palavra private antes dela.
    public void setNome(String n){
        this.nome = n;
    }
    //O método get retorna o que foi enviando dentro dos parenteses do método setNome.
    public String getNome(){
        return nome;
    }

    public void setIdade(int i){
        this.idade = i;
    }
    public int getIdade(){
        return idade;
    }

    public void setCpf(int cpf){
        this.cpf = cpf;
    }
    public int getCpf(){
        return cpf;
    }

}