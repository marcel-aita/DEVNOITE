/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OperadoresLogicos;

import java.util.Scanner;

/**
 *
 * @author 182410162
 */
public class OpLogicos_exercicio_3 {
    

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Peça ao usuário para inserir sua nota em uma prova. 
//Se a nota for maior ou igual a 7 e o aluno não tiver faltado
//mais de 25% das aulas, exiba uma mensagem de "Aprovado". 
//Caso contrário, exiba "Reprovado".

      
    System.out.print("Insira sua nota na prova (1-10): ");
    int nota = Integer.parseInt(sc.nextLine());
    System.out.print("Insira sua frequencia (x/100): ");
    int frequencia = Integer.parseInt(sc.nextLine());
    
   
    if(frequencia >= 25 && nota >= 7){
        System.out.print("APROVADO!");
    }else{
        System.out.print("REPROVADO!");
    }
            
    

        

    }
    
}