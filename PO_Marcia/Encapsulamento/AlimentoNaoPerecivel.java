public class AlimentoNaoPerecivel extends Alimento {
    
    protected String intrucaoConcervacao;
    protected String conservantes;

    public void setIntrucaoConcervacao(String ic) {
        this.intrucaoConcervacao = ic;
    }

    public String getIntrucaoConcervacao() {
        return intrucaoConcervacao;
    }

    public void setConservantes(String c) {
        this.conservantes = c;
    }

    public String getConservantes() {
        return conservantes;
    }
}
