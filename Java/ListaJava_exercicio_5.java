import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class ListaJava_exercicio_5 {
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Crie um programa que peça ao usuário que digite dois números decimais. 
    //Calcule e exiba a soma dos dois números.

    int numero1, numero2, resultado;

    System.out.print("Digite o primeiro número: ");
    numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite o segundo número: ");
    numero2 = Integer.parseInt(sc.nextLine());
    resultado = numero1+numero2;
    System.out.print("\nA soma dos dois números é: "+resultado);

}
}
