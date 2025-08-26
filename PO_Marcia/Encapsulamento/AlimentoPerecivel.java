public class AlimentoPerecivel extends Alimento {
    protected String temperatura;
    protected String prazoAbertura;
    
    public void settemperatura(String t){
        this.temperatura = t;
    }

    public String gettemperatura(){
        return temperatura;
    }

    public void setprazoAbertura(String pa){
        this.prazoAbertura = pa;
    }

    public String getprazoAbertura(){
        return prazoAbertura;
    }

}