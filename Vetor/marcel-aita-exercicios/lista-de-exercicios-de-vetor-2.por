programa {
  funcao inicio()
  {
    inteiro opcao
    inteiro numeros[10]
    caracter letras[10]
    real notasAlunos[5]
    inteiro numeros1[5]
    
    faca
    {
      escreva("1. Soma dos números pares: \n")
      escreva("2. Contagem de vogais: \n")
      escreva("3. Média de notas: \n")
      escreva("4. Troca de valores: \n")
      escreva("5. Ordenação simples: \n")
      escreva("6. Números ímpares: \n")
      escreva("7. Fibonacci em vetor: \n")
      escreva("8. Múltiplos de 3 e 5: \n")
      escreva("9. Cálculo fatorial: \n")
      escreva("10. Busca em vetor: \n")
      escreva("0. Encerrar: \n")
      leia(opcao)
      limpa()
      
      escolha(opcao)
      {
        caso 1:
        inteiro somaPares = 0
        escreva("Preencha o vetor com 10 números: \n")
        para(inteiro i = 0; i < 10; i++)
        {
          para(inteiro i = 0; i < 10; i++)
          {
            leia(numeros[i])
          }
          para(inteiro i = 0; i < 10; i++)
          {
            se(numeros[i] % 2 == 0)
            {
              somaPares = somaPares + numeros[i]
            }
          }  
          escreva("Resultado da soma dos números pares é igual a: ", somaPares, "\n")
          pare
          
        }

        caso 2:
        inteiro contagemVogais = 0
        escreva("Preencha o vetor com 10 letras: \n")
        para(inteiro i = 0; i < 10; i++)
        {
          leia(letras[i])
          se (letras[i] == 'a' ou letras[i] == 'e' ou letras[i] == 'i' ou letras[i] == 'o' ou letras[i] == 'u')
          {
            contagemVogais = contagemVogais + 1
          }
        }
        escreva("Total de vogais no sistema: ", contagemVogais, " ")
        pare

        caso 3:
        real somaNotas = 0.0
        escreva("Preencha o vetor com 5 números: \n")
        para(inteiro i = 0; i<5; i++)
        {
          leia(notasAlunos[i])
        }
        para( inteiro i = 0; i < 5; i++)
        {
          somaNotas = notasAlunos[i] + 1
        }
        real media = somaNotas / 5
        escreva("Média das notas: ", media, "\n")
        se(media >= 7)
        {
          escreva("Aprovado! \n")
        }
        senao
        {
          escreva("Reprovado! \n")
        }
        pare

        caso 4:
        escreva("Preencha o vetor com 5 números: \n")
        para(inteiro i = 0; i < 5; i++)
        {
          leia(numeros1[i])
        }
        inteiro temp = numeros1[0]
        numeros1[0] = numeros1[4]
        numeros1[4] = temp
        escreva("Vetor atualizado: \n")
        para(inteiro i = 0; i<5; i++)
        {
          escreva(numeros1[i], " ")
        }
        escreva("\n")
        pare

        caso 5:
        escreva("Preencha o vetor com 5 números \n")
        para(inteiro i = 0; i < 5; i++)
        {
          leia(numeros1[i])
        }
        para(inteiro i = 0; i < 4; i++)
        {
          para(inteiro j = 0; j < 4 - i; j++)
          se(numeros1[i] > numeros1[j + 1])
          {
            inteiro temp = numeros1[j]
            numeros1[j] = numeros1[j + 1]
            numeros1[j + 1] = temp
          }
        }



      }
    } enquanto (opcao != 0)
    escreva ("Programa encerrado. \n")
  }
}
