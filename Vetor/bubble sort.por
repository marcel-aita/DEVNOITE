//Ordenação por flutuação ele percorre o vetor diversasa vezes e a cada vez ele realiza diversas trocas simples para ordenar o mesmo

programa
{
    inclua biblioteca Util // Inclui a biblioteca Util para gerar números aleatórios

    funcao inicio() 
    {
        inteiro numeros[5] // Cria um vetor para armazenar 5 números inteiros

        // Preenchendo o vetor
        escreva("Preenchendo o vetor com números aleatórios:\n") // Mensagem de início
        para (inteiro i = 0; i < 5; i++) // Loop para gerar 5 números
        {
            // Gera um número aleatório entre 0 e 100 e armazena no vetor na posição i
            numeros[i] = Util.sorteia(0, 100)
            escreva(numeros[i], " ") // Mostra o número gerado na tela
        }
        escreva("\n") // Nova linha após a exibição dos números aleatórios

        // Bubble Sort
        escreva("Iniciando o Bubble Sort:\n") // Mensagem informativa
        para (inteiro i = 0; i < 4; i++) // Loop externo controla o número de passagens
        {
            escreva("Passagem ", i + 1, ":\n") // Mostra qual passagem do sort está ocorrendo
            para (inteiro j = 0; j < 4 - i; j++) // Loop interno para comparar elementos adjacentes
            {
                se (numeros[j] > numeros[j + 1]) // Se o elemento atual for maior que o próximo
                {
                    // Troca os elementos de lugar
                    inteiro temp = numeros[j] // Armazena o valor atual em 'temp'
                    numeros[j] = numeros[j + 1] // Move o próximo número para a posição atual
                    numeros[j + 1] = temp // Coloca o número armazenado na posição do próximo

                    // Exibe o vetor após a troca
                    escreva("Troca: ", numeros[j + 1], " <-> ", numeros[j], "\n") // Mostra os números que foram trocados
                }

                // Exibe o estado do vetor após cada comparação
                escreva("Estado do vetor: ")
                para (inteiro k = 0; k < 5; k++) // Loop para mostrar o vetor atual
                {
                    escreva(numeros[k], " ") // Mostra cada número do vetor
                }
                escreva("\n") // Nova linha após a exibição do vetor
            }
            escreva("\n") // Nova linha após cada passagem
        }

        // Exibindo o vetor ordenado
        escreva("Vetor ordenado: ") // Exibe uma mensagem antes de mostrar os números ordenados
        para (inteiro i = 0; i < 5; i++) // Loop para mostrar os números ordenados
        {
            escreva(numeros[i], " ") // Mostra cada número do vetor ordenado
        }
        escreva("\n") // Adiciona uma nova linha após a exibição dos números
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 917; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */