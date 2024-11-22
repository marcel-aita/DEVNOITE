/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula;
import java.io.PrintStream;
// Importa a classe Scanner para permitir a leitura de dados a partir do teclado.
import java.util.Scanner;
// Importa a classe
import java.io.UnsupportedEncodingException;

/**
 *
 * @author 182410162
 */
public class ListaJava_exercicio_13 {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Crie um programa que remova todas as ocorrências de um caractere e
    //specífico da string digitada pelo usuário. 
    //Solicite ao usuário para digitar o caractere a ser removido.
    
     char letra;//caracter letra
     String minhaFrase;
     
    System.out.print("Digite uma letra: ");
    letra =  sc.nextLine().charAt(0);
    System.out.println("A letra digitada foi: "+ letra);
    System.out.print("Digite uma frase: ");
    minhaFrase = sc.nextLine();
            
         
    String novoTexto1 = minhaFrase.replace(Character.toString(letra), "");  
    System.out.println(novoTexto1);
    
}
}
