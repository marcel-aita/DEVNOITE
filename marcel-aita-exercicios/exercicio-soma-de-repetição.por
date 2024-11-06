//Crie um programa que permita ao usuário inserir números inteiros continuamente. O programa deve somar os números digitados e exibir o total quando o usuário digitar 0, que serve como um sinal de parada.
programa {
  funcao inicio(){
    inteiro numero
    inteiro soma = 0

    enquanto(verdadeiro){
      escreva("Digite um numero (0 para parar): ")
      leia(numero)

      se(numero == 0) {
        pare        
      }
      soma = soma + numero

    }
    escreva("Resultado", soma)
    
  }
}
