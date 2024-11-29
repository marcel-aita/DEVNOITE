/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SwitchCase;

import java.util.Scanner;
public class SwitchCase_exercicio_5_Dias_Semana {

///Exercício 5: Switch-Case com Dias da Semana
//Peça ao usuário para digitar um dia da semana (em minúsculas). Use o switch-case para
//imprimir o nome do dia completo:
//"segunda" → "Hoje é segunda-feira".
//"terça" → "Hoje é terça-feira".
//"quarta" → "Hoje é quarta-feira".
//... até domingo.
//Se o usuário digitar um dia inválido, mostre "Dia inválido"
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Digite um dia da semana: ");
        String dia = sc.nextLine().toLowerCase();
        
        switch (dia) {
            case "segunda":
                System.out.println("Hoje é segunda-feira");
                break;
            case "terça":
                System.out.println("Hoje é terça-feira");
                break;
            case "quarta":
                System.out.println("Hoje é quarta-feira");
                break;
            case "quinta":
                System.out.println("Hoje é quinta-feira");
                break;
            case "sexta":
                System.out.println("Hoje é sexta-feira");
                break;
            case "sábado":
                System.out.println("Hoje é sábado-feira");
                break;
            case "domingo":
                System.out.println("Hoje é domingo-feira");
            default:
                System.out.print("Dia inválido");
                
        }
    }
    
}
