/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EstruturasDeRepetição;

import java.util.Scanner;
public class exercicio_Estrutura_De_Repetição_Tabuada_De_UmNumero {

///Tabuada de um Número:
//Escreva um programa que solicite ao usuário um número e exiba a
//tabuada desse número (de 1 a 10) usando o laço Enquanto.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcao;
        int numeros;
         do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - Soma números");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = sc.nextInt();
            
            switch (opcao){
                case 1:
                    System.out.print("Insira um número: ");
                    numeros = sc.nextInt();
                    
                    int i = 1;
                    while (i <= 10) {
                        int resultado = numeros * i;
                        System.out.println(numeros + " x " + i++ + " = " + resultado);
                    }
                    break;
                       
            }
    
            } while (opcao != 0);
    }
    
}
