import java.util.Scanner;
public class OpLogicos_10_E_OU_Logico_Simples {

    Scanner sc = new Scanner(System.in);
    
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);    
///Combinação de E e Ou - Simples
//Crie um programa que leia dois números
//inteiros e verifique se: O primeiro número é positivo
//e o segundo número é zero ou positivo. Imprima uma
//mensagem confirmando essas condições

System.out.print("Insira o primeiro número: ");
int numero1 = sc.nextInt();
System.out.print("Insira o segundo número: ");
int numero2 = sc.nextInt();

if(numero1 > 0 && numero2 > 0 || numero2 == 0){
    System.out.print("O primeiro número é positivo e o segundo número é positivo ou igual a zero");
}

    }
    
}
