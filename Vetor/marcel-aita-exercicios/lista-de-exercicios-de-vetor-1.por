//Modifique o valor na posição 3 do vetor valores para 15. Em seguida, exiba o vetor atualizado.
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
      escreva("3. Modifique o elemento na posição 3 do vetor 'valores' \n")
      escreva("4. Preencha o novo vetor 'valores1' \n")
      escreva("5. Contagem de Letras do vetor 'vogais' \n")
      escreva("0. Sair \n")
      leia(opcao)
      limpa()

      escolha (opcao){
        caso 1:
        escreva("O elemento na posição '1' é: ", vogais[0], "\n" )
        pare

        caso 2:
        para(inteiro i=4; i<5; i){
          valores[i] = 4
          escreva("O elemento na posição 4 é: ", i, "\n")
          pare
        }
        
      //Modificar elemento na posição
        caso 3:
        inteiro novoValor=15//novo valor inserido na posição
        valores[3]=novoValor//posição a ser modificada
        escreva("Novo valor para a 3ª posição do vetor 'valores' ",valores[3], "\n")//valores[3] = novoValor
        para(inteiro i=0; i<10; i++){//vetor 'valores[10]'
          escreva(valores[i], " ")//visualização          
        }
        limpa()

        caso 4:
        real valores1[5]
        inteiro soma = 0

      //Preenchimento de Vetores pelo Usuário
      //Crie um vetor de real com 5 posições. Peça ao usuário para preencher o vetor e, em seguida, exiba os valores cadastrados.
      
        para(real i1=0; i1<5; i1++){
        escreva("Digite um valor", ". ", i1 + 1, ": ")
        leia(valores1[i1])
        }
        limpa()

        escreva("Vetor1: ")
        para(real i=0; i<5; i++){
        escreva(valores1[i], " ") 
        }

        escreva("\n")

        //Soma dos Elementos de um Vetor
        //Crie um vetor de inteiros e preencha com 5 números inteiros fornecidos pelo usuário. Calcule e exiba a soma dos elementos do vetor.

        soma = 0
        para(inteiro i=0; i<5; i++){
          soma = soma + valores[i]
          }
        escreva("Soma dos elementos dos vetores: " ,soma, " ")

        escreva("\n")

        //Cópia de Vetores
        //Declare um vetor cópia com 5 posições. Copie os valores do vetor valores para o vetor cópia e exiba o vetor cópia.
        inteiro valoresCopia[] = {valores1}
        escreva("Os elementos do vetor 'valoresCopia': ")
        para(inteiro i=0; i<5; i++){
          escreva(valores1[i], " ")
        }

        escreva("\n")

        //Ordenação Simples
        //Crie um vetor de inteiros e preencha com 5 números. Implemente uma função que ordene os números em ordem crescente e exiba o vetor ordenado.
        para(inteiro i=0; i<4; i++){
        
            para(inteiro j=0; j<4 - i; j++){
              se(valores1[j] > valores1[j+1]){
              inteiro temp = valores1[j]
              valores1[j] = valores1[j+1]
              valores1[j+1] = temp
          }
        }
        }
        escreva("Vetor ordenado: ")
        para(inteiro i=0; i<5; i++){
          escreva(valores1[i], " ")
        }
        escreva("\n")

        //Contagem de Letras
        //Crie um vetor de caracteres e peça ao usuário para preencher com 5 letras. Conte e exiba quantas letras são vogais.
        caso 5: 
        inteiro contador = 0
        escreva("Preencha o vetor com 5 letras: \n")
        para(inteiro i = 0; i < 5; i ++)//Preenche o vetor com letras
        {
          leia(vogais[i])
        }
        para(inteiro i = 0; i < 5; i++)
        {
          se(vogais[i] == 'a' ou vogais[i] == 'e' ou vogais[i] == 'i' ou vogais[i] == 'o' ou vogais[i] == 'u' )
          contador = contador + 1//Agrega um valor ao anterior para testar a igualdade "se(vogais[] ==)""
        }
        escreva("Total de vogais: ", contador, "\n")
        pare
      caso contrario:
      escreva("Opção inválida!\n")
      }
    }enquanto (opcao!0)
   
    }
    
  }
}