
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class OperadoresRelacionais {

   
    public static void main(String args[])throws UnsupportedEncodingException {
       
       System.setOut(new PrintStream(System.out, true, "UTF-8"));
       Scanner sc = new Scanner(System.in);
       
         ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Maior que - Simples
        System.out.println("Exemplo de maior que simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero1 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero2 = Integer.parseInt(sc.nextLine());

        if (numero1 > numero2) {
            System.out.println("O primeiro número: (" + numero1 + ") é maior que o segundo número: (" + numero2 + ")");
        }

        // Maior que - Composta
        System.out.println("Exemplo de maior que composta: ");
        if (numero1 > numero2) {
            System.out.println("O primeiro número: (" + numero1 + ") é maior que o segundo número: (" + numero2 + ")");
        } else {
            System.out.println("O segundo número: (" + numero2 + ") é maior que o primeiro número: (" + numero1 + ")");
        }
        // Maior que - Encadeada
        System.out.println("Exemplo Encadeado de maior que: ");
        if (numero1 > numero2) {
            System.out.println("O primeiro número: (" + numero1 + ") é maior que o segundo número: (" + numero2 + ")");
        } else if (numero1 == numero2) {
            System.out.println("Os números são iguais.");
        } else {
            System.out.println("O segundo número: (" + numero2 + ") é maior que o primeiro número: (" + numero1 + ")");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Maior ou igual - Simples
        System.out.println("Exemplo de maior ou igual simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero3 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero4 = Integer.parseInt(sc.nextLine());

        if (numero3 >= numero4) {
            System.out.println("O primeiro número: (" + numero3 + ") é maior ou igual ao segundo número: (" + numero4 + ")");
        }

        // Maior ou igual - Composta
        System.out.println("Exemplo de maior ou igual composta: ");
        if (numero3 >= numero4) {
            System.out.println("O primeiro número: (" + numero3 + ") é maior ou igual ao segundo número: (" + numero4 + ")");
        } else {
            System.out.println("O segundo número: (" + numero4 + ") é maior que o primeiro número: (" + numero3 + ")");
        }
         // Maior ou igual - Encadeada
        System.out.println("Exemplo Encadeado de maior ou igual: ");
          if (numero3 >= numero4) {
            System.out.println("O primeiro número: (" + numero3 + ") é maior ou igual ao próximo número: (" + numero4 + ")");
        } else if (numero3 == numero4) {
            System.out.println("O primeiro número: (" + numero3 + ") é igual ao próximo número: (" + numero4 + ")");
        } else {
            System.out.println("O próximo número: (" + numero3 + ") é maior que o primeiro número: (" + numero4 + ")");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Menor que - Simples
        System.out.println("Exemplo de menor que simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero5 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero6 = Integer.parseInt(sc.nextLine());

        if (numero5 < numero6) {
            System.out.println("O primeiro número: (" + numero5 + ") é menor que o segundo número: (" + numero6 + ")");
        }

        // Menor que - Composta
        System.out.println("Exemplo de menor que composta: ");
        if (numero5 < numero6) {
            System.out.println("O primeiro número: (" + numero5 + ") é menor que o segundo número: (" + numero6 + ")");
        } else {
            System.out.println("O segundo número: (" + numero6 + ") é menor que o primeiro número: (" + numero5 + ")");
        }
        
         // Menor que - Encadeada
        System.out.println("Exemplo de menor que encadeada: ");
        if (numero5 < numero6) {
            System.out.println("O primeiro número: (" + numero5 + ") é menor que o segundo número: (" + numero6 + ")");
        } else if (numero5 == numero6) {
            System.out.println("Os números são iguais.");
        } else {
            System.out.println("O segundo número: (" + numero6 + ") é menor que o primeiro número: (" + numero5 + ")");
        }

        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Menor ou igual - Simples
        System.out.println("Exemplo de menor ou igual simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero7 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero8 = Integer.parseInt(sc.nextLine());

        if (numero7 <= numero8) {
            System.out.println("O primeiro número: (" + numero7 + ") é menor ou igual ao segundo número: (" + numero8 + ")");
        }

        // Menor ou igual - Composta
        System.out.println("Exemplo de menor ou igual composta: ");
        if (numero7 <= numero8) {
            System.out.println("O primeiro número: (" + numero7 + ") é menor ou igual ao segundo número: (" + numero8 + ")");
        } else {
            System.out.println("O segundo número: (" + numero8 + ") é menor que o primeiro número: (" + numero7 + ")");
        }
        
        // Menor ou igual - Encadeada
        System.out.println("Exemplo de menor ou igual encadeada: ");
        if (numero7 < numero8) {
            System.out.println("O primeiro número: (" + numero7 + ") é menor que o segundo número: (" + numero8 + ")");
        } else if (numero7 == numero8) {
            System.out.println("Os números são iguais.");
        } else {
            System.out.println("O primeiro número: (" + numero7 + ") é maior que o segundo número: (" + numero8 + ")");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Igual - Simples
        System.out.println("Exemplo de igual simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero9 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero10 = Integer.parseInt(sc.nextLine());

        if (numero9 == numero10) {
            System.out.println("O primeiro número: (" + numero9 + ") é igual ao segundo número: (" + numero10 + ")");
        }

        // Igual - Composta
        System.out.println("Exemplo de igual composta: ");
        if (numero9 == numero10) {
            System.out.println("O primeiro número: (" + numero9 + ") é igual ao segundo número: (" + numero10 + ")");
        } else {
            System.out.println("Os números são diferentes.");
        }
        
         // Igual - Encadeada
        System.out.println("Exemplo de igual encadeada: ");
        if (numero9 == numero10) {
            System.out.println("O primeiro número: (" + numero9 + ") é igual ao segundo número: (" + numero10 + ")");
        } else if (numero9 > numero10) {
            System.out.println("O primeiro número: (" + numero9 + ") é maior que o segundo número: (" + numero10 + ")");
        } else {
            System.out.println("O primeiro número: (" + numero9 + ") é menor que o segundo número: (" + numero10 + ")");
        }
        ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        // Diferente - Simples
        System.out.println("Exemplo de diferente simples: ");
        System.out.print("Digite o primeiro número: ");
        int numero11 = Integer.parseInt(sc.nextLine());
        System.out.print("Digite o segundo número: ");
        int numero12 = Integer.parseInt(sc.nextLine());

        if (numero11 != numero12) {
            System.out.println("O primeiro número: (" + numero11 + ") é diferente do segundo número: (" + numero12 + ")");
        }

        // Diferente - Composta
        System.out.println("Exemplo de diferente composta: ");
        if (numero11 != numero12) {
            System.out.println("O primeiro número: (" + numero11 + ") é diferente do segundo número: (" + numero12 + ")");
        } else {
            System.out.println("Os números são iguais.");
        }
        
        // Diferente - Encadeada
        System.out.println("Exemplo de diferente encadeada: ");
        if (numero11 != numero12) {
            System.out.println("O primeiro número: (" + numero11 + ") é diferente do segundo número: (" + numero12 + ")");
        } else if (numero11 == numero12) {
            System.out.println("Os números são iguais.");
        } else {
            System.out.println("Essa condição não deve acontecer.");
        }

       
    }
}
