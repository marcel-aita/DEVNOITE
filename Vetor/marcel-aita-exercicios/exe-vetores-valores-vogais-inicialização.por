//Acesse e imprima o elemento na posição 4 do vetor valores e o elemento na posição 1 do vetor vogais
programa {
  funcao inicio() {
    inteiro opcao//Variável para acessar elemento de um vetor
    inteiro valores[10]//vetor de inteiros com 10 posições
    caracter vogais[5]//vetor de inteiros com 5 posições

    // Inicialização do vetor valores com números de 1 a 10
    para (inteiro i=0 ;i<10 ;i++)
    {
      valores[i] = i + 1
    }

    // Inicialização do vetor vogais com as letras 'a', 'e', 'i', 'o', 'u'
    vogais[0] = 'a'
    vogais[1] = 'e'
    vogais[2] = 'i'
    vogais[3] = 'o'
    vogais[4] = 'u'

    //loop que exiba todos os elementos do vetor valores
    //escreva("Elementos do vetor valores:\n") - Para mostrar emcima, como um cabeçalho

    escreva("Vetores: ")
    para(inteiro i=0; i<10; i++){
      valores[i] = i + 1
      //escreva(valores[i], "\n")
      escreva(valores[i], " " )//(, " ") no final desce uma linha   
    }
 
    //loop que exiba todos os elementos do vetor vogais
          
     escreva("\n", "Vogais: ")//("\n", "Texto: ") no final desce uma linha
     para(inteiro j=0; j<5; j++){
      //escreva(vogais[j], "\n")
      escreva( vogais[j], " ")
     }
      
    //Acessar elemento na posção
    faca{
      escreva("\nEscolha uma opção:\n")
      escreva("1. Acessar um elemento do vetor 'vogais' \n")
      escreva("2. Acessar um elemento do vetor 'valores' \n")
      escreva("0. Sair \n")
      leia(opcao)

      escolha (opcao){
        caso 1:
        escreva("O elemento na posição '1' é: ", vogais[0], "\n" )
        pare

        caso 2:
        para(inteiro i=4; i<5; i){
          valores[i] = 4
          escreva("O elemento na posição 4 é: ", i, "\n")
        }
        pare
        
      }
    }enquanto (opcao!0)
    pare 
    }
    }
    
  }
}

