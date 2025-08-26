public class Venda{

    private long numeroNotaFiscal;
    private String dataVenda;
    private String horaVenda;
    private float valorTotal;

    public void setNumeroNotaFiscal(long n){
        this.numeroNotaFiscal = n;
    }

    public long getNumeroNotaFiscal(){
        return numeroNotaFiscal;
    }

    public void setDataVenda(String dt){
        this.dataVenda = dt;
    }

    public String getDataVenda(){
        return dataVenda;
    }

    public void setHoraVenda(String hv){
        this.horaVenda = hv;
    }

    public String getHoraVenda(){
        return horaVenda;
    }

    public void setValorTotal(float vt){
        this.valorTotal = vt;
    }

    public float getValorTotal(){
        return valorTotal;
    }

}