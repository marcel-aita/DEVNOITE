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
public class ListaJava_exercicio_11 {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Crie um programa que peça ao usuário para digitar uma frase contendo uma palavra
    //maiúscula, converta essa palavra para minúsculas e exiba o resultado.
    
    String minhaFrase;
    
    
    System.out.print("Digite uma frase: ");
    minhaFrase = sc.nextLine();
    String textoMaiusculo = minhaFrase.toUpperCase();
    System.out.println(textoMaiusculo);
    
}
}
