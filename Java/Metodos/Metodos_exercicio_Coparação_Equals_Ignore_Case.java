package Metodos;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.util.Scanner;
public class Metodos_exercicio_Coparação_Equals_Ignore_Case {

///Comparação ignorando maiúsculas/minúsculas usando equalsIgnoreCase()
//Exercício: Modifique o programa anterior para usar equalsIgnoreCase() e
//verifique se as strings são iguais, ignorando as diferenças entre maiúsculas
//e minúsculas
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
