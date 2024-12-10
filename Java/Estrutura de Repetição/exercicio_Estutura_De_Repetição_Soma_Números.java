/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EstruturasDeRepetição;

import java.util.Scanner;
public class exercicio_Estutura_De_Repetição_Soma_Números {

///Soma dos Números:
//Escreva um programa que solicite ao usuário que insira números
//positivos e some esses números até que o usuário insira um número
//negativo. Exiba a soma total no final.
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcao;
           int numeros;
                    int soma;
         do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - Soma números");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = scanner.nextInt();
            
            switch (opcao){
                case 1:
                    soma = 0;                             
                    do{                
                        System.out.print("Insira um número:");
                        numeros = scanner.nextInt();
                            
                        if(numeros >= 0){
                            soma += numeros;
                            System.out.println("Soma= "+ soma);
                        }
                        }while(numeros >= 0);                         
                         break;
                       
            }
    
            } while (opcao != 0);
    }
    
}
