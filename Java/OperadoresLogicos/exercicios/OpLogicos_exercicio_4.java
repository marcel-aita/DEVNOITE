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
public class OpLogicos_exercicio_4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Crie um sistema de login simples. 
//Pergunte ao usuário se ele tem um nome de usuário e uma
//senha. O acesso deve ser concedido se o nome de usuário 
//for "admin" e a senha for "1234". Utilize operadores lógicos 
//para verificar ambas as condições.

    
    System.out.println("Insira o nome de usúario (1 = 'admin'): ");
    int nomeUsuario = sc.nextInt();
    System.out.println("Insira sua senha: ");
    int senha = sc.nextInt();
    
    boolean admin = nomeUsuario == 1;
    boolean senhaCorreta = senha == 123;
    
    if(admin && senhaCorreta){
        System.out.print("Usuário cadastrado.");
    }else{
        System.out.print("Usuário não cadastrado");
    }
    
    
    
    }
    
}
