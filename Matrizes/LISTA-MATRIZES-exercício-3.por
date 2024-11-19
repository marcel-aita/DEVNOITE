//Dadas duas matrizes 2×2 e preencha ambas com valores inteiros. Realize a
//multiplicação das duas matrizes e exiba o resultado na tela
programa {
  funcao inicio() {

   //inteiro matriz[i][j]
   inteiro matriz[2][2]
   inteiro matriz1[2][2]
   inteiro resultado[2][2]
   inteiro i, j, k
   
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
      //Escreve resultado da multiplicação
      escreva("Resultado da multiplicação das matrizes: \n")
        //Parâmetro que recebe o número de linhas da matriz
        para(i = 0; i < 2; i ++)
        {
          //Parâmetro que recebe o número de colunas da matriz
          para(j = 0; j < 2; j ++)
          {
            //Variável que demonstra o resultado
            resultado[i][j] = 0
            //Parâmetro que delimita a multiplicação
            para(k = 0; k < 2; k ++)
            {
              //Fórmula da multiplicação das matrizes
              resultado[i][j] = resultado[i][j] + matriz[i][k] * matriz1[k][j]
            }
          }
        }
       //Parâmetro que delimita a multiplicação em linhas
       para(i = 0; i < 2; i ++)
       {
        //Parâmetro que delimita a multiplicação em colunas
        para(j = 0; j < 2; j ++)
        {
          //Escreve a multiplicação
          escreva(resultado[i][j], " ")
        }
        escreva("\n")
       }
   
  }
}      
