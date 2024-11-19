//Crie uma matriz 2×3 com 6 números inteiros. Ordene os elementos dessa
//matriz em ordem crescente e mostre a matriz ordenada. Depois, ordene os
//elementos da matriz em ordem decrescente e mostre novamente.
programa {
  inteiro i, j, k
  funcao inicio() {
    inteiro matriz[2][3]
   

    escreva("Insira os elementos da matriz: \n")
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        escreva("Elemento [", i + 1, ",", j + 1,"]: ")
        leia(matriz[i][j])
      }
    }

    ordenarMatrizCrescente(matriz)
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        escreva(matriz[i][j], " ")
      }
      escreva("\n")
    }

   ordenarMatrizDerescente(matriz)
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        escreva(matriz[i][j], " ")
      }
      escreva("\n")
    }
  }
  
  funcao ordenarMatrizCrescente(inteiro matriz[][])
  {
    inteiro vetor[6], temp

    k=0
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        vetor[k] = matriz[i][j]
        k = k + 1
      }
    }

    para(i = 0; i < 3; i ++)
    {
      para(j = 0; j < 4 - i; j ++)
      {
        se(vetor[j] > vetor[j + 1])
        {
          temp = vetor [j]
          vetor[j] = vetor[j + 1]
          vetor[j + 1] = temp
        }
      }
    }

    k = 0
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        matriz[i][j] = vetor[k]
        k = k + 1
      }
    }
  }

  funcao ordenarMatrizDerescente(inteiro matriz[][])
  {
    inteiro vetor[6], temp

    k=0
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        vetor[k] = matriz[i][j]
        k = k + 1
      }
    }

    para(i = 0; i < 3; i ++)
    {
      para(j = 0; j < 4 - i; j ++)
      {
        se(vetor[j] < vetor[j + 1])
        {
          temp = vetor [j]
          vetor[j] = vetor[j + 1]
          vetor[j + 1] = temp
        }
      }
    }

    k = 0
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        matriz[i][j] = vetor[k]
        k = k + 1
      }
    }
  }
}
