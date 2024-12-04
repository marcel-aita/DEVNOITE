/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Project/Maven2/JavaApp/src/main/java/${packagePath}/${mainClassName}.java to edit this template
 */

package Metodos;


import java.util.Scanner;

/**
 *
 * @author lmmorais
 */
public class Metodos {

    public static void main(String[] args){
     
        
       Scanner sc = new Scanner(System.in);

        // Declaração das variáveis de entrada
        String palavra1, palavra2;

        // Entrada das duas palavras
        System.out.print("Digite a primeira String: ");
        palavra1 = sc.nextLine();

        System.out.print("Digite a segunda String: ");
        palavra2 = sc.nextLine();

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando equals()
        // O método equals() compara se duas strings são exatamente iguais (considerando maiúsculas/minúsculas).
        System.out.println("Usando equals():");
        if (palavra1.equals(palavra2)) {
            System.out.println("As Strings são iguais.\n");
        } else {
            System.out.println("As Strings são diferentes.\n");
            return;
        }
        
        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando equalsIgnoreCase()
        // O método equalsIgnoreCase() compara duas strings ignorando diferenças entre maiúsculas e minúsculas.
        System.out.println("Usando equalsIgnoreCase():");
        if (palavra1.equalsIgnoreCase(palavra2)) {
            System.out.println("As Strings são iguais (ignorando maiúsculas/minúsculas).\n");
        } else {
            System.out.println("As Strings são diferentes.\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando compareTo()
        // O método compareTo() compara duas strings lexicograficamente, retornando:
        // 0 se são iguais, valor negativo se a primeira é menor e positivo se a primeira é maior.
        System.out.println("Usando compareTo():");
        int resultadoCompareTo = palavra1.compareTo(palavra2);
        if (resultadoCompareTo == 0) {
            System.out.println("As Strings são iguais (compareTo).\n");
        } else if (resultadoCompareTo < 0) {
            System.out.println("A primeira String é lexicograficamente menor que a segunda (compareTo).\n");
        } else {
            System.out.println("A primeira String é lexicograficamente maior que a segunda (compareTo).\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando compareToIgnoreCase()
        // O método compareToIgnoreCase() compara duas strings lexicograficamente, ignorando diferenças entre maiúsculas e minúsculas.
        System.out.println("Usando compareToIgnoreCase():");
        int resultadoCompareToIgnoreCase = palavra1.compareToIgnoreCase(palavra2);
        if (resultadoCompareToIgnoreCase == 0) {
            System.out.println("As Strings são iguais (ignorando maiúsculas/minúsculas) (compareToIgnoreCase).\n");
        } else if (resultadoCompareToIgnoreCase < 0) {
            System.out.println("A primeira String é lexicograficamente menor que a segunda (ignorando maiúsculas/minúsculas) (compareToIgnoreCase).\n");
        } else {
            System.out.println("A primeira String é lexicograficamente maior que a segunda (ignorando maiúsculas/minúsculas) (compareToIgnoreCase).\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando contentEquals()
        // O método contentEquals() verifica se o conteúdo de duas strings é igual, podendo comparar com StringBuilder.
        System.out.println("Usando contentEquals():");
        if (palavra1.contentEquals(new StringBuilder(palavra2))) {
            System.out.println("As Strings têm o mesmo conteúdo (contentEquals).\n");
        } else {
            System.out.println("As Strings NÃO têm o mesmo conteúdo (contentEquals).\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando matches() com regex
        // O método matches() verifica se a string corresponde a uma expressão regular.
        System.out.println("Usando matches():");
        if (palavra1.matches("[A-Za-z]+")) {
            System.out.println("A primeira String contém apenas letras.\n");
        } else {
            System.out.println("A primeira String contém outros caracteres além de letras.\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando regionMatches()
        // O método regionMatches() compara uma parte (região) de uma string com outra string.
        System.out.println("Usando regionMatches():");
        if (palavra1.regionMatches(0, palavra2, 0, palavra2.length())) {
            System.out.println("A região da primeira String corresponde à segunda String.\n");
        } else {
            System.out.println("A região da primeira String NÃO corresponde à segunda String.\n");
        }

        ///////////////////////////////////////////////////{///////////////////////////////////////////////////////
        // Comparando usando regionMatchesIgnoreCase()
        // O método regionMatchesIgnoreCase() compara uma parte (região) de uma string com outra, ignorando maiúsculas/minúsculas.
        System.out.println("Usando regionMatchesIgnoreCase():");
        if (palavra1.regionMatches(true, 0, palavra2, 0, palavra2.length())) {
            System.out.println("A região da primeira String corresponde à segunda (ignorando maiúsculas/minúsculas).\n");
        } else {
            System.out.println("A região da primeira String NÃO corresponde à segunda (ignorando maiúsculas/minúsculas).\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando toLowerCase() e toUpperCase()
        // O método toLowerCase() converte todos os caracteres de uma string para minúsculas.
        // O método toUpperCase() converte todos os caracteres de uma string para maiúsculas.
        System.out.println("Usando toLowerCase() e toUpperCase():");
        if (!palavra1.equals(palavra1.toLowerCase())) {
            System.out.println("Primeira String em minúsculas: " + palavra1.toLowerCase());
        } else {
            System.out.println("A primeira String já está em minúsculas.");
        }

        if (!palavra2.equals(palavra2.toUpperCase())) {
            System.out.println("Segunda String em maiúsculas: " + palavra2.toUpperCase() + "\n");
        } else {
            System.out.println("A segunda String já está em maiúsculas.");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando indexOf() e lastIndexOf()
        // O método indexOf() retorna o índice da primeira ocorrência de um caractere em uma string.
        // O método lastIndexOf() retorna o índice da última ocorrência de um caractere em uma string.
        System.out.println("Usando indexOf() e lastIndexOf():");
        if (palavra1.indexOf("a") != -1) {
            System.out.println("Índice da primeira ocorrência de 'a' na primeira String: " + palavra1.indexOf("a") + "\n");
        } else {
            System.out.println("A letra 'a' não foi encontrada na primeira String.\n");
        }

        if (palavra1.lastIndexOf("a") != -1) {
            System.out.println("Índice da última ocorrência de 'a' na primeira String: " + palavra1.lastIndexOf("a") + "\n");
        } else {
            System.out.println("A letra 'a' não foi encontrada na primeira String.\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando trim()
        // O método trim() remove espaços em branco do início e do fim da string.
        System.out.println("Usando trim():");
        if (palavra1.trim().equals(palavra1)) {
            System.out.println("A primeira String não possui espaços no início ou fim.\n");
        } else {
            System.out.println("Primeira String sem espaços: '" + palavra1.trim() + "'\n");
        }

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando replace() e replaceAll()
        // O método replace() substitui todas as ocorrências de um caractere ou substring por outra.
        // O método replaceAll() substitui todas as ocorrências de um padrão (expressão regular) por outra.
        System.out.println("Usando replace() e replaceAll():");
        if (palavra1.contains("a")) {
            System.out.println("Substituindo 'a' por 'o' na primeira String: " + palavra1.replace("a", "o") + "\n");
        } else {
            System.out.println("A letra 'a' não foi encontrada na primeira String para substituir.\n");
        }

        if ("Java123".matches(".*\\d.*")) {
            System.out.println("Substituindo todos os dígitos por '#' na String 'Java123': " + "Java123".replaceAll("\\d", "#") + "\n");
        } else {
            System.out.println("Não há dígitos na String 'Java123' para substituir.\n");
        }

        sc.close();

        //////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Comparando usando equals()
        // Verificando novamente a igualdade de duas strings.
        boolean saoIguais = palavra1.equals(palavra2);
        System.out.println("Usando equals():");
        if (saoIguais) {
            System.out.println("As Strings são iguais.\n");
        } else {
            System.out.println("As Strings são diferentes.\n");
        }
    }
}
