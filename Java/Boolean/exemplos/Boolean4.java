/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao.tds.desenvolvimentoalgoritimosjava.Material.Estrutura_de_decisao_exercicios;

import java.util.Scanner;

/**
 *
 * @author Lucas
 */
public class Boolean4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite sua nota: ");
        double nota =  Double.parseDouble(sc.nextLine());  
        System.out.print("Digite a porcentagem de faltas: ");
        double faltas = Double.parseDouble(sc.nextLine().replace("%", ""));
        boolean aprovado = nota >= 7;
        boolean faltasAdequadas = faltas <= 25;
        if (aprovado) {
            if (faltasAdequadas) {
                System.out.println("Sua nota é suficiente para aprovação e você tem um número de faltas adequado.");
            } else {
                System.out.println("Sua nota é suficiente para aprovação, mas você excedeu o número de faltas permitidas.");
            }
        } else {
            if (faltasAdequadas) {
                System.out.println("Sua nota não é suficiente para aprovação, mas você tem um número de faltas adequado.");
            } else {
                System.out.println("Sua nota não é suficiente para aprovação e você excedeu o número de faltas permitidas.");
            }
        }

    }
    
}
