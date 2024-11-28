import java.util.Scanner;
public class OpLogicos_6_OU_Logico_Encadeada {

    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);
    
///Ou Lógico (OR) - Encadeada
//Crie um programa que leia dois números e verifique:
//Se pelo menos um número for positivo,
//imprima que pelo menos um número é positivo.
//Se ambos os números forem zero,
//imprima que ambos os números são zero.
//Caso contrário, imprima que pelo menos um número não é positivo   
    
    System.out.print("Insira o primeiro número: ");
    int numero1 = sc.nextInt();
    System.out.print("Insira o segundo número: ");
    int numero2 = sc.nextInt();

    if(numero1 > 0 || numero2 > 0){
    System.out.println("Pelo menos um dos números é positivo");
    }else if(numero1 == 0 && numero2 == 0){
        System.out.println("Os dois números são 0");
    }else{
        System.out.println("Pelo menos um, dos dois números, é positivo");
    }
    }
    
}
