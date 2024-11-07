programa {
  funcao inicio() {
    
    inteiro numero
    inteiro contador
    inteiro resultado = 1 // Inicializa o resultado como 1

    escreva("Digite um numero: ")
    leia(numero)
    
    para(contador = numero; contador > 1; contador--) { // Corrige a condição do laço
      resultado = resultado * contador // Corrige a operação de multiplicação
    }
    escreva("Fatorial de ", numero, " é ", resultado)
  }
}
