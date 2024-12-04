/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;

import java.util.Scanner;
public class Metodos_exercicio_Comparação_Compare_To {

///Comparação lexicográfica usando compareTo()
//Exercício: Crie um programa que leia duas strings e compare-as usando o
//método compareTo(). Imprima se a primeira string é lexicograficamente
//menor, maior ou igual à segunda
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
            String palavra1, palavra2;
        
        System.out.print("Digite a primeira String: ");
        palavra1 = sc.nextLine();
        System.out.print("Digite a segunda String: ");
        palavra2 = sc.nextLine();
        
        int resultadoCompareTo = palavra1.compareTo(palavra2);
        
        if(resultadoCompareTo == 0){
            System.out.print("As Strings são iguais");
        }else if (resultadoCompareTo > 0){
            System.out.print("A primeira String é maior que a segunda");
        }else{
            System.out.print("A primeira String é menor que a segunda");
        }
        
        
    }
    
}
