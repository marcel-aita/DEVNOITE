/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperadoresLogicos;

import java.util.Scanner;

public class OpLogicos_16_E_OU_Paridade {

///Combinação de E e Ou - Verificação de Paridade e Positividade
//Crie um programa que leia dois números e verifique se:
//O primeiro número é positivo e o segundo número é par. Imprima uma mensagem
//confirmando essas condições
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira o segundo número: ");
        int numero2 = sc.nextInt();
        
        if((numero1 > 0 || numero1 == 0) && numero2 % 2 == 0){
            System.out.println("O primeiro número é positivo e o segundo é par");
        }
        
    }
    
}
