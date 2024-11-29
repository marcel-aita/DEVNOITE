package SwitchCase;

import java.util.Scanner;
public class SwitchCase_exercicio_3_Intervalos_Numericos {

///Exercício 3: Switch-Case com Intervalos numéricos
//Solicite ao usuário que digite um número entre 1 e 10 e utilize o switch-case para categorizar o
//número em intervalos:
//Se o número for 1, 2, ou 3, mostre "Escolha entre 1 e 3".
//Se o número for 4, 5, ou 6, mostre "Escolha entre 4 e 6".
//Se o número for 7, 8, ou 9, mostre "Escolha entre 7 e 9".
//Para qualquer outro número, mostre "Número fora do intervalo de 1 a 9".
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Digite um número entre 1 e 10");
        int numeroEscolha = sc.nextInt();
        
        switch (numeroEscolha){
            case 1:
            case 2:
            case 3:
                System.out.println("Escolha entre 1 e 3");
            case 4:
            case 5:
            case 6:
                System.out.println("Escolha entre 4 e 6");
            case 7:
            case 8:
            case 9:
                System.out.println("Escolha entre 7 e 9");
                break;
            default:
                System.out.println("Número fora do intervalo 1 a 9");
        }
        
    }
    
}
