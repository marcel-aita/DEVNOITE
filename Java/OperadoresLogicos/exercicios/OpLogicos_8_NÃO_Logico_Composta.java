import java.util.Scanner;
public class OpLogicos_8_NÃO_Logico_Composta {

    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);    
        
///Negação - Composta
//Modifique o programa do exercício anterior
//para que, caso o número seja positivo, exiba
//uma mensagem dizendo que o número é positivo.
//Caso contrário, exiba uma mensagem
//dizendo que o número não é positivo

System.out.print("Insira o primeiro número: ");
int numero1 = sc.nextInt();

if(!(numero1 < 0)){
    System.out.println("O número é positivo");
}else{
    System.out.println("O número não é positivo");
}

    }
    
}
