import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class ListaJava_exercicio_4 {
    public static void main(String[] args)throws UnsupportedEncodingException {
    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    Scanner sc = new Scanner(System.in);
    
    //Crie um programa que peça ao usuário para digitar seu nome e, em seguida, imprima uma 
    //mensagem de boas-vindas personalizada, utilizando o nome digitado.
    
    String nome;
     System.out.print("Digite seu nome: ");
     nome = sc.nextLine();
     System.out.print("Bem vindo!"+ " " +nome);
}
}
