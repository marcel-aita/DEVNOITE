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
public class OpLogicos_exercicio_2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
          Scanner sc = new Scanner(System.in);
          
//Crie um programa que pergunte ao usuário se ele possui ingresso e se é amigo do
//organizador. O usuário deve ter acesso se possuir ingresso ou se for amigo do
//organizador. Use operadores lógicos para validar as condições.

    System.out.println("Você tem ingresso(0 para Não)?: ");
    int ingresso = Integer.parseInt(sc.nextLine());
    System.out.println("Você é amigo do organizador? (0 para Não)?: ");
    int amigoOrganizador = Integer.parseInt(sc.nextLine());
    
    if(ingresso !=0 && amigoOrganizador !=0){
        System.out.print("Você pode entrar");
    }
    
    }
    
}
