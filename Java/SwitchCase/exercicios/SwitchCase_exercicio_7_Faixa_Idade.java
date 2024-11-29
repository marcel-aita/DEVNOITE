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
public class SwitchCase_exercicio_7_Faixa_Idade {
    
///Exercício 7: Switch-Case com Faixa de Idade
//Solicite ao usuário sua idade e utilize o switch-case para categorizar a faixa etária:
//0 a 12 anos → "Criança"
//13 a 17 anos → "Adolescente"
//18 a 59 anos → "Adulto"
//60 anos ou mais → "Idoso" Se a idade for negativa, mostre "Idade inválida"
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Qual sua idade?: ");
        int idade = Integer.parseInt(sc.nextLine());
        
        switch (idade){
            case 1:
                if(idade <= 12){
                  System.out.print("Criança");  
                }
                break;
            case 2:
                if(idade <= 13 && idade >= 17){
                    System.out.print("Adolescente");
                }
                break;
            case 3:
                if(idade <= 18 && idade >=59){
                   System.out.print("Adulto"); 
                }
                break;
            case 4:
                if(idade >= 60){
                    System.out.print("Idoso");
                }
                
        }
    }
    
}
