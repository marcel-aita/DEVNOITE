import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class ListaJava_exercicio_3 {
    public static void main(String[] args)throws UnsupportedEncodingException {
        
    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    Scanner sc = new Scanner(System.in);

    //Crie um programa que imprima uma tabela simples, com duas colunas: "Nome" e "Idade". 
    //Preencha a tabela com os dados de 3 pessoas.
    
    String nome;
    int idade;
    String texto;
    String nome1;
    int idade1;
    String texto1;
    String nome2;
    int idade2;
    String texto2;

    System.out.print("Insira um nome: ");
    nome = sc.nextLine();
    System.out.print("Insira um nome: ");
    nome1 = sc.nextLine();
    System.out.print("Insira um nome: ");
    nome2 = sc.nextLine();
    
    System.out.print("Insira a idade: ");
    idade = Integer.parseInt(sc.nextLine());
    System.out.print("Insira a idade: ");
    idade1 = Integer.parseInt(sc.nextLine());
    System.out.print("Insira a idade: ");
    idade2 = Integer.parseInt(sc.nextLine());

    System.out.print("Insira a cidade: ");
    texto = sc.nextLine();
    System.out.print("Insira a cidade: ");
    texto1 = sc.nextLine();
    System.out.print("Insira a cidade: ");
    texto2 = sc.nextLine();

    System.out.println("Nome" + "," + " " + "Idade" + "," + " " + "Cidade" + ":" + " "+nome+"\t"+idade+"\t"+texto+"\t");
    System.out.println("Nome" + "," + " " + "Idade" + "," + " " + "Cidade" + ":" + " "+nome1+"\t"+idade1+"\t"+texto1+"\t");
    System.out.println("Nome" + "," + " " + "Idade" + "," + " " + "Cidade" + ":" + " "+nome2+"\t"+idade2+"\t"+texto2+"\t");


    
    

}
}
