programa {
  funcao inicio() {
    
    inteiro numero
    inteiro contador
    inteiro resultado = 1
    cadeia expressao = "" // Variável para armazenar a expressão

    escreva("Digite um numero: ")
    leia(numero)
    
    para(contador = numero; contador > 1; contador--) {
      resultado = resultado * contador
      expressao = expressao + contador + " x " // Concatena a expressão
    }
    expressao = expressao + "1" // Adiciona o último número da expressão

    escreva("Fatorial de ", numero, " é ", expressao, " = ", resultado)
  }
}

