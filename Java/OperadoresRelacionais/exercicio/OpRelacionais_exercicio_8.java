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
public class OpRelacionais_exercicio_8 {
    
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Modifique o programa do exercício anterior 
    //para que, se o primeiro número não for menor que o segundo, 
    //o programa exiba que o segundo número é menor.
    
    System.out.print("Digite o primeiro número: ");
        int numero1 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero2 = Integer.parseInt(sc.nextLine());
        
        if (numero1 < numero2) {
            System.out.println("O primerio número: ("+numero1+") é menor que o segundo ("+numero2+")");
        }else if (numero2 < numero1){
            System.out.println("O segundo número: ("+numero2+") é menor que o primeiro ("+numero1+")");
        }
      
}
}