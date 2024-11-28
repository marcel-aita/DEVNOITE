/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperadoresLogicos;

import java.util.Scanner;
public class OpLogicos_20_E_OU_IntervaloNumeros {

///Combinação de E e Ou - Intervalo de Números
//Crie um programa que leia dois números e verifique se:
//O primeiro número está no intervalo de 1 a 10 e o segundo número é maior que 10.
//Imprima uma mensagem confirmando essas condições
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira o segundo número: ");
        int numero2 = sc.nextInt();
        
        if((numero1 <= 0 && numero1 >= 10) || numero2 >10){
            System.out.print("O número 1 está no intervalo de 1 a 10 e o número 2 é maior que 10");
        }
    }
    
}
