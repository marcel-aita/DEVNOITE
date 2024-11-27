
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao.tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao_exercicios;

import java.util.Scanner;

public class Boolean2_1 {

   
    public static void main(String[] args) {
                Scanner sc = new Scanner(System.in);

        System.out.print("Digite sua idade: ");
        int idade = Integer.parseInt(sc.nextLine());

        System.out.print("Você é estudante? (1 para Sim, 0 para Não): ");
        int eEstudante = Integer.parseInt(sc.nextLine());

        boolean podeVotar = idade >= 18;
        boolean eEstudanteBoolean = eEstudante == 1;

          if (podeVotar) {
            if (eEstudanteBoolean) {
                System.out.println("Você pode votar e é estudante.");
            } else {
                System.out.println("Você pode votar, mas não é estudante.");
            }
        } else {
            if (eEstudanteBoolean) {
                System.out.println("Você não pode votar, mas é estudante.");
            } else {
                System.out.println("Você não pode votar e não é estudante.");
            }
        }


    }
    
}
