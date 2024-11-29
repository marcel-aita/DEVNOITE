/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SwitchCase;

import java.util.Scanner;

/**
 *
 * @author User
 */
public class SwitchCase_exercicio_8_Calculadora_Simples {

///Exercício 8: Switch-Case para Calculadora Simples
//Crie uma calculadora simples usando switch-case que faça as quatro operações básicas. Peça
//ao usuário para digitar dois números e escolher uma operação:
//1 → Soma
//2 → Subtração
//3 → Multiplicação
//4 → Divisão
//Se a operação escolhida for inválida, mostre "Operação inválida".
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Escolha sua opção: ");
        System.out.print("1 - Opção 1");
        System.out.print("2 - Opção");
        System.out.print("3 - Opção");
        System.out.print("4 - Opção");
        
        System.out.print("Digite sua opçao: ");
        int opcao = sc.nextInt();
        
        switch(opcao){
            case 1:
                System.out.print("Soma");
                System.out.print("Digite o primeiro numero: ");
                int numero1 = sc.nextInt();
                System.out.print("Digite o segundo número: ");
                int numero2 = sc.nextInt();
                int soma = numero1 + numero2;
                System.out.print("Soma = "+soma);
                break;
            case 2:
                System.out.print("Subtração");
                System.out.print("Digite o primeiro numero: ");
                int numero3 = sc.nextInt();
                System.out.print("Digite o segundo número: ");
                int numero4 = sc.nextInt();
                int subtrai = numero3 - numero4;
                System.out.print("Soma = "+subtrai);
                break;
            case 3:
                System.out.print("Multiplicação");
                System.out.print("Digite o primeiro numero: ");
                int numero5 = sc.nextInt();
                System.out.print("Digite o segundo número: ");
                int numero6 = sc.nextInt();
                int multiplica = numero5 * numero6;
                System.out.print("Multiplicação = "+multiplica);
                break;
            case 4:
                System.out.print("Divisão");
                System.out.print("Digite o primeiro numero: ");
                int numero7 = sc.nextInt();
                System.out.print("Digite o segundo número: ");
                int numero8 = sc.nextInt();
                int divide = numero7 % numero8;
                System.out.print("Soma = "+divide);
                break;
            case 5:
                //if(opcao =!){
    //}
                System.out.print("Opção Inválida");
                break;
    
}
}
}
