/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula;
import java.io.PrintStream;
import java.util.Scanner;
import java.io.UnsupportedEncodingException;

/**
 *
 * @author 182410162
 */
public class ListaJava_exercicio_1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws UnsupportedEncodingException {
        
    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    Scanner sc = new Scanner(System.in);
    
    // Crie um programa que imprima o seu nome completo, 
    //sua idade e sua cidade em linhas separadas.
        
        
    char name;
    int idade;
    String texto;
    String texto1;
    
    System.out.print("Digite seu nome: ");
    texto = sc.nextLine();
    
    System.out.print("Digite sua idade: ");
    idade = Integer.parseInt(sc.nextLine());
    
    System.out.print("Digite a cidade em que você mora: ");
    texto1 = sc.nextLine();
    
    System.out.println("Nome: "+ texto);
    System.out.println("Idade: "+ idade + " " + "anos");
    System.out.println("Cidade: "+ texto1);
    
    }
    }
    

