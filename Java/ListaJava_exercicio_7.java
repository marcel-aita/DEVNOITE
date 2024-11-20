import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class ListaJava_exercicio_7 {
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);

    //Crie um programa que calcule a área de um retângulo.
    //Peça ao usuário para digitar a base e a altura, e imprima o resultado.

    int numero1, numero2, resultado;

    System.out.print("Digite o valor da base do retângulo: ");
    numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite o valor da altura do retângulo: ");
    numero2 = Integer.parseInt(sc.nextLine());
    resultado = numero1*numero2;
    System.out.print("\nA área do retângulo é igual: "+resultado+"m²");
}
}
