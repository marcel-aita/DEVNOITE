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
public class OpRelacionais_exercicio_9 {
    
   public static void main(String[] args)throws UnsupportedEncodingException {
       
       //Crie um programa que leia dois números 
       //inteiros e verifique se o primeiro número 
       //é menor ou igual ao segundo. 
       //Exiba a mensagem apropriada.
       
       System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
       
       System.out.print("Digite um número: ");
       int numero1 = Integer.parseInt(sc.nextLine());
       System.out.print("Digite o segundo número: ");
       int numero2 = Integer.parseInt(sc.nextLine());
       
       if(numero1 <= numero2){
           System.out.print("O primeiro número ("+numero1+")é menor ou igual que o segundo número ("+numero2+")");
       }
        
}
}
