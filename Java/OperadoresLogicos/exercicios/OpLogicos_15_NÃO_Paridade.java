package OperadoresLogicos;

import java.util.Scanner;


public class OpLogicos_15_NÃO_Paridade {

///Negação - Verificação de Paridade
//Crie um programa que leia um número e verifique se o número não é par (usando a
//negação). Se a condição for atendida, imprima uma mensagem dizendo que o número não é par.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();

        
        if(!(numero1 % 2 == 0)){
            System.out.println("O número não é par");
        }
    }
    
}
