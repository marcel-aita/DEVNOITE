import java.util.Scanner;
public class OpLogicos_9_NÃO_Logico_Encadeada {

    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);    
        
//Negação - Encadeada
//Crie um programa que leia um número e verifique:
//Se o número não for positivo, imprima que o número não é positivo.
//Se o número for zero, imprima que o número é zero.
//Caso contrário, imprima que o número é positivo

System.out.print("Insira o primeiro número: ");
int numero1 = sc.nextInt();

if(!(numero1 > 0)){
    System.out.println("O número não é positivo");
}else if(!(numero1 != 0)){
    System.out.println("O número é igual a zero");
}else{
    
}

    }
    
}
