import javax.swing.*; 

public class Main {
    
    public static void main(String[] args) {
        String nome = JOptionPane.showInputDialog(null,"Digte seu nome:", JOptionPane.INFORMATION_MESSAGE);
        //JOptionPane.showMessageDialog(null, "Aluno" + nome + "!", JOptionPane.INFORMATION_MESSAGE);

        int nota1 = Integer.parseInt(JOptionPane.showInputDialog(null,"Digite a nota 1:", JOptionPane.INFORMATION_MESSAGE));
        int nota2 = Integer.parseInt(JOptionPane.showInputDialog(null,"Digite a nota 2:", JOptionPane.INFORMATION_MESSAGE));
        int nota3 = Integer.parseInt(JOptionPane.showInputDialog(null,"Digite a nota 3:", JOptionPane.INFORMATION_MESSAGE));        
        int media = (nota1 + nota2 + nota3) / 3;

        //baskara


       
        JOptionPane.showMessageDialog(null, "Aluno, " + nome + "\nMédia" + media , "Saudação", JOptionPane.INFORMATION_MESSAGE);
        
        String produto = JOptionPane.showInputDialog(null, "Digite o nome do produto:", JOptionPane.INFORMATION_MESSAGE);

        double preco = Double.parseDouble(JOptionPane.showInputDialog(null, "Digite o preço do produto:", JOptionPane.INFORMATION_MESSAGE));
        int quantidade = Integer.parseInt(JOptionPane.showInputDialog(null, "Digite a quantidade do produto:", JOptionPane.INFORMATION_MESSAGE));
        double total = preco * quantidade;

        JOptionPane.showMessageDialog(null, "Produto:" + produto + "\nPreço: " + preco , "\nQuantidade: " + quantidade
        + "\nTotal: " + total, JOptionPane.INFORMATION_MESSAGE); 


        
       

      //  String nota02Str = JOptionPane.showInputDialog("Digite sua nota:");
      //  String nota03Str = JOptionPane.showInputDialog("Digite sua nota:");
        

        



    }
}