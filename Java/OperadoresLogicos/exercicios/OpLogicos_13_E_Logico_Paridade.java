import java.util.Scanner;
public class OpLogicos_13_E_Logico_Paridade {
Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        ///E Lógico (AND) - Verificação de Paridade
//Crie um programa que leia dois números e verifique se ambos os números são pares. Se
//ambos forem pares, imprima uma mensagem dizendo que ambos os números são pares
        
        System.out.print("Insira o primeiro número: ");
        int numero1 = sc.nextInt();
        System.out.print("Insira o segundo número: ");
        int numero2 = sc.nextInt();
        
        if(numero1 >= 0 && numero2 >= 0){
            System.out.print("Ambos os números são pares");
        }
    }
    
}
