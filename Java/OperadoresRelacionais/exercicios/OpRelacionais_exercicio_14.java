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
public class OpRelacionais_exercicio_14 {
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Agora, altere o programa para que, caso os números 
    //não sejam iguais, exiba qual número é maior. 
    //Caso contrário, informe que ambos os números são iguais.
    
     System.out.print("Digite um número: ");
       int numero1 = Integer.parseInt(sc.nextLine());
       System.out.print("Digite o segundo número: ");
       int numero2 = Integer.parseInt(sc.nextLine());

       if(numero1 == numero2){
           System.out.println("Os dois números são iguais");
       }else if (numero1 > numero2){
           System.out.println("O primerio número: ("+numero1+") é maior que o segundo número ("+numero2+")");
       }else{
           System.out.println("O segundo número: ("+numero2+") é maior que o primeiro número ("+numero1+")");
       } 
    
}
}