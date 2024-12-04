/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Metodos;

import java.util.Scanner;
public class Metodos_exercicio_Compare_To_Ignore_Case {

///Comparação lexicográfica ignorando maiúsculas/minúsculas usando
//compareToIgnoreCase()
//Exercício: Modifique o programa anterior para usar
//compareToIgnoreCase(). Imprima o resultado da comparação ignorando a
//diferenciação entre maiúsculas e minúsculas.
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
            String palavra1, palavra2;
        
        System.out.print("Digite a primeira String: ");
        palavra1 = sc.nextLine();
        System.out.print("Digite a segunda String: ");
        palavra2 = sc.nextLine();
        
        int resultadoCompareToIgnoreCase = palavra1.compareToIgnoreCase(palavra2);
        
        if(resultadoCompareToIgnoreCase == 0){
            System.out.print("As duas Strings são iguais");
        }else if(resultadoCompareToIgnoreCase > 0){
            System.out.print("A primeria String é maior que a segunda");
        }else{
            System.out.print("A primeira String é menor");
        }
    }
    
}
