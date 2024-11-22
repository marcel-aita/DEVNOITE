import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class ListaJava_exercicio_7 {
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);

    //Crie um programa que peça ao usuário que digite 4 notas de uma disciplina. 

    int numero1, numero2, numero3, numero4, resultado;

    System.out.print("Digite a primeira nota: ");
    numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite a segunda nota ");
    numero2 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite a terceira nota: ");
    numero3 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite a quarta nota ");
    numero4 = Integer.parseInt(sc.nextLine());
}
}