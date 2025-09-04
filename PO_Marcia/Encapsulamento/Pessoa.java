public class Pessoa {
    // Atributos 'private' para o encapsulamento, acessados apenas por métodos públicos.
    private String nome;
    private int idade;
    // O tipo de dado 'String' é mais adequado para CPF, pois não será usado em cálculos e pode
    // conter zeros à esquerda. Mantenho 'int' para o exemplo, mas 'String' seria uma alternativa
    // mais robusta, seguindo o que foi discutido sobre 'Fornecedor'.
    private int cpf;

    // Construtor: um método que inicializa o objeto 'Pessoa' quando ele é criado.
    public Pessoa(String nome, int idade, int cpf) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getNome() {
        return nome;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public int getIdade() {
        return idade;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    public int getCpf() {
        return cpf;
    }

    // Método para demonstrar interação entre classes.
    // Este método aceita um objeto da classe 'Lixo' como parâmetro,
    // o que permite o uso de polimorfismo.
    public void descartarLixo(Lixo lixo) {
        System.out.println(this.nome + " está descartando um tipo de lixo...");
        lixo.descarte(); // Chamada polimórfica: o método 'descarte()' correto
                         // (LixoOrganico ou LixoSeco) é chamado em tempo de execução.
    }
}