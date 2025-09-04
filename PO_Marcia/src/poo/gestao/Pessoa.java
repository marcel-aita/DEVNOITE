/**
 * Classe abstrata que representa uma pessoa no sistema.
 * Serve como base para outras classes como Aluno, Professor, etc.
 * Aplica o conceito de Abstração e Encapsulamento.
 */
public abstract class Pessoa {

    // Atributos privados para garantir o encapsulamento
    private String nome;
    private String matricula;

    // Construtor
    public Pessoa(String nome, String matricula) {
        this.nome = nome;
        this.matricula = matricula;
    }

    // Método abstrato que as subclasses devem implementar
    public abstract void cadastrar();

    // Métodos de acesso (getters e setters) para o encapsulamento
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
}
