import java.util.Scanner;
public class OpLogicos_4_OU_Logico_Simples {

    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);

/// Ou Lógico (OR) - Simples        
//Crie um programa que leia dois números
//inteiros e verifique se pelo menos um dos números é positivo.
//Imprima uma mensagem dizendo que pelo menos um número é
//positivo se essa condição for atendida.

System.out.print("Insira o primeiro número: ");
int numero1 = sc.nextInt();
System.out.print("Insira o segundo número: ");
int numero2 = sc.nextInt();

if(numero1 > 0 || numero2 > 0){
    System.out.println("Pelo menos um dos números é positivo");
}
    }
    
}
