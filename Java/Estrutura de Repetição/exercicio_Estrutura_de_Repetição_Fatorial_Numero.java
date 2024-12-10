/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EstruturasDeRepetição;

import java.util.Scanner;
public class exercicio_Estrutura_de_Repetição_Fatorial_Numero {

///Escreva um programa que solicite ao usuário um número e calcule
//seu fatorial utilizando o laço Para. 5!=5×4×3×2×1=120
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        int opcao;
        int numero;

        do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - Fatorial!");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    System.out.print("Insira um número: ");
                    numero = sc.nextInt();
                    int resultado = 1;
                    for (int i = 1; i <= numero; i++) {
                        resultado *= i;
                        System.out.print(numero + "*" + i + "=" + resultado + " ");
                    }
                    break;
            }

        } while (opcao != 0);
        
    }
    
}
