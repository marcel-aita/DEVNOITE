/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula.OperadoresRelacionais;

import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

/**
 *
 * @author 182410162
 */
public class OpRelacionais_exercicio_5 {
    
    public static void main(String args[])throws UnsupportedEncodingException {
       
       System.setOut(new PrintStream(System.out, true, "UTF-8"));
       Scanner sc = new Scanner(System.in);
    
    //Modifique o programa anterior para que, caso o primeiro número não seja maior ou
    //igual ao segundo, exiba uma mensagem dizendo que o segundo número é maior.
    
    System.out.print("Digite o primeiro número: ");
    int numero1 = Integer.parseInt(sc.nextLine());
    System.out.print("Digite o segundo número: ");
    int numero2 = Integer.parseInt(sc.nextLine());
    
    if (numero1 >= numero2){
        System.out.println("O primeiro número: ("+numero1+") é maior ou igual que o segundo número: ("+numero2+")");
    }else {
        System.out.println("O segundo número: ("+numero2+") é maior que o primeiro: ("+numero1+")");
    }    
    
}
}