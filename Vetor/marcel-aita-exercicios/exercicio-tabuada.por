//Escreva um programa que solicite ao usuário um número e exiba sua tabuada de 1 a 10 usando o laço Para.
programa{
  funcao inicio(){

    inteiro numero 
    inteiro contador
    inteiro resultado 
    escreva("Digite um número: ")
    leia(numero)

    para(contador=1;contador<=10;contador++){//Dar um valor para variável contador. Em seguida, limitar seu alcanse para 10 neste caso de tabuada. ++ soma 1 ao valor original 
    resultado=numero*contador
    escreva(numero, "X", contador, "=", resultado,"\n")  
    }

  }
}