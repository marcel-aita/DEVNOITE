/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperadoresLogicos;

import java.util.Scanner;
public class OpLogicos_17_E_Intervalo {

///E Lógico (AND) - Verificação de Intervalo
//Crie um programa que leia dois números inteiros e verifique se ambos os números estão
//no intervalo de 1 a 10 (inclusive). Se ambos os números estiverem nesse intervalo,
//imprima uma mensagem confirmando.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira o segundo número: ");
        int numero2 = sc.nextInt();
        
        if((numero1 >= 1 && numero1 > 10) && (numero2 >= 1 && numero2 > 10) ){
            System.out.println("Ambos os números estão no intervalo de 1 a 10");
        }
    }
    
}
