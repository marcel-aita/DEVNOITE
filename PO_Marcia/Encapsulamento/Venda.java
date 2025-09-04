public class Venda {

    private int numeroNotaFiscal;
    private String dataVenda;
    private String horaVenda;
    private float valorTotal;

    public Venda(int numeroNotaFiscal, String dataVenda, String horaVenda, float valorTotal) {
        this.numeroNotaFiscal = numeroNotaFiscal;
        this.dataVenda = dataVenda;
        this.horaVenda = horaVenda;
        this.valorTotal = valorTotal;
    }

    public int getNumeroNotaFiscal() {
        return numeroNotaFiscal;
    }

    public void setNumeroNotaFiscal(int numeroNotaFiscal) {
        this.numeroNotaFiscal = numeroNotaFiscal;
    }

    public String getDataVenda() {
        return dataVenda;
    }

    public void setDataVenda(String dataVenda) {
        this.dataVenda = dataVenda;
    }

    public String getHoraVenda() {
        return horaVenda;
    }

    public void setHoraVenda(String horaVenda) {
        this.horaVenda = horaVenda;
    }

    public float getValorTotal() {
        return valorTotal;
    }

    public void setValorTotal(float valorTotal) {
        this.valorTotal = valorTotal;
    }
}