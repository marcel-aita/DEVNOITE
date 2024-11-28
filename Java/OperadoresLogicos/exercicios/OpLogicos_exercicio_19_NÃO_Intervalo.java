/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperadoresLogicos;

import java.util.Scanner;
public class OpLogicos_exercicio_19_NÃO_Intervalo {

///Negação - Verificação de Intervalo
//Crie um programa que leia um número inteiro e verifique se o número não está no
//intervalo de 1 a 10 (inclusive). Se a condição for atendida, imprima uma mensagem
//dizendo que o número não está no intervalo
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();
        
        if(!(numero1 >= 1 && numero1 <= 10)){
            System.out.println("O número não esta no intervalo de 1 a 10");
        }
    }
    
}
