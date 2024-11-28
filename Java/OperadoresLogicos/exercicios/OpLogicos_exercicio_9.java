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
public class OpLogicos_exercicio_9 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Crie um programa que pergunte se o usuário 
//possui um crachá de identificação e se ele
//já trabalha na empresa há mais de um ano. 
//O acesso deve ser concedido se o usuário
//tiver o crachá ou se tiver mais de um ano de empresa.

System.out.print("Você possui um crachá de ID? (1 Sim 0 Não): ");
int crachaID = Integer.parseInt(sc.nextLine());
System.out.print("Você trabalha na empresa a mais de um ano? (1 Sim 0 Não): ");
int trabalhaAno = Integer.parseInt(sc.nextLine());

boolean crachaIDSim = crachaID == 1;
boolean trabalhaAnoSim = trabalhaAno == 1;

if(crachaIDSim || trabalhaAnoSim){
    System.out.print("Acesso concedido.");
}else{
    System.out.println("Acesso negado.");
}
    }
    
}
