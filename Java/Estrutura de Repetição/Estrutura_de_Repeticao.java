/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package br.com.tds.estrutura_de_repeticao;

import java.util.Scanner;


public class Estrutura_de_Repeticao {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcao;

        do {
            System.out.println("Escolha uma estrutura de repetição para usar:");
            System.out.println("1 - do-while");
            System.out.println("2 - while");
            System.out.println("3 - for");
            System.out.println("4 - for-each");
            System.out.println("0 - Sair");
            System.out.print("Digite a opção: ");
            opcao = scanner.nextInt();

            switch (opcao) {
                case 1:
                    System.out.println("Você escolheu a estrutura do-while(faca enquanto).");
                    System.out.println("\nEstrutura do-while:");
                    System.out.println("O laço do-while é uma estrutura de repetição em que o código é executado pelo menos uma vez antes de verificar a condição.");
                    System.out.println("Isso ocorre porque a condição é verificada após a execução do bloco de código.");
                    System.out.println("No exemplo abaixo, o contador começa em 1 e vai até 5, e o código dentro do laço será executado enquanto a condição for verdadeira.");
                    
                    int contador = 1;
                    do {
                        System.out.println("Contador (do-while): " + contador);
                        contador++;
                    } while (contador <= 5);
                    break;

                case 2:
                    System.out.println("Você escolheu a estrutura while(enquanto).");
                    System.out.println("\nEstrutura while:");
                    System.out.println("O laço while verifica a condição antes de executar o código dentro do bloco.");
                    System.out.println("Se a condição for verdadeira, o código dentro do laço será executado repetidamente até que a condição se torne falsa.");
                    System.out.println("Se a condição for falsa no início, o código dentro do laço nem será executado.");
                    System.out.println("No exemplo abaixo, o contador começa em 1 e será incrementado até atingir 5.");
                    
                    int contadorWhile = 1;
                    while (contadorWhile <= 5) {
                        System.out.println("Contador (while): " + contadorWhile);
                        contadorWhile++;
                    }
                    break;

                case 3:
                    System.out.println("Você escolheu a estrutura for (para).");
                    System.out.println("\nEstrutura for:");
                    System.out.println("O laço for é utilizado quando se sabe o número exato de repetições.");
                    System.out.println("Ele possui três partes: a inicialização, a condição e o incremento/decremento.");
                    System.out.println("A inicialização é feita uma única vez antes da execução do laço, a condição é verificada antes de cada iteração, e o incremento é feito ao final de cada iteração.");
                    System.out.println("No exemplo abaixo, o contador começa em 1 e é incrementado até 5.");
                    
                    for (int i = 1; i <= 5; i++) {
                        System.out.println("Contador (for): " + i);
                    }
                    break;

                case 4:
                    System.out.println("Você escolheu a estrutura for-each(para em vetores).");
                    System.out.println("\nEstrutura for-each:");
                    System.out.println("O laço for-each é utilizado para percorrer arrays ou coleções de maneira simplificada.");
                    System.out.println("Ele percorre todos os elementos de uma coleção ou array sem a necessidade de um índice explícito.");
                    System.out.println("No exemplo abaixo, temos um array(vetor) de números de 1 a 5, e o laço percorre cada número e imprime.");
                    
                    int[] numeros = {1, 2, 3, 4, 5};
                    for (int numero : numeros) {
                        System.out.println("Contador (for-each): " + numero);
                    }
                    break;

                case 0:
                    System.out.println("Saindo...");
                    break;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        } while (opcao != 0);

    }
}
