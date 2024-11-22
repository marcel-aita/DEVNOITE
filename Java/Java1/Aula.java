/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package aula;
import java.io.PrintStream;
// Importa a classe Scanner para permitir a leitura de dados a partir do teclado.
import java.util.Scanner;
// Importa a classe
import java.io.UnsupportedEncodingException;
/**
 *
 * @author lmmorais
 */
public class Aula {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args)throws UnsupportedEncodingException {
        
   

    System.setOut(new PrintStream(System.out, true, "UTF-8"));
    
    Scanner sc = new Scanner(System.in);

//sc É O nome do objeto, ou seja sempre que eu precisar usar o Scanner eu posso usar o sc
//new É uma palavra-chave em Java que indica que você está criando um novo objeto.
// o Scanner após new é um método especial que é chamado quando você cria um novo objeto. Ele inicializa o objeto com os valores padrão ou com os valores que você passar como parâmetro.
//Ao passar System.in como argumento para o construtor do Scanner, você está informando que o objeto Scanner irá ler os dados digitados no teclado.
    
   
    
   
     char letra;//caracter letra 
     double salariop;//real salario 
     int idadep; //inteiro idade 
     boolean fez;//logico fez 
     String texto; //cadeia texto 
     
    
     //(print line) println Após imprimir a mensagem, o cursor se move para o início da próxima linha.
     System.out.println("Olá Mundo\n");//escreva("Olá Mundo\n") 
     System.out.println("olá\n Mundo\n"); //escreva("Olá \n Mundo\n") 
     ////////////////////////////////////////////////////////////////////////////////////
    
   
    // Entrada de dados
    //print Imprime a mensagem sem adicionar uma quebra de linha.
    System.out.print("Digite seu nome: "); //escreva("Digite seu nome: ")
    texto = sc.nextLine(); //leia(texto)
    
   // Saída de dados
    System.out.println("Olá "+texto+"!\n"); // escreva("Olá, " + texto + "!\n")
   ///////////////////////////////////////////////////////////////////////////////////
    System.out.print("Digite uma letra: ");
    letra =  sc.nextLine().charAt(0);
    System.out.println("A letra digitada foi: "+ letra);
    //////////////////////////////////////////////////////////////////////////////////
    System.out.print("Digite sua idade: ");
    idadep = Integer.parseInt(sc.nextLine());
    System.out.println("Você tem " + idadep + " anos.");
    ///////////////////////////////////////////////////////////////////////////////////////
    double numero1,numero2,resultado;
     System.out.print("Digite o primeiro número: ");
     numero1 = Double.parseDouble(sc.nextLine());
     System.out.print("Digite o segundo número: ");
     numero2 = Double.parseDouble(sc.nextLine());
     resultado  = numero1+numero2;
     System.out.println("\nA soma dos dois números é: "+resultado);
     resultado = numero1-numero2;
     System.out.println("A subtração dos dois números é: "+resultado);
     resultado = numero1*numero2;
     System.out.println("A multiplicação dos dois números é: "+resultado);
    ///////////////////////////////////////////////////////////////////////////////////////
     System.out.println("NomeIdade");
     System.out.println("João\t30");
     System.out.println("Maria\t25");
     System.out.println("Pedro\t35");
     //O caractere \t é usado para inserir uma tabulação, alinhando as colunas.
   ////////////////////////////////////////////////////////////////////////////////////////////////
    String minhaString = "Olá, mundo!";
    int numeroDeCaracteres = minhaString.length();
    System.out.println("Número de caracteres: " + numeroDeCaracteres);
    ////////////////////////////////////////////////////////////////////////////////////////////////
    String textoMundo = "Olá, MUNDO!";
    String textoMinusculo = textoMundo.toLowerCase();
    System.out.println(textoMinusculo);
     ////////////////////////////////////////////////////////////////////////////////////////////////
    String textomundo = "olá, mundo!";
    String textoMaiusculo = textomundo.toUpperCase();
    System.out.println(textoMaiusculo); 
    ////////////////////////////////////////////////////////////////////////////////////////////
    String textoreplace = "Olá, mundo! Como você está?";
        String novoTexto1 = textoreplace.replace(Character.toString(letra), "");  
        System.out.println(novoTexto1);
    }
    }
    

