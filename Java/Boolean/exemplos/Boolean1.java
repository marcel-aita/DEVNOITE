
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao.tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao_exercicios;

import java.util.Scanner;

/**
 *
 * @author Lucas
 */
public class Boolean1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Digite sua idade: ");
        int idade = sc.nextInt();

        // Verifica se pode votar (idade maior ou igual a 18)
        boolean podeVotar = idade >= 18;

        if (podeVotar) {
            System.out.println("Você pode votar.");
        } else {
            System.out.println("Você não pode votar.");
        }

    }
    
}
