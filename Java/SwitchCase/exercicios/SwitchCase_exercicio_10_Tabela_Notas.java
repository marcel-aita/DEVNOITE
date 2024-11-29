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
public class SwitchCase_exercicio_10_Tabela_Notas {

///Exercício 10: Switch-Case com Tabela de Notas
//Peça ao usuário para digitar a nota de um aluno (de 0 a 10) e use switch-case para determinar
//a situação do aluno:
//9 a 10 → "Aprovado com Distinção"
//7 a 8 → "Aprovado"
//5 a 6 → "Em recuperação"
//Abaixo de 5 → "Reprovado" Se o valor digitado estiver fora desse intervalo, mostre
//"Nota inválida"
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Digite a nota do aluno: ");
        int nota = sc.nextInt();
        System.out.println("Nota do aluno: "+nota);
        
        switch(nota){
            case 1:
                if(nota >= 9 && nota <=10){
                System.out.println("Aprovado com Distinção");
                }
                break;
            case 2:
                if(nota >= 7 && nota <= 8){
                    System.out.println("Aprovado");
                }
                break;
            case 3:
                if(nota >=5 && nota <=6){
                    System.out.println("Recuperação");
                }
                break;
            case 4:
                if(nota < 5){
                    System.out.println("Reprovado");
                }
                break;
        }
    }
    
}
