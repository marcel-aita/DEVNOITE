//Escreva um programa que solicite ao usuário um número e calcule seu fatorial utilizando o laço Para. 5!=5×4×3×2×1=120
programa {
  funcao inicio() {
    
    inteiro numero
    inteiro contador
    inteiro resultado=1
    cadeia expressao = "" // Variável para armazenar a expressão

    escreva("Digite um numero: ")
    leia(numero)
    
    para(contador=numero;contador>1;contador--){//-- decresce 1 do valor original. contador>1 para iniciar a variável, após condição de igualdade contador=numero
    resultado=numero*contador
    expressao = expressao + contador + " x "
    }
    expressao = expressao + "1"
    escreva("Fatorial de ", numero, " é ", expressao, " = ", resultado) 
  }
}
