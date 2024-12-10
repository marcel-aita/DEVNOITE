///Tabuada Completa:
//Escreva um programa que solicite ao usuário um número e exiba sua
//tabuada de 1 a 10 usando o laço Para.
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

