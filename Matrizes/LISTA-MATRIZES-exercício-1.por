//Crie uma matriz com 2 linhas e 5 colunas e preencha-a com 10 números inteiros
//fornecidos pelo usuário. Em seguida, mostre na tela os valores dessa matriz.
programa {
  funcao inicio() {

   //inteiro matriz[i][j]
   inteiro matriz[2][5]
   inteiro i, j
   
      escreva("Digite os elementos da matriz: \n")
      //Parâmetro que recebe o número de linhas da matriz
      para(i = 0; i < 2; i ++)
      {
        //Parâmetro que recebe o número de colunas da matriz
        para(j = 0; j < 5; j ++)
        {
        	//Representação da matriz e preenchimento
          escreva("Elemento: [", i+1, ",", j+1, "]: ")
          //Vizualização da matriz no sistema
          leia(matriz[i][j])
        	}          
      }
            
  }
}