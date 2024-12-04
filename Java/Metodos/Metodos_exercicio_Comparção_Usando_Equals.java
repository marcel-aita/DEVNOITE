/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;

import java.util.Scanner;
public class Metodos_exercicio_Comparção_Usando_Equals {

///Comparação usando equals()
//Exercício: Crie um programa que leia duas strings e compare se elas são
//iguais usando o método equals(). Imprima uma mensagem dizendo se as
//strings são iguais ou diferentes.
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        String palavra1, palavra2;
        
        System.out.print("Digite a primeira String: ");
        palavra1 = sc.nextLine();
        System.out.print("Digite a segunda String: ");
        palavra2 = sc.nextLine();
        
        if (palavra1.equals(palavra2)){
            System.out.println("As String são iguais.\n");
        }else{
            System.out.println("As String são diferentes.\n");
        }
        
        
        
        
    }
    
}
