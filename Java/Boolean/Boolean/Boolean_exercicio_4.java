/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Boolean;

import java.util.Scanner;

public class Boolean_exercicio_4 {
    
//////4 - Condições de Aprovação:
//Solicite a nota do usuário (um valor numérico de 0 a 10).
//Solicite também o número de faltas em relação ao total de aulas (porcentagem de
//faltas).
//Se a nota for maior ou igual a 7 e as faltas forem menores ou iguais a 25%, exiba
//"Aprovado."
//Caso contrário, exiba "Reprovado."

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // Solicite a nota do usuário (um valor numérico de 0 a 10).
        System.out.print("Informe a sua nota (0 a 10): ");
        double nota = sc.nextDouble();

        // Solicite também o número de faltas em relação ao total de aulas (porcentagem de faltas).
        System.out.print("Informe a porcentagem de faltas (0 a 100): ");
        double porcentagemDeFaltas = sc.nextDouble();

        // Verifique se a nota é maior ou igual a 7 e se as faltas são menores ou iguais a 25%
        if (nota >= 7 && porcentagemDeFaltas <= 25) {
            System.out.println("Aprovado.");
        } else {
            System.out.println("Reprovado.");
        }

        sc.close();
    }
}


