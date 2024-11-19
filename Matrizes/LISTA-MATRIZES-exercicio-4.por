//Dadas duas matrizes 2×2 e preencha ambas com valores inteiros fornecidos
//pelo usuário. Realize a subtração das duas matrizes (subtraia elemento por
//elemento) e exiba o resultado na tela.
programa {
  funcao inicio() {

   //inteiro matriz[i][j]
   inteiro matriz[2][2]
   inteiro matriz1[2][2]
   inteiro resultado[2][2]
   inteiro i, j
   
      escreva("Digite os elementos da 1ª matriz: \n")
      //Parâmetro que recebe o número de linhas da matriz
      para(i = 0; i < 2; i ++)
      {
        //Parâmetro que recebe o número de colunas da matriz
        para(j = 0; j < 2; j ++)
        {
        	//Representação da matriz e preenchimento
          escreva("Elemento: [", i+1, ",", j+1, "]: ")
          //Vizualização da matriz no sistema
          leia(matriz[i][j])
        	}          
      }
      escreva("Digite os elementos da 2ª matriz: \n")
      //Parâmetro que recebe o número de linhas da matriz
      para(i = 0; i < 2; i ++)
      {
        //Parâmetro que recebe o número de colunas da matriz
        para(j = 0; j < 2; j ++)
        {
        	//Representação da matriz e preenchimento
          escreva("Elemento: [", i+1, ",", j+1, "]: ")
          //Vizualização da matriz no sistema
          leia(matriz1[i][j])
        	}          
      }
      //Parâmetro que recebe o número de linhas para a soma de matrizes
      para(i = 0; i < 2; i ++)
      {
        //Parâmetro que recebe o número de colunas para a soma de matrizes
        para(j = 0; j < 2; j ++)
        {
          //Expressão que faz o calcúlo da soma dos elementos das duas matrizes
          resultado[i][j] = matriz[i][j] - matriz1[i][j]
          }
        }
        //Escreve a expressão da soma
        escreva("Resultado da subtração: \n")
          //Parâmetro que recebe o número de linhas para a soma de matrizes
          para(i = 0; i < 2; i ++)
          {
            //Parâmetro que recebe o número de colunas para a soma de matrizes
            para(j = 0; j < 2; j ++)
            {
              //Mostra a soma
              escreva(resultado[i][j], " ")
            }
            escreva("\n")
          }               
  }
}