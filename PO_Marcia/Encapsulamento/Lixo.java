// A palavra-chave 'abstract' define esta classe como um modelo para
// subclasses. Não é possível criar instâncias de 'Lixo' diretamente.
public abstract class Lixo {
    // 'protected' é um modificador de acesso que permite que os atributos sejam
    // acessados pela própria classe e por suas subclasses, mas não por outras classes.
    protected String tipo;
    protected int quantidade;
    protected float valor;

    // Construtor: usado para inicializar os atributos de um objeto.
    // Ele é chamado automaticamente ao criar uma nova instância.
    public Lixo(String tipo, int quantidade, float valor) {
        this.tipo = tipo;
        this.quantidade = quantidade;
        this.valor = valor;
    }

    // Setters: métodos para modificar o valor dos atributos de forma controlada.
    // 'void' significa que o método não retorna nenhum valor.
    public void setTipo(String tipo) {
        // 'this' referencia a instância atual do objeto, distinguindo o atributo
        // da classe do parâmetro de mesmo nome.
        this.tipo = tipo;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    // Getters: métodos para obter o valor dos atributos.
    public String getTipo() {
        // 'return' é usado para retornar o valor de um método.
        return tipo;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public float getValor() {
        return valor;
    }

    // Método abstrato: ele define um 'contrato' que todas as subclasses devem seguir.
    // Cada subclasse terá sua própria implementação desse método, demonstrando polimorfismo.
    public abstract void descarte();
}