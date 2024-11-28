import java.util.Scanner;
public class OpLogicos_3_E_Logico_Encadeada {

///E Lógico (AND) - Encadeada
//Crie um programa que leia dois números e verifique:
//Se ambos os números são positivos, 
//imprima que ambos os números são positivos.
//Se ambos os números forem zero,
//imprima que ambos os números são zero.
//Caso contrário, imprima que pelo 
//menos um dos números não é positivo
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
    System.out.print("Insira um número: ");
    int numero1 = sc.nextInt();
    System.out.print("Insira outro numero: ");
    int numero2 = sc.nextInt();
    
    if(numero1 > 0 && numero2 > 0 ){
        System.out.print("Ambos os números são positivos");
    }else if(numero1 == 0 && numero2 == 0){
        System.out.print("Ambos os números são zero");
    }else{
        System.out.print("Pelo menos um dos números é negativo");
    }
        
    }
    
}
