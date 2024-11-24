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
 * @author marce
 */
public class OpRelacionais_exercicio_10 {
    
     public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Modifique o programa anterior para que, caso o primeiro
    //número não seja menor ou igual ao segundo, exiba uma 
    //mensagem dizendo que o primeiro número é maior.
    
     System.out.print("Digite um número: ");
       int numero1 = Integer.parseInt(sc.nextLine());
       System.out.print("Digite o segundo número: ");
       int numero2 = Integer.parseInt(sc.nextLine());
       
       if(numero2 >= numero1){
           System.out.println("O primeiro número: ("+numero1+")é menor ou igual que o segundo número ("+numero2+")");
       }else{
           System.out.println("O primeiro número: ("+numero1+") é maior que o segundo número ("+numero2+")");
       }
    
}
}