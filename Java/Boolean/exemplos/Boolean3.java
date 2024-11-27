package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao.tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao_exercicios;

import java.util.Scanner;

public class Boolean3 {
     public static void main(String[] args) {
         Scanner sc = new Scanner(System.in);
        System.out.print("Você tem ingresso para o evento? (1 para Sim, 0 para Não): ");
        int temIngresso = Integer.parseInt(sc.nextLine());
        System.out.print("Você é amigo do organizador? (1 para Sim, 0 para Não): ");
        int eAmigoDoOrganizador = Integer.parseInt(sc.nextLine());
        boolean temIngressoBoolean = temIngresso == 1;
        boolean eAmigoDoOrganizadorBoolean = eAmigoDoOrganizador == 1;
        if (temIngressoBoolean) {
            System.out.println("Você tem acesso ao evento.");
        } else if (eAmigoDoOrganizadorBoolean) {
            System.out.println("Você tem acesso ao evento.");
        } else {
            System.out.println("Você não tem acesso ao evento.");
        }
    }
    
}
