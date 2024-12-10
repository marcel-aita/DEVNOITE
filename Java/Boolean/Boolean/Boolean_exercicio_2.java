/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Boolean;

import java.util.Scanner;

/**
 *
 * @author 182410162
 */
public class Boolean_exercicio_2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
               Scanner sc = new Scanner(System.in);
        
//Solicite a idade e se o usuário é estudante (booleano: true ou false).
//Se a idade for maior ou igual a 18 e ele for estudante, 
//exiba "Você pode votar e é estudante."
//Caso contrário, exiba "Você não pode votar ou não é estudante."

    System.out.print("Digite sua idade: ");
    int idade = sc.nextInt();
    System.out.print("Digite se você é estudante('Sim = 1') e ('Não = 0'): ");
    int estudante = sc.nextInt();
    
    boolean PodeVotar = idade >= 18;
    boolean ehestudante = estudante == 1;
    if (PodeVotar) {
        System.out.println("Você pode votar.");
    }else
        System.out.println("Você não pode votar.");
    {
    
    if (ehestudante){
        System.out.println("Você é estudante");
    }else{
        System.out.println("Você não é estudante");
    }
}
}
}
    
    

   
