/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EstruturasDeRepetição;
import java.util.Scanner;
public class exercicio_Estrutura_De_Repetição_Numeros_Pares {
///Impressão de Números Pares:
//Escreva um programa que exiba todos os números pares entre 1 e
//100 utilizando o laço Para
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        int opcao;
        int numero;

        do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - Números pares de 1 a 100!");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    for (int i = 1; i <= 99; i++)
                    {
                        if(i % 2 == 0){
                            System.out.print(i + " "+" \n");
                        }
                    }
                    break;
            }

        } while (opcao != 0);
    }
    
}
