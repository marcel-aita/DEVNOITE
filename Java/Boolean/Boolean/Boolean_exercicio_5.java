/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Boolean;

import java.util.Scanner;

//////5 - Definição de Maioridade e Responsabilidade:
//Solicite ao usuário se ele é maior de idade (maior ou igual a 18 anos) e se ele tem
//responsabilidade financeira (booleano).
//Se for maior de idade e tiver responsabilidade financeira, exiba "Você é maior de
//idade e tem responsabilidade financeira."
//Caso contrário, exiba "Você não tem as condições necessárias."

public class Boolean_exercicio_5 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Solicite se o usuário é maior de idade
        System.out.print("Você é maior de idade? ('1' para Sim e '0' para Não): ");
        int maiorDeIdade = Integer.parseInt(sc.nextLine());

        // Solicite se o usuário tem responsabilidade financeira
        System.out.print("Você tem responsabilidade financeira? ('1' para Sim e '0' para Não): ");
        int responsabilidadeFinanceira = Integer.parseInt(sc.nextLine());

        boolean maiorDeIdadeBoolean = maiorDeIdade == 1;
        boolean responsabilidadeFinanceiraBoolean = responsabilidadeFinanceira == 1;

        // Verifique as condições e exiba a mensagem correspondente
        if (maiorDeIdadeBoolean && responsabilidadeFinanceiraBoolean) {
            System.out.println("Você é maior de idade e tem responsabilidade financeira.");
        } else {
            System.out.println("Você não tem as condições necessárias.");
        }

        sc.close();
    }
}



