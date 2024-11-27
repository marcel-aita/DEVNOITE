/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class OpRelacionais_exercicio_18 {

   
    public static void main(String args[])throws UnsupportedEncodingException {
       
       System.setOut(new PrintStream(System.out, true, "UTF-8"));
       Scanner sc = new Scanner(System.in);
    
    //Crie um programa que leia três números inteiros e
    //compare-os utilizando estruturas de comparação encadeadas. 
    //O programa deve exibir o maior, o menor e verificar 
    //se algum número é igual a outro.
    
    System.out.print("Insira um numero: ");
    int numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Insira um numero: ");
    int numero2 = Integer.parseInt(sc.nextLine());
    System.out.print("Insira um numero: ");
    int numero3 = Integer.parseInt(sc.nextLine());
    
    If(numero1 == numero2 && numero2 == numero3){
        System.out.print("Os números são iguais.");
    }else
            }
}

