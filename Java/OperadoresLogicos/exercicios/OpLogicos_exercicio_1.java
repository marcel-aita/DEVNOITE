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
public class OpLogicos_exercicio_1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
          Scanner sc = new Scanner(System.in);
//Peça ao usuário para inserir sua idade. Verifique se ele pode votar (18 anos ou mais) e
//se ele é estudante. Use operadores lógicos para exibir uma mensagem indicando se ele
//pode votar e é estudante.
        
       System.out.print("Digite sua idade (1 = maior de 18, 0 = menor de 18 <): ");
       int idade = Integer.parseInt(sc.nextLine());
       System.out.print("Digite se você é estudante (1 = Sim, 0 = Não): ");
       int estudante = Integer.parseInt(sc.nextLine());
       
       if (idade == 1 && estudante == 1){
           System.out.print("Você é maior de idade e pode votar.");
       }else{
           System.out.print("Você não pode votar e não é maior de idade");
       }
    }
    
}
