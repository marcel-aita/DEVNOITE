/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package br.com.tds.switchcase;

import java.util.Scanner;

/**
 *
 * @author lmmorais
 */
public class SwitchCase {

    public static void main(String[] args) {
         Scanner sc = new Scanner(System.in);
        System.out.println("Escolha uma opção de 1 a 3:");
        System.out.println("1 - Opção 1");
        System.out.println("2 - Opção 2");
        System.out.println("3 - Opção 3");

        System.out.print("Digite sua opção: ");
        int opcao = Integer.parseInt(sc.nextLine());

        switch (opcao) {
            case 1:
                System.out.print("Você escolheu a opção 1. Qual o seu nome? ");
                String nome1 = sc.nextLine();
                System.out.println("Olá, " + nome1 + "! Bem-vindo à opção 1.");
                break;

            case 2:
                System.out.print("Você escolheu a opção 2. Qual a sua idade? ");
                int idade = Integer.parseInt(sc.nextLine());
                int anoNascimento = 2024 - idade; // Considerando o ano atual como 2024
                System.out.println("Você nasceu no ano de " + anoNascimento + ".");
                break;

            case 3:
                System.out.print("Você escolheu a opção 3. Digite o primeiro número: ");
                int num1 = Integer.parseInt(sc.nextLine());
                System.out.print("Digite o segundo número: ");
                int num2 = Integer.parseInt(sc.nextLine());
                int soma = num1 + num2;
                System.out.println("A soma dos dois números é: " + soma);
                break;

            default:
                // Caso de opção inválida
                System.out.println("Opção inválida.");
        }
        

       
        System.out.println("\nExemplo de Switch-Case com múltiplos casos: ");
        System.out.print("Digite um número entre 1 e 5: ");
        int numero = Integer.parseInt(sc.nextLine());

        switch (numero) {
            case 1:
            case 2:
                System.out.println("Você escolheu um número entre 1 e 2.");
                break;
            case 3:
                System.out.println("Você escolheu a opção 3.");
                break;
            case 4:
            case 5:
                System.out.println("Você escolheu um número entre 4 e 5.");
                break;
            default:
                System.out.println("Número inválido.");
        }
 System.out.println("\nExemplo de Switch-Case: ");
        System.out.print("Digite o número de 1 a 3: ");
        int escolha = Integer.parseInt(sc.nextLine());

        switch (escolha) {
            case 1:
                System.out.println("Você escolheu a opção 1.");
                break;
            case 2:
                System.out.println("Você escolheu a opção 2.");
                break;
            case 3:
                System.out.println("Você escolheu a opção 3.");
                break;
            default:
                System.out.println("Opção não disponível.");
        }

        
        System.out.println("\nExemplo de Switch-Case com String: ");
        System.out.print("Digite um dia da semana (ex: segunda, terça, etc.): ");
        String dia = sc.nextLine().toLowerCase();  // Convertendo para minúsculas para garantir a correspondência

        switch (dia) {
            case "segunda":
                System.out.println("Hoje é segunda-feira.");
                break;
            case "terça":
                System.out.println("Hoje é terça-feira.");
                break;
            case "quarta":
                System.out.println("Hoje é quarta-feira.");
                break;
            case "quinta":
                System.out.println("Hoje é quinta-feira.");
                break;
            case "sexta":
                System.out.println("Hoje é sexta-feira.");
                break;
            case "sabado":
                System.out.println("Hoje é sábado.");
                break;
            case "domingo":
                System.out.println("Hoje é domingo.");
                break;
            default:
                System.out.println("Dia inválido.");
        }

       
        System.out.println("\nExemplo de Switch-Case fall-through: ");
        System.out.print("Digite um número de 1 a 10: ");
        int numeroEscolha = Integer.parseInt(sc.nextLine());

        switch (numeroEscolha) {
            case 1:
            case 2:
            case 3:
                System.out.println("Escolha entre 1 e 3.");
                break;
            case 4:
            case 5:
            case 6:
                System.out.println("Escolha entre 4 e 6.");
                break;
            case 7:
            case 8:
            case 9:
                System.out.println("Escolha entre 7 e 9.");
                break;
            default:
                System.out.println("Número fora do intervalo de 1 a 9.");
        }
         System.out.println("1. Exemplo de Switch-Case com Fall-Through:");
        System.out.print("Digite um número entre 1 e 3: ");
        int numeroFallThrough = sc.nextInt();
        
        switch (numeroFallThrough) {
            case 1:
                System.out.println("Número 1");
            case 2:
                System.out.println("Número 2");
            case 3:
                System.out.println("Número 3");
            default:
                System.out.println("Número desconhecido");
        }
         
    }
}
