/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SwitchCase;

import java.util.Scanner;
public class SwitchCase_exercicio_1_Simples {

///Exercício 1: Switch-Case Simples
//Crie um programa que solicite ao usuário que digite um número entre 1 e 3.
//Use o switch-case para imprimir uma mensagem correspondente a cada número:
//Se o número for 1, mostre "Você escolheu a opção 1".
//Se o número for 2, mostre "Você escolheu a opção 2".
//Se o número for 3, mostre "Você escolheu a opção 3".
//Para qualquer outro número, mostre "Opção inválida".
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
       System.out.println("Digite um número entre 1 e 3: ");
       System.out.println("1 - Opção 1");
       System.out.println("2 - Opção 2");
       System.out.println("3 - Opção 3");
       
       System.out.print("Digite sua opção: ");
       int opcao = sc.nextInt();
       
       switch (opcao){
           case 1:
               System.out.println("Você escolheu a opção 1");
               break;
           case 2:
               System.out.print("Você escolheu a opção 2");
               break;
           case 3:
               System.out.println("Você escolheu a opção 3");
               break;
           default:
               System.out.println("Opção inválida");
       }
       
        
        
        
    }
    
}
