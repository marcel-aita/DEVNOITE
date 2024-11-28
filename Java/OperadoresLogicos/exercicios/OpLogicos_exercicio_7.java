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
public class OpLogicos_exercicio_7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Pergunte ao usuário se ele é um novo cliente e se 
//ele possui um código de desconto. 
//O cliente deve receber um desconto se ele for novo
//ouou se tiver um código. Exiba uma
//mensagem informando se ele pode receber o desconto

    System.out.print("Você é um novo cliente (1 para Sim 0 para Não): ");
    int novoCliente = Integer.parseInt(sc.nextLine());
    System.out.print("Você possui um código para desconto (1 para Sim 0 para Não): ");
    int codigoDesconto = Integer.parseInt(sc.nextLine());
    
    boolean novoClienteDesconto = novoCliente == 1;
    boolean codigoNovoDesconto = codigoDesconto == 1;
    
    if(novoClienteDesconto || codigoNovoDesconto){
        System.out.println("Você tem direito ao desconto.");
    }else{
        System.out.println("Você não tem direito ao desconto.");
    }
    
    
    }
    
}
