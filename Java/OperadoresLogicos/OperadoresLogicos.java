
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class OperadoresLogicos {

  
    public static void main(String args[])throws UnsupportedEncodingException {
        System.setOut(new PrintStream(System.out, true, "UTF-8"));
        Scanner sc = new Scanner(System.in);
         ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // E lógico (AND) - Simples
        System.out.println("Exemplo de E lógico (AND) simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero1 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero2 = Integer.parseInt(sc.nextLine());

        if (numero1 > 0 && numero2 > 0) {
            System.out.println("Ambos os números são positivos.");
        }

        // E lógico (AND) - Composta
        System.out.println("Exemplo de E lógico (AND) composta: ");
        if (numero1 > 0 && numero2 > 0) {
            System.out.println("Ambos os números são positivos.");
        } else {
            System.out.println("Pelo menos um dos números não é positivo.");
        }

        // E lógico (AND) - Encadeada
        System.out.println("Exemplo de E lógico (AND) encadeada: ");
        if (numero1 > 0 && numero2 > 0) {
            System.out.println("Ambos os números são positivos.");
        } else if (numero1 == 0 && numero2 == 0) {
            System.out.println("Ambos os números são zero.");
        } else {
            System.out.println("Pelo menos um dos números não é positivo.");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Ou lógico (OR) - Simples
        System.out.println("Exemplo de Ou lógico (OR) simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero3 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero4 = Integer.parseInt(sc.nextLine());

        if (numero3 > 0 || numero4 > 0) {
            System.out.println("Pelo menos um dos números é positivo.");
        }

        // Ou lógico (OR) - Composta
        System.out.println("Exemplo de Ou lógico (OR) composta: ");
        if (numero3 > 0 || numero4 > 0) {
            System.out.println("Pelo menos um dos números é positivo.");
        } else {
            System.out.println("Nenhum dos números é positivo.");
        }

        // Ou lógico (OR) - Encadeada
        System.out.println("Exemplo de Ou lógico (OR) encadeada: ");
        if (numero3 > 0 || numero4 > 0) {
            System.out.println("Pelo menos um dos números é positivo.");
        } else if (numero3 == 0 && numero4 == 0) {
            System.out.println("Ambos os números são zero.");
        } else {
            System.out.println("Pelo menos um dos números não é positivo.");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Negação - Simples
        System.out.println("Exemplo de Negação simples: ");
        System.out.print("Digite um número: ");
        int numero5 = Integer.parseInt(sc.nextLine());

        if (!(numero5 > 0)) {
            System.out.println("O número não é positivo.");
        }

        // Negação - Composta
        System.out.println("Exemplo de Negação composta: ");
        if (!(numero5 > 0)) {
            System.out.println("O número não é positivo.");
        } else {
            System.out.println("O número é positivo.");
        }

        // Negação - Encadeada
        System.out.println("Exemplo de Negação encadeada: ");
        if (!(numero5 > 0)) {
            System.out.println("O número não é positivo.");
        } else if (numero5 == 0) {
            System.out.println("O número é zero.");
        } else {
            System.out.println("O número é positivo.");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Combinação de E e Ou - Simples
        System.out.println("Exemplo de combinação de E (AND) e Ou (OR) simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero6 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero7 = Integer.parseInt(sc.nextLine());

        if (numero6 > 0 && (numero7 > 0 || numero7 == 0)) {
            System.out.println("O primeiro número é positivo e o segundo é zero ou positivo.");
        }

        // Combinação de E e Ou - Composta
        System.out.println("Exemplo de combinação de E (AND) e Ou (OR) composta: ");
        if (numero6 > 0 && (numero7 > 0 || numero7 == 0)) {
            System.out.println("O primeiro número é positivo e o segundo é zero ou positivo.");
        } else {
            System.out.println("O primeiro número não é positivo, ou o segundo não é zero ou positivo.");
        }

        // Combinação de E e Ou - Encadeada
        System.out.println("Exemplo de combinação de E (AND) e Ou (OR) encadeada: ");
        if (numero6 > 0 && (numero7 > 0 || numero7 == 0)) {
            System.out.println("O primeiro número é positivo e o segundo é zero ou positivo.");
        } else if (numero6 == 0) {
            System.out.println("O primeiro número é zero.");
        } else {
            System.out.println("O primeiro número não é positivo e o segundo não é zero ou positivo.");
        }
    ////////////////////////////////////////////////////////////////////////////////////////
    System.out.print("Digite sua idade: ");
        int idade = sc.nextInt();

        // Verifica se o usuário pode votar e beber legalmente
        boolean podeVotar = idade >= 18;
        boolean podeBeber = idade >= 21;

        // Verificação com operador lógico E (&&) para ambos os requisitos
        if (podeVotar && podeBeber) {
            System.out.println("Você pode votar e beber legalmente.");
        }
        // Verificação com operador lógico E (&&) para o voto
        else if (podeVotar && !podeBeber) {
            System.out.println("Você pode votar, mas não pode beber legalmente.");
        }
        // Verificação com operador lógico E (&&) para o consumo de bebida
        else if (!podeVotar && podeBeber) {
            System.out.println("Você não pode votar, mas pode beber legalmente.");
        }
        // Caso o usuário não possa votar nem beber
        else {
            System.out.println("Você não pode votar nem beber legalmente.");
        }

        // Exemplo de operador lógico OU (||) 
        if (podeVotar || podeBeber) {
            System.out.println("Você tem permissão para pelo menos uma das opções: votar ou beber.");
        } else {
            System.out.println("Você não tem permissão para votar nem para beber.");
        }
    
    
    
    
    
    
    }
}
