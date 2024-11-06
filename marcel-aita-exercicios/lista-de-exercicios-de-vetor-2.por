programa {
  funcao inicio()
  {
    inteiro opcao
    inteiro numeros[10]
    caracter letras[10]
    real notasAlunos[5]
    inteiro numeros1[5]
    inteiro numeros2[20]

    faca
    {
      escreva("Escolha uma opção: \n")
      escreva("1. Soma dos Pares: \n")
      escreva("2. Contagem de Vogais: \n")
      escreva("3. Média de Notas: \n")
      escreva("4. Troca de Valores: \n")
      escreva("5. Ordenação Simples: \n")
      escreva("6. Números Ímpares: \n")
      escreva("7. Fibonacci em Vetor: \n")
      escreva("8. Múltiplos de 3 e 5: \n")
      escreva("9. Cálculo de Fatorial: \n")
      escreva("10. Busca em Vetor: \n")
      escreva("0. Encerrar o programa: \n")
      leia(opcao)
    }

    escolha(opcao)
    {
      caso 1:
        //Soma dos pares

        inteiro somaPares = 0
        escreva("Preencha o vetor de inteiros: ")
        para(inteiro i=0; i<10; i++)
        {
          leia(numeros[i])
        }
        para(inteiro i=0; i<10; i++)
        {
          se(numeros[i] %2 == 0)
          {
            somaPares = somaPares + numeros[i]
          }
        }
        escreva("A soma dos números pares do vetor 'numeros' é: ", numeros, "\n")
        pare
        limpa()

      caso 2:
        //Contagem de Vogais  
    } 
  }
}
