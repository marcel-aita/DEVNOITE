import java.util.Scanner;
public class OpLogicos_2_E_Logico_Composta {
Scanner sc = new Scanner(System.in);

/// E Lógico (AND) - Composta
//Modifique o programa do exercício anterior
//para que, se pelo menos um dos números não
//for positivo, o programa exiba uma mensagem
//dizendo que pelo menos um número não é
//positivo

 public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira um número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira outro número: ");
        int numero2 = sc.nextInt();
        
        if(numero1 > 0 && numero2 > 0){
            System.out.println("Os números são positivos");
        }else{
            System.out.println("Um dos números não é positivo");
        }
}
}
