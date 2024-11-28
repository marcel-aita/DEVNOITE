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
public class OpLogicos_exercicio_5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Pergunte ao usuário o valor da compra 
//e se ele é membro de um programa de fidelidade. O
//frete é grátis se o valor da compra for maior que 100
//ouou se o usuário for membro. Mostre uma
//mensagem indicando se o frete é gratuito ou não.

    System.out.print("Qual o valor da compra: ");
    int compra = sc.nextInt();
    System.out.print("Você é membro do programa de fidelidade? (1 para Sim 0 para Não): ");
    int fidelidade = sc.nextInt();
    
    boolean compraFreteGratis = compra >= 100;
    boolean fidelidadeFreteGratis = fidelidade == 1;
    
    if(compraFreteGratis || fidelidadeFreteGratis){
        System.out.println("Frete Grátis.");
    }else{
        System.out.println(" ");
    }
    }
        
}
