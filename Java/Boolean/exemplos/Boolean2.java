
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao.tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao_exercicios;

import java.util.Scanner;

public class Boolean2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
                Scanner sc = new Scanner(System.in);

        System.out.print("Digite sua idade: ");
        int idade = sc.nextInt();

        System.out.print("Você é estudante? (1 para Sim, 0 para Não): ");
        int eEstudante = sc.nextInt();

        boolean podeVotar = idade >= 18;
        boolean eEstudanteBoolean = eEstudante == 1;

        if (podeVotar) {
            System.out.println("Você pode votar.");
        } else {
            System.out.println("Você não pode votar.");
        }

        if (eEstudanteBoolean) {
            System.out.println("Você é estudante.");
        } else {
            System.out.println("Você não é estudante.");
        }


    }
    
}
