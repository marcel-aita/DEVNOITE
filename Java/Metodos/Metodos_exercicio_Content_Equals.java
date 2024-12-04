/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;

import java.util.Scanner;
public class Metodos_exercicio_Content_Equals {

///Verificação de conteúdo exato usando contentEquals()
//Exercício: Crie um programa que verifique se duas strings possuem o
//mesmo conteúdo utilizando o método contentEquals() com um
//StringBuilder como argumento.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
            String palavra1, palavra2;
        
        System.out.print("Digite a primeira String: ");
        palavra1 = sc.nextLine();
        System.out.print("Digite a segunda String: ");
        palavra2 = sc.nextLine();
        
        if (palavra1.contentEquals(new StringBuilder(palavra2))){
            System.out.println("As Stings têm o mesmo conteúde (contentEquals).\n");
        }else{
            System.out.println("As Strings não tem o mesmo conteúdo (contentEquals).\n");
        }
    }
    
}
