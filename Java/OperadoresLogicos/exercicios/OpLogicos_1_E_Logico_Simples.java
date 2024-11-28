import java.util.Scanner;
public class OpLogicos_1_E_Logico_Simples {

///E Lógico (AND) - Simples
//Crie um programa que leia dois números
//inteiros e verifique se ambos os números são
//positivos. Se forem positivos,
//imprima uma mensagem dizendo que ambos os números
//são positivos
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        System.out.print("Insira um número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira outro número: ");
        int numero2 = sc.nextInt();
        
        if(numero1 > 0 && numero2 > 0){
            System.out.println("Os números são positivos");
        }       
        
    }
    
}
