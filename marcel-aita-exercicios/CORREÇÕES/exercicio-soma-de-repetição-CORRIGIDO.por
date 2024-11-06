programa {
  funcao inicio() {
    // Declaração das variáveis
    inteiro numero
    inteiro soma = 0 // Inicializa a soma como 0

    // Laço para ler números continuamente
    enquanto (verdadeiro) {
      escreva("Digite um numero (0 para parar): ")
      leia(numero)
      
      // Verifica se o número digitado é 0
      se (numero == 0) {
        pare // Sai do laço enquanto
      }
      
      // Adiciona o número digitado à soma
      soma = soma + numero
    }
    
    // Exibe o total da soma
    escreva("A soma dos números digitados é: ", soma)
  }
}

