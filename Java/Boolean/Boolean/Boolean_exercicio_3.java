/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Boolean;

import java.util.Scanner;

public class Boolean_exercicio_3 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Solicite ao usuário se ele tem ingresso para um evento (booleano).
        // Solicite também se ele é amigo do organizador (booleano).
        // Se ele tiver ingresso ou for amigo do organizador,
        // exiba "Você tem acesso ao evento."
        // Caso contrário, exiba "Você não tem acesso ao evento."

        System.out.print("Você tem ingresso para o evento? ('1' para Sim e '0' para Não): ");
        int ingresso = Integer.parseInt(sc.nextLine());

        System.out.print("Você é amigo do organizador? ('1' para Sim e '0' para Não): ");
        int amigoDoOrganizador = Integer.parseInt(sc.nextLine());

        boolean ingressoBoolean = ingresso == 1;
        boolean amigoDoOrganizadorBoolean = amigoDoOrganizador == 1;

        if (ingressoBoolean || amigoDoOrganizadorBoolean) {
            System.out.println("Você tem acesso ao evento.");
        } else {
            System.out.println("Você não tem acesso ao evento.");
        }

        sc.close();
    }
}

