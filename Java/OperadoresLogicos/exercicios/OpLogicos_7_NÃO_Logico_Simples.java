import java.util.Scanner;
public class OpLogicos_7_NÃO_Logico_Simples {

    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);    
        
///Negação - Simples
//Crie um programa que leia um número
//inteiro e verifique se o número não é positivo
//(usando a negação). Se o número não for positivo,
//imprima uma mensagem dizendo que o
//número não é positivo

System.out.print("Insira o primeiro número: ");
int numero1 = sc.nextInt();

if(!(numero1 > 0)){
    System.out.println("O número não é positivo");
}

    }
    
}
