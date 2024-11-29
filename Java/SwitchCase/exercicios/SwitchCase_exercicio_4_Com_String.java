package SwitchCase;

import java.util.Scanner;
public class SwitchCase_exercicio_4_Com_String {

///Exercício 4: Switch-Case com Strings
//Crie um programa que receba o nome de um mês (em minúsculas) e use o switch-case para
//imprimir o número do mês correspondente:
//Se o usuário digitar um mês que não existe, mostre "Mês inválido".
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Digite o mês do ano atual: ");
        String mes = sc.nextLine().toLowerCase();
        
        switch (mes){
            case "janeiro":
                System.out.println("01");
                break;
            case "fevereiro":
                System.out.println("01");
                break;
            case "março":
                System.out.println("01");
                break;
            case "abril":
                System.out.println("01");
                break;
            case "maio":
                System.out.println("01");
                break;
            case "junho":
                System.out.println("01");
                break;
            case "julho":
                System.out.println("01");
                break;
            case "agosto":
                System.out.println("01");
                break;
            case "setembro":
                System.out.println("01");
                break;
            case "outubro":
                System.out.println("01");
                break;
            case "novembro":
                System.out.println("01");
                break;
            case "dezembro":
                System.out.println("01");
                break;
            default:
                System.out.println("Dia inválido");
        }
    }
    
}
