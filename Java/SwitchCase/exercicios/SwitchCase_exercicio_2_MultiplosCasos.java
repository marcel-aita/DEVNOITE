/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SwitchCase;

import java.util.Scanner;
public class SwitchCase_exercicio_2_MultiplosCasos {

///Exercício 2: Switch-Case com Múltiplos Casos
//Peça ao usuário para digitar um número entre 1 e 5. Use o switch-case para imprimir
//mensagens de acordo com o número:
//Se o número for 1 ou 2, mostre "Você escolheu um número entre 1 e 2".
//Se o número for 3, mostre "Você escolheu a opção 3".
//Se o número for 4 ou 5, mostre "Você escolheu um número entre 4 e 5".
//Para qualquer outro número, mostre "Número inválido".
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
    System.out.println("Escolha uma opção");
    System.out.println("1 - Opção 1");
    System.out.println("2 - Opção 2");
    System.out.println("3 - Opção 3");
    System.out.println("4 - Opção 4");
    System.out.println("5 - Opção 5");
    
    System.out.print("Digite sua opção: ");
    int opcao = Integer.parseInt(sc.nextLine());
    
    switch (opcao){
        case 1:
            System.out.print("Você escolheu um número entre 1 e 2");
        case 2:
            System.out.print("Você escolheu um número entre 1 e 2");
        case 3:
            System.out.print("Você escolheu a opção 3");
        case 4:
            System.out.print("Você escolheu um número entre 4 e 5");
        case 5:
            System.out.print("Você escolheu um número entre 4 e 5");
        default:
            System.out.print("Opção Inválida");
    }
        
    }
    
}
