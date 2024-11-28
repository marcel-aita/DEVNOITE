/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperadoresLogicos;

import java.util.Scanner;
public class OpLogicos_18_OU_Intervalo {

//Ou Lógico (OR) - Verificação de Intervalo
//Crie um programa que leia dois números inteiros e verifique se pelo menos um número
//está no intervalo de 1 a 10 (inclusive). Se essa condição for atendida, imprima uma
//mensagem confirmando    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira o segundo número: ");
        int numero2 = sc.nextInt();
        
        if((numero1 >= 1 || numero1 > 10) || (numero2 >= 1 || numero2 > 10)){
            System.out.println("Ambos os números estão no intervalo de 1 a 10");
        }
    }
    
}
