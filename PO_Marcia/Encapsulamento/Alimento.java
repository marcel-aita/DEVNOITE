// O modificador 'public' indica que esta classe pode ser acessada por qualquer
// outra classe no sistema.
// A palavra-chave 'abstract' define 'Alimento' como uma classe abstrata.
// Isso impede que a classe seja instanciada diretamente (ou seja, você não pode
// criar um `new Alimento()`). O propósito de uma classe abstrata é servir como
// um 'molde' ou 'contrato' para suas subclasses, que devem fornecer a
// implementação dos seus métodos e atributos.
public abstract class Alimento {

    // A palavra-chave 'protected' é um modificador de acesso.
    // Ele permite que os atributos sejam acessados apenas pela própria classe
    // e por suas subclasses (no caso, AlimentoPerecivel e AlimentoNaoPerecivel).
    // Isso é uma forma de encapsulamento mais permissiva que 'private',
    // pois permite a herança de dados sem a necessidade de getters e setters
    // para acesso direto pelas classes filhas.
    protected String ingrediente;
    protected String marca;
    protected String nomeProduto;
    protected String armazenamento;
    protected String embalagem;
    protected String categoria;
    protected String fabricante;

    // Construtor: um método especial com o mesmo nome da classe, sem tipo de retorno.
    // Ele é executado automaticamente quando um objeto da classe é criado (instanciado).
    // O construtor é usado para inicializar os atributos de um objeto, garantindo
    // que ele comece em um estado válido.
    // Os parâmetros passados para o construtor são usados para atribuir valores
    // aos atributos do objeto.
    public Alimento(String ingrediente, String marca, String nomeProduto, String categoria) {
        // A palavra-chave 'this' refere-se à instância atual do objeto.
        // 'this.ingrediente' diferencia o atributo da classe do parâmetro de mesmo
        // nome recebido pelo construtor. Ele garante que o valor do parâmetro
        // 'ingrediente' seja atribuído ao atributo 'ingrediente' da classe.
        this.ingrediente = ingrediente;
        this.marca = marca;
        this.nomeProduto = nomeProduto;
        this.categoria = categoria;
    }

    // Métodos 'get' (getters) e 'set' (setters) são a forma padrão de
    // implementar o encapsulamento.
    // 'get' retorna o valor de um atributo, permitindo a leitura de dados.
    public String getIngrediente() {
        // A palavra-chave 'return' encerra a execução do método e retorna um valor.
        return ingrediente;
    }

    // 'set' permite a modificação de um atributo, controlando como os dados
    // podem ser alterados.
    // O modificador 'void' significa que o método não retorna nenhum valor.
    public void setIngrediente(String ingrediente) {
        this.ingrediente = ingrediente;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public String getArmazenamento() {
        return armazenamento;
    }

    public void setArmazenamento(String armazenamento) {
        this.armazenamento = armazenamento;
    }

    public String getEmbalagem() {
        return embalagem;
    }

    public void setEmbalagem(String embalagem) {
        this.embalagem = embalagem;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getFabricante() {
        return fabricante;
    }

    public void setFabricante(String fabricante) {
        this.fabricante = fabricante;
    }
}