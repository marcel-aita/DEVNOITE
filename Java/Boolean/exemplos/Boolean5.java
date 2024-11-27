
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao.tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao_exercicios;

import java.util.Scanner;


public class Boolean5 {

    public static void main(String[] args) {
         Scanner sc = new Scanner(System.in);
        System.out.print("Digite sua idade: ");
        int idade = Integer.parseInt(sc.nextLine());
        System.out.print("Você tem responsabilidade financeira? (true para Sim, false para Não): ");
        boolean temResponsabilidadeFinanceira = sc.nextBoolean();
        if (idade >= 18) {
            
            if (temResponsabilidadeFinanceira) {
                System.out.println("Você é maior de idade e tem responsabilidade financeira.");
            } else {
                System.out.println("Você é maior de idade, mas não tem responsabilidade financeira.");
            }
        } else {
            
            System.out.println("Você não tem as condições necessárias.");
        }

    }
    
}
