/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EstruturasDeRepetição;

import java.util.Scanner;
public class exercicio_Estrutura_De_Repetição_Contagem_Regressiva {

///Contagem Regressiva:
//Escreva um programa que faça uma contagem regressiva de 10 até 1,
//exibindo cada número.
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcao;
        
         do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - Contagem Regressiva");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = scanner.nextInt();
            
            switch (opcao){
                case 1:
                    for (int i = 10; i >= 1; i--){
                        System.out.print(+ i +","+" ");
                    }
                    break;
            }
    
            } while (opcao != 0);
    }
}


