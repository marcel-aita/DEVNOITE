import java.util.Scanner;
public class OpLogicos_12_E_OU_Logico_Encadeada {

    Scanner sc = new Scanner(System.in);
    
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);    
///Combinação de E e Ou - Encadeada
//Crie um programa que leia dois números e verifique:
//Se o primeiro número é positivo e o segundo número é zero ou positivo, imprima uma
//mensagem confirmando as condições.
//Caso o primeiro número seja zero, imprima que o primeiro número é zero.
//Caso contrário, imprima que o primeiro número não é positivo ou o segundo número não
//é zero ou positivo

    System.out.print("Insira o primeiro número: ");
    int numero1 = sc.nextInt();
    System.out.print("Insira o segundo número: ");
    int numero2 = sc.nextInt();

    if(numero1 > 0 && numero2 > 0 || numero2 == 0){
        System.out.print("O primeiro número é positivo e o segundo número é positivo ou igual a zero");
    }else if(numero1 == 0){
            System.out.println("O primeiro número é zero");
    }else{
        System.out.println("o primeiro número não é positivo ou o segundo número não é zero ou positivo");
    }
}
    
}