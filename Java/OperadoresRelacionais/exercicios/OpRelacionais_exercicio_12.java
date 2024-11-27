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
public class OpRelacionais_exercicio_12 {
    
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);
    
    //Crie um programa que leia dois números inteiros
    //e verifique se eles são iguais. 
    //Se forem, exiba uma mensagem dizendo que os números são iguais.
    
    System.out.print("Digite um número: ");
    int numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite o segundo número: ");
    int numero2 = Integer.parseInt(sc.nextLine());
    
    if(numero1 == numero2){
        System.out.println("Os dois números são iguais");
    }
    
    
}
}
