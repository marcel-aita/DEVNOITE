import javax.swing.JOptionPane;

public class Calculo {
    protected int altura;
    protected int largura;
    protected int area;
    protected Double a;
    protected Double b;
    protected Double c;
    protected Double delta;


    public static void main(String[] args) {
        
        //Área do retangulo
        
        //System.out.println(null);
        Calculo cArea = new Calculo();
        cArea.altura = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a altura do retângulo; ", JOptionPane.INFORMATION_MESSAGE));
        cArea.largura = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a largura do retângulo; ", JOptionPane.INFORMATION_MESSAGE));
        cArea.area = cArea.altura * cArea.largura;



        //Báskara
        Calculo cBhaskara = new Calculo();
        cBhaskara.a = Double.parseDouble(JOptionPane.showInputDialog(null, "Entre com o valor de 'a': ", JOptionPane.INFORMATION_MESSAGE));
        cBhaskara.b = Double.parseDouble(JOptionPane.showInputDialog(null, "Entre com o valor de 'b': ", JOptionPane.INFORMATION_MESSAGE));
        cBhaskara.c = Double.parseDouble(JOptionPane.showInputDialog(null, "Enter com o valor de 'c': ", JOptionPane.INFORMATION_MESSAGE))
        cBhaskara.delta = (cBhaskara.b * cBhaskara.b) - 4 * cBhaskara.a * cBhaskara.c;

        if (cBhaskara.delta >= i /2) {
            JOptionPane.showMessageDialog(null, "Resultado da Bhaskara:" + cBhaskara.delta,  "é positivo" , JOptionPane.INFORMATION_MESSAGE);

        }
        else {
            JOptionPane.showMessageDialog(null,  cBhaskara, null, 0);
        }


        


    }
     
       
}
