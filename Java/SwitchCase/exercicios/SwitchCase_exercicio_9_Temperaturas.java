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
public class SwitchCase_exercicio_9_Temperaturas {

///Exercício 9: Switch-Case com Temperaturas
//Solicite ao usuário para digitar uma temperatura em Celsius e use o switch-case
//para converter para outras escalas:
//Se a temperatura estiver abaixo de 0°C, mostre "Temperatura abaixo de zero".
//Se a temperatura estiver entre 0°C e 30°C, mostre "Temperatura amena".
//Se a temperatura estiver acima de 30°C, mostre "Temperatura quente"
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Digite uma temperatura (Celsius): ");
        int temperatura = sc.nextInt();
        System.out.print("Temperatura = " +temperatura+"Cº");
          
        
        switch (temperatura){
            case 1:
                if(temperatura < 0){
                    System.out.print("Temperatura abaixo de zero");
                    break;
                }
            case 2:
                if(temperatura >= 0 && temperatura <= 30){
                    System.out.print("Temperatura amena");
                    break;
                }
            case 3:
                if(temperatura > 30){
                    System.out.print("Temperatura quente");
                }
                
        }
                                
    }
    
}
