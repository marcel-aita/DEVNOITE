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
public class OpLogicos_exercicio_8 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
//Pergunte ao usuário em qual mês ele nasceu e em qual 
//região do Brasil ele mora. Determine se ele pode ser 
//considerado "veranista" se o mês for entre dezembro e fevereiro 
//e se morar no sul do Brasil. 
//Utilize operadores lógicos para essa verificação.

System.out.print("Qual mês você nasceu (1 = entre dezembro e fevereir 0 = outros)?: ");
int mesNasceu = Integer.parseInt(sc.nextLine());
System.out.print("Você mora no sul do Brasil (1 Sim 0 Não)?:");
int moraSul = Integer.parseInt(sc.nextLine());

boolean mesNasceuSim = mesNasceu == 1;
boolean moraSulSim = moraSul == 1;

if(mesNasceuSim && moraSulSim){
    System.out.println("Você é veranista.");
}else{
    System.out.println("Você não é veranista.");
}
    }
    
}
