/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package br.com.tds.funcoes;

import java.util.Scanner;

/**
 *
 * @author lmmorais
 */
public class Funcoes {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcao;
        int num1, num2, recursivo, resultado;
        int[] vetor = new int[5];
        
        do {
            // Menu
            System.out.println("\nEscolha uma opção:");
            System.out.println("1. Explicar o que são funções");
            System.out.println("2. Explicar a estrutura de uma função");
            System.out.println("3. Explicar parâmetros e argumentos");
            System.out.println("4. Explicar valor de retorno");
            System.out.println("5. Explicar escopo de variáveis");
            System.out.println("6. Somar dois números");
            System.out.println("7. Subtrair dois números");
            System.out.println("8. Multiplicar dois números");
            System.out.println("9. Dividir dois números");
            System.out.println("10. Teste de função recursiva direta");
            System.out.println("11. Teste de função recursiva indireta");
            System.out.println("12. Testar funções");
            System.out.println("13. Tratamento de Erros");
            System.out.println("14. Somar elementos de um vetor");
            System.out.println("0. Sair");
            System.out.print("Digite sua opção: ");
            opcao = scanner.nextInt();
            
            switch (opcao) {
                case 1:
                    System.out.println("\nFunções são blocos de código que realizam uma tarefa específica.");
                    System.out.println("Elas ajudam a organizar o código, tornando-o mais modular e reutilizável.");
                    System.out.println("Por exemplo, uma função pode receber dois números, realizar uma operação (como soma) e retornar o resultado.");
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 2:
                    System.out.println("\nA estrutura de uma função é composta por três partes principais:");
                    System.out.println("Cabeçalho: Define o nome da função, o tipo de dado que ela retorna e os parâmetros que ela recebe.");
                    System.out.println("Corpo: O bloco de código onde a função executa suas operações.");
                    System.out.println("Retorno: Toda função tem a possibilidade de retornar um valor.");
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 3:
                    System.out.println("\nParâmetros e Argumentos:");
                    System.out.println("Os parâmetros são variáveis no cabeçalho de uma função que recebem valores.");
                    System.out.println("Os argumentos são os valores reais passados para esses parâmetros.");
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 4:
                    System.out.println("\nValor de Retorno:");
                    System.out.println("O valor de retorno é o valor que a função devolve ao final da execução.");
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 5:
                    System.out.println("\nEscopo de Variáveis:");
                    System.out.println("Escopo Local: Variáveis declaradas dentro de uma função só existem dentro dela.");
                    System.out.println("Escopo Global: Variáveis declaradas fora de qualquer função podem ser usadas por todas as funções.");
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 6: // Soma
                    System.out.print("Digite o primeiro número: ");
                    num1 = scanner.nextInt();
                    System.out.print("Digite o segundo número: ");
                    num2 = scanner.nextInt();
                    resultado = somar(num1, num2);
                    System.out.println("Resultado da soma: " + resultado);
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 7: // Subtração
                    System.out.print("Digite o primeiro número: ");
                    num1 = scanner.nextInt();
                    System.out.print("Digite o segundo número: ");
                    num2 = scanner.nextInt();
                    resultado = subtrair(num1, num2);
                    System.out.println("Resultado da subtração: " + resultado);
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 8: // Multiplicação
                    System.out.print("Digite o primeiro número: ");
                    num1 = scanner.nextInt();
                    System.out.print("Digite o segundo número: ");
                    num2 = scanner.nextInt();
                    resultado = multiplicar(num1, num2);
                    System.out.println("Resultado da multiplicação: " + resultado);
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 9: // Divisão
                    System.out.print("Digite o primeiro número: ");
                    num1 = scanner.nextInt();
                    System.out.print("Digite o segundo número: ");
                    num2 = scanner.nextInt();
                    resultado = dividirComErro(num1, num2);
                    System.out.println("Resultado da divisão: " + resultado);
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 10: // Recursão direta
                    System.out.print("Digite um número para teste recursivo direto: ");
                    recursivo = scanner.nextInt();
                    System.out.print("Contagem regressiva: ");
                    recursivaDireta(recursivo);
                    System.out.println();
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 11: // Recursão indireta
                    System.out.print("Digite um número para teste recursivo indireto: ");
                    recursivo = scanner.nextInt();
                    System.out.print("Contagem regressiva indireta: ");
                    recursivaIndireta(recursivo);
                    System.out.println();
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 14: // Somar elementos do vetor
                    System.out.println("Digite 5 números para o vetor:");
                    for (int i = 0; i < 5; i++) {
                        System.out.print("Digite o " + (i + 1) + "º número: ");
                        vetor[i] = scanner.nextInt();
                    }
                    resultado = somarVetor(vetor, 5);
                    System.out.println("Resultado da soma dos elementos do vetor: " + resultado);
                    System.out.println("Pressione Enter para voltar ao menu.");
                    scanner.nextLine();
                    scanner.nextLine();
                    break;

                case 0:
                    System.out.println("Saindo do programa...");
                    break;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
                    scanner.nextLine();
                    break;
            }
        } while (opcao != 0);

        scanner.close();
    }

    public static int somar(int a, int b) {
        return a + b;
    }

    public static int subtrair(int a, int b) {
        return a - b;
    }

    public static int multiplicar(int a, int b) {
        return a * b;
    }

    public static int dividirComErro(int a, int b) {
        if (b == 0) {
            System.out.println("Erro: Divisão por zero não é permitida.");
            return 0;
        }
        return a / b;
    }

    public static int somarVetor(int[] vetor, int tamanho) {
        int soma = 0;
        for (int i = 0; i < tamanho; i++) {
            soma += vetor[i];
        }
        return soma;
    }

    public static void recursivaDireta(int a) {
        if (a == 0) {
            System.out.print(a);
        } else {
            System.out.print(a + ", ");
            recursivaDireta(a - 1);
        }
    }

    public static void recursivaIndireta(int a) {
        if (a > 0) {
            System.out.print(a + ", ");
            recursivaDireta(a - 1);
        } else {
            System.out.print(a);
        }
    }
}
