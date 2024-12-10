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
public class Boolean_exercicio_1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Solicite ao usuário para inserir sua idade.
//Verifique se ele pode votar (idade maior ou igual a 18 anos).
//Exiba "Você pode votar." se ele puder votar ou "Você não pode votar." caso
//contrário.
        
    System.out.print("Digite sua idade: ");
    int idade = sc.nextInt();

        
    boolean podeVotar = idade >= 18; 
    if (podeVotar) {
        System.out.println("Você pode votar.");
    }
}
}
