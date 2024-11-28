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
public class OpLogicos_exercicio_6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Peça ao usuário para inserir um número. 
//Exiba uma mensagem indicando se o número é par e
//maior que 10 ou ímpar e menor que 5.
//Use operadores lógicos para combinar as condições.

    System.out.print("Insira um número: ");
    int numero = sc.nextInt();
    
    if(numero%2 == 0 && numero > 10){
        System.out.print("O número é par e maior que 10.");
    }if(!(numero%2 == 0) && numero < 5){
        System.out.print("O número é ímpar e menor que 5");
    }
    }
    
}
