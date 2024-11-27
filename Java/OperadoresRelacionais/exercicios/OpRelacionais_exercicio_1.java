/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula.OperadoresRelacionais;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;


public class OpRelacionais_exercicio_1 {
    
    public static void main(String args[])throws UnsupportedEncodingException {
       
       System.setOut(new PrintStream(System.out, true, "UTF-8"));
       Scanner sc = new Scanner(System.in);
    
    //Crie um programa que leia dois números inteiros do usuário e verifique se o primeiro
    //número é maior que o segundo. Exiba a mensagem de que o primeiro número é maior.
    
    System.out.print("Digite o primeiro número: ");
    int numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite o segundo número: ");
    int numero2 = Integer.parseInt(sc.nextLine());
    
    if (numero1 > numero2){
        System.out.println("O primeiro número: ("+numero1+") é maior que o segundo número: ("+numero2+")");
        
    }
    
    
}
}
