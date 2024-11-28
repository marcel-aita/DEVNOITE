import java.util.Scanner;
public class OpLogicos_5_OU_Logico_Composta {

    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
///Ou Lógico (OR) - Composta
//Modifique o programa do exercício anterior
//para que, caso nenhum dos números seja
//positivo, o programa exiba uma mensagem
//dizendo que nenhum dos números é positivo    
    
    System.out.print("Insira o primeiro número: ");
    int numero1 = sc.nextInt();
    System.out.print("Insira o segundo número: ");
    int numero2 = sc.nextInt();

    if(numero1 > 0 || numero2 > 0){
    System.out.println("Pelo menos um dos números é positivo");
    }else{
        System.out.println("Nnenhum dos dois números é positivo");
    }
    }
    
}
