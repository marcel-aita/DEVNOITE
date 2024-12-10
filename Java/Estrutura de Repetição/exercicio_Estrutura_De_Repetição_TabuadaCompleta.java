/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package EstruturasDeRepetição;

import java.util.Scanner;

public class exercicio_Estrutura_De_Repetição_TabuadaCompleta {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int opcao;
        int numero;

        do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - Tabuada completa");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = sc.nextInt();

            switch (opcao) {
                case 1:
                    System.out.print("Insira um número: ");
                    numero = sc.nextInt();

                    for (int i = 1; i <= 10; i++) {
                        int resultado = numero * i;
                        System.out.println(numero + " x " + i + " = " + resultado);
                    }
                    break;
            }

        } while (opcao != 0);
}
}

