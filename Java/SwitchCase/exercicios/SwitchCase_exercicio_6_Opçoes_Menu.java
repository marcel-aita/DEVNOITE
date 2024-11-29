/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SwitchCase;

import java.util.Scanner;

/**
 *
 * @author User
 */
public class SwitchCase_exercicio_6_Opçoes_Menu {

///Exercício 6: Switch-Case com Opções de Menu
//Crie um programa que apresente um menu de opções com os seguintes itens:
//1. Cadastrar um novo usuário
//2. Exibir a lista de usuários cadastrados
//3. Sair Use um switch-case para mostrar a opção correspondente ao número escolhido
//pelo usuário. Se o número for inválido, mostre "Opção inválida".
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.println("Escolha uma opção: ");
        System.out.println("1 - Cadastrar novo usuário");
        System.out.println("2 - Exibir a lista de usuários cadastrados");
        System.out.println("3 - Sair");
        
        System.out.print("Digite a opção desejada: ");
        int opcao = sc.nextInt();
        
        switch (opcao){
            
            case 1:
                System.out.print("Insira seu nome completo: ");
                String nome = sc.nextLine();
                System.out.print("Nome: " + nome + ".");
                System.out.print("Insira sua idade: ");
                int idade = sc.nextInt();
                System.out.print("Idade: "+ idade + ".");
                break;
            
            case 2:
                System.out.print("Exibir a lista de usuários: ");
                break;
                
            case 3:
                System.out.print("Sair");
                break;
        }
        
        
    }
    
}
