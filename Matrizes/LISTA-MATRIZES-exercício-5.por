//Crie uma matriz 2×3 e preencha-a com valores inteiros fornecidos pelo usuário.
//Em seguida, calcule a matriz transposta e mostre o resultado na tela.
programa {
  funcao inicio() {

    inteiro matriz[2][3]
    inteiro i, j

    escreva("Insira os elementos da matriz: \n")
    //Parâmetro para preenchimento das linhas da matriz
    para(i = 0; i < 2; i ++)
    {
      //Parâmetro para preenchimento das colunas da matriz
      para(j = 0; j < 3; j ++)
      {
        escreva("Elemento: [", i + 1, ",", j + 1, "]: ")
        leia(matriz[i][j])
      }
    }
    //Matriz Original
    escreva("Matriz original: \n")
    para(i = 0; i < 2; i ++)
    {
      para(j = 0; j < 3; j ++)
      {
        escreva(matriz[i][j], " ")
      }
      escreva("\n")
    }
     //Matriz Transposta
     escreva("Matriz trasposta: \n")
    para(i = 0; i < 3; i ++)
    {
      para(j = 0; j < 2; j ++)
      {
        escreva(matriz[j][i], " ")
      }
      escreva("\n")
    }
  }
}
