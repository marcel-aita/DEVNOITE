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
public class OpLogicos_exercicio_10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Crie um jogo simples onde o usuário 
//deve adivinhar um número. Pergunte ao usuário
//se o palpite está entre 1 e 10 e se ele 
//já tentou adivinhar antes. Exiba uma mensagem
//informando se ele pode continuar jogando, usando operadores lógicos

    System.out.print("Advinhe um número:");
    int numero = sc.nextInt();
    System.out.print("Você já tentou adivinhar antes? (1 Sim 0 Não): ");
    int palpite = sc.nextInt();
    
    
    if(numero == 7 && palpite == 0){
        System.out.print("Você ganhou!");
    }else if(!(numero == 7) && palpite == 0){
        System.out.print("Continue tentanto");
    }else{
        System.out.print("Você perdeu!");
    }
    }
    
}
