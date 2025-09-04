// A palavra-chave 'extends' define a herança. 'AlimentoNaoPerecivel' herda de 'Alimento',
// o que significa que ele adquire todos os atributos e métodos não-privados
// da classe pai. Isso é um pilar do Polimorfismo por herança.
public class AlimentoNaoPerecivel extends Alimento {

    // Atributos privados são acessíveis apenas dentro desta classe.
    private String instrucaoConservacao;
    private String conservantes;

    // Construtor: ele deve chamar o construtor da classe pai usando a palavra-chave 'super()'.
    // 'super()' passa os parâmetros necessários para inicializar a parte 'Alimento'
    // do objeto, garantindo a construção completa do objeto.
    public AlimentoNaoPerecivel(String ingrediente, String marca, String nomeProduto, String categoria, String instrucaoConservacao, String conservantes) {
        super(ingrediente, marca, nomeProduto, categoria);
        this.instrucaoConservacao = instrucaoConservacao;
        this.conservantes = conservantes;
    }

    public String getInstrucaoConservacao() {
        return instrucaoConservacao;
    }

    public void setInstrucaoConservacao(String instrucaoConservacao) {
        this.instrucaoConservacao = instrucaoConservacao;
    }

    public String getConservantes() {
        return conservantes;
    }

    public void setConservantes(String conservantes) {
        this.conservantes = conservantes;
    }
}