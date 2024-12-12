/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package br.com.tds.matrizes;

import java.util.Scanner;
import java.util.Arrays;


/**
 *
 * @author lmmorais
 */
public class Matrizes {
 public static Scanner scanner = new Scanner(System.in);
    public static void main(String[] args) {
         
        int opcao;
        int[][] matriz1 = new int[2][2];
        int[][] matriz2 = new int[2][2];
        int[][] resultado = new int[2][2];

        do {
            System.out.println("\nEscolha uma opção:");
            System.out.println("1. Explicar o que são matrizes");
            System.out.println("2. Explicar a estrutura de uma matriz");
            System.out.println("3. Somar duas matrizes");
            System.out.println("4. Subtrair duas matrizes");
            System.out.println("5. Multiplicar duas matrizes");
            System.out.println("6. Transposta de uma matriz");
            System.out.println("7. Testar operações com matrizes");
            System.out.println("8. Preencher matriz recursivamente");
            System.out.println("9. Ordenar elementos de uma matriz");
            System.out.println("0. Sair");
            System.out.print("Digite sua opção: ");
            opcao = scanner.nextInt();
            clearScreen();

            switch (opcao) {
                case 1:
                    explicarMatrizes();
                    break;
                case 2:
                    estruturaMatriz();
                    break;
                case 3:
                    somarMatrizes(matriz1, matriz2, resultado);
                    break;
                case 4:
                    subtrairMatrizes(matriz1, matriz2, resultado);
                    break;
                case 5:
                    multiplicarMatrizes(matriz1, matriz2, resultado);
                    break;
                case 6:
                    transpostaMatriz(matriz1);
                    break;
                case 7:
                    testarMatrizes();
                    break;
                case 8:
                    preencherMatrizRecursivamente(matriz1, 0, 0);
                    break;
                case 9:
                    ordenarMatriz();
                    break;
                case 0:
                    System.out.println("Saindo do programa...");
                    break;
                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        } while (opcao != 0);
    }

    private static void clearScreen() {
        System.out.print("\033[H\033[2J");
        System.out.flush();
    }

    private static void explicarMatrizes() {
        System.out.println("Matrizes são tabelas de dados organizadas em linhas e colunas.");
        System.out.println("Cada elemento de uma matriz é identificado por um par de índices: um para a linha e outro para a coluna.");
        System.out.println("Pressione Enter para voltar ao menu.");
        scanner.nextLine();
        scanner.nextLine();
    }

    private static void estruturaMatriz() {
        System.out.println("A estrutura de uma matriz é composta por:");
        System.out.println("Linhas: Cada linha da matriz é uma sequência horizontal de elementos.");
        System.out.println("Colunas: Cada coluna é uma sequência vertical de elementos.");
        System.out.println("Pressione Enter para voltar ao menu.");
        scanner.nextLine();
        scanner.nextLine();
    }

    private static void somarMatrizes(int[][] matriz1, int[][] matriz2, int[][] resultado) {
        System.out.println("Digite os elementos da primeira matriz:");
        preencherMatriz(matriz1);
        System.out.println("Digite os elementos da segunda matriz:");
        preencherMatriz(matriz2);

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                resultado[i][j] = matriz1[i][j] + matriz2[i][j];
            }
        }

        System.out.println("Resultado da soma:");
        imprimirMatriz(resultado);
    }

    private static void subtrairMatrizes(int[][] matriz1, int[][] matriz2, int[][] resultado) {
        System.out.println("Digite os elementos da primeira matriz:");
        preencherMatriz(matriz1);
        System.out.println("Digite os elementos da segunda matriz:");
        preencherMatriz(matriz2);

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                resultado[i][j] = matriz1[i][j] - matriz2[i][j];
            }
        }

        System.out.println("Resultado da subtração:");
        imprimirMatriz(resultado);
    }

    private static void multiplicarMatrizes(int[][] matriz1, int[][] matriz2, int[][] resultado) {
        System.out.println("Digite os elementos da primeira matriz:");
        preencherMatriz(matriz1);
        System.out.println("Digite os elementos da segunda matriz:");
        preencherMatriz(matriz2);

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                resultado[i][j] = 0;
                for (int k = 0; k < 2; k++) {
                    resultado[i][j] += matriz1[i][k] * matriz2[k][j];
                }
            }
        }

        System.out.println("Resultado da multiplicação:");
        imprimirMatriz(resultado);
    }

    private static void transpostaMatriz(int[][] matriz) {
        System.out.println("Digite os elementos da matriz:");
        preencherMatriz(matriz);

        System.out.println("Matriz original:");
        imprimirMatriz(matriz);

        System.out.println("Matriz transposta:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(matriz[j][i] + " ");
            }
            System.out.println();
        }
    }

    private static void preencherMatrizRecursivamente(int[][] matriz, int i, int j) {
        if (i < 2) {
            if (j < 2) {
                matriz[i][j] = i + j;
                preencherMatrizRecursivamente(matriz, i, j + 1);
            } else {
                preencherMatrizRecursivamente(matriz, i + 1, 0);
            }
        }

        System.out.println("Matriz preenchida recursivamente:");
        imprimirMatriz(matriz);
    }

    private static void ordenarMatriz() {
        int[] vetor = new int[4];
        int k = 0;

        System.out.println("Digite os elementos da matriz para ordenar:");
        int[][] matriz = new int[2][2];
        preencherMatriz(matriz);

        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                vetor[k++] = matriz[i][j];
            }
        }

        Arrays.sort(vetor);

        k = 0;
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                matriz[i][j] = vetor[k++];
            }
        }

        System.out.println("Matriz ordenada:");
        imprimirMatriz(matriz);
    }

    private static void preencherMatriz(int[][] matriz) {
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print("Elemento [" + (i + 1) + "," + (j + 1) + "]: ");
                matriz[i][j] = scanner.nextInt();
            }
        }
    }

    private static void imprimirMatriz(int[][] matriz) {
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz[i].length; j++) {
                System.out.print(matriz[i][j] + " ");
            }
            System.out.println();
        }
    }
     public static void testarMatrizes() {
        int[][] matrizA = {{1, 2}, {3, 4}};
        int[][] matrizB = {{5, 6}, {7, 8}};
        int[][] resultadoSoma = new int[2][2];
        int[][] resultadoMultiplicacao = new int[2][2];

        // Soma das matrizes
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                resultadoSoma[i][j] = matrizA[i][j] + matrizB[i][j];
            }
        }

        // Exibindo o resultado da soma
        System.out.println("Resultado da soma das matrizes A e B:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(resultadoSoma[i][j] + " ");
            }
            System.out.println();
        }

        // Multiplicação das matrizes
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                resultadoMultiplicacao[i][j] = 0;
                for (int k = 0; k < 2; k++) {
                    resultadoMultiplicacao[i][j] += matrizA[i][k] * matrizB[k][j];
                }
            }
        }

        // Exibindo o resultado da multiplicação
        System.out.println("\nResultado da multiplicação das matrizes A e B:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(resultadoMultiplicacao[i][j] + " ");
            }
            System.out.println();
        }

       
        System.out.println("\nResultado da transposta da matriz A:");
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 2; j++) {
                System.out.print(matrizA[j][i] + " ");
            }
            System.out.println();
        }
    }
}
