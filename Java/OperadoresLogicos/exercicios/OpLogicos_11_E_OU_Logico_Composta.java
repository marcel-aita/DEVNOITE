import java.util.Scanner;
public class OpLogicos_11_E_OU_Logico_Composta {

    Scanner sc = new Scanner(System.in);
    
    public static void main(String[] args) {
    Scanner sc = new Scanner(System.in);    
///Combinação de E e Ou - Composta
//Modifique o programa do exercício anterior para que, caso a combinação de condições
//não seja atendida, o programa imprima uma mensagem dizendo que o primeiro número
//não é positivo ou o segundo não é zero ou positivo

System.out.print("Insira o primeiro número: ");
int numero1 = sc.nextInt();
System.out.print("Insira o segundo número: ");
int numero2 = sc.nextInt();

if(numero1 > 0 && numero2 > 0 || numero2 == 0){
    System.out.print("O primeiro número é positivo e o segundo número é positivo ou igual a zero");
}else{
    System.out.println("O primeiro número não é positivo e o segundo não é positivo nem igual a zero");
}

    }
    
}