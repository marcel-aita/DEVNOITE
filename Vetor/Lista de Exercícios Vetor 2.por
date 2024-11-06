programa
{
    funcao inicio()
    {
        inteiro opcao // Variável para armazenar a opção escolhida
        inteiro vetorPares[10] // Vetor de inteiros com 10 posições
        inteiro vetorCaracteres[10] // Vetor de caracteres com 10 posições
        real notas[5] // Vetor de reais para as notas
        inteiro vetorTroca[5] // Vetor para troca de valores
        inteiro vetorOrdenar[5] // Vetor para ordenar
        inteiro vetorImpares[10] // Vetor de inteiros para números ímpares
        inteiro fibonacci[10] // Vetor para sequência de Fibonacci
        inteiro vetMultiplo[20] // Vetor para múltiplos de 3 e 5
        inteiro fatorial[5] // Vetor para armazenar os números e calcular fatorial
        inteiro buscaVetor[10] // Vetor para busca
        inteiro numeroBusca // Número para busca

        faca
        {
            escreva("Escolha uma opção:\n")
            escreva("1. Soma de Números Pares\n")
            escreva("2. Contagem de Vogais\n")
            escreva("3. Média de Notas\n")
            escreva("4. Troca de Valores\n")
            escreva("5. Ordenação Simples\n")
            escreva("6. Números Ímpares\n")
            escreva("7. Fibonacci em Vetor\n")
            escreva("8. Múltiplos de 3 e 5\n")
            escreva("9. Cálculo de Fatorial\n")
            escreva("10. Busca em Vetor\n")
            escreva("Digite sua opção: ")
            leia(opcao) // Lê a opção do usuário

            escolha(opcao) // Estrutura de escolha
            {
                caso 1:
                    // Soma de Números Pares
                    inteiro somaPares = 0
                    escreva("Preencha o vetor com 10 números inteiros:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        leia(vetorPares[i]) // Lê os números fornecidos pelo usuário
                    }
                    para (inteiro i = 0; i < 10; i++)
                    {
                        se (vetorPares[i] % 2 == 0) // Verifica se o número é par
                        {
                            somaPares = somaPares + vetorPares[i] // Adiciona o número à soma
                        }
                    }
                    escreva("Soma dos números pares: ", somaPares, "\n")
                    pare

                caso 2:
                    // Contagem de Vogais
                   caracter letras[10]
        inteiro contagemVogais = 0 // Para contagem de vogais

        // Preenchendo o vetor
        para (inteiro i = 0; i < 10; i++)
        {
            escreva("Digite uma letra: ")
            leia(letras[i])
            se (letras[i] == 'a' ou letras[i] == 'e' ou letras[i] == 'i' ou letras[i] == 'o' ou letras[i] == 'u') 
            {
                contagemVogais = contagemVogais + 1
            }
        }
        escreva("Total de vogais: ", contagemVogais, "\n")
                    pare

                caso 3:
                    // Média de Notas
                    real somaNotas = 0.0
                    escreva("Preencha o vetor com 5 notas:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(notas[i]) // Lê as notas fornecidas pelo usuário
                    }
                    para (inteiro i = 0; i < 5; i++)
                    {
                        somaNotas = somaNotas + notas[i] // Soma as notas
                    }
                    real media = somaNotas / 5 // Calcula a média
                    escreva("Média das notas: ", media, "\n")
                    se (media >= 7)
                    {
                        escreva("Média suficiente.\n")
                    }
                    senao
                    {
                        escreva("Média insuficiente.\n")
                    }
                    pare

                caso 4:
                    // Troca de Valores
                    escreva("Preencha o vetor com 5 números inteiros:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(vetorTroca[i]) // Lê os números fornecidos pelo usuário
                    }
                    // Troca o primeiro valor pelo último
                    inteiro temp = vetorTroca[0]
                    vetorTroca[0] = vetorTroca[4]
                    vetorTroca[4] = temp
                    escreva("Vetor atualizado após a troca:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(vetorTroca[i], " ")
                    }
                    escreva("\n")
                    pare

                caso 5:
                    // Ordenação Simples (Bubble Sort)
                    escreva("Preencha o vetor com 5 números inteiros:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(vetorOrdenar[i]) // Lê os números fornecidos pelo usuário
                    }
                    // Bubble Sort para ordenar
                    para (inteiro i = 0; i < 4; i++)
                    {
                        para (inteiro j = 0; j < 4 - i; j++)
                        {
                            se (vetorOrdenar[j] > vetorOrdenar[j + 1]) // Se necessário
                            {
                                inteiro temp = vetorOrdenar[j] // Armazena o valor atual
                                vetorOrdenar[j] = vetorOrdenar[j + 1] // Troca
                                vetorOrdenar[j + 1] = temp
                            }
                        }
                    }
                    escreva("Vetor ordenado:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(vetorOrdenar[i], " ") // Exibe o vetor ordenado
                    }
                    escreva("\n")
                    pare

                caso 6:
                    // Números Ímpares
                    escreva("Preencha o vetor com 10 números inteiros:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        leia(vetorImpares[i]) // Lê os números fornecidos pelo usuário
                    }
                    escreva("Números ímpares no vetor:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        se (vetorImpares[i] % 2 != 0) // Verifica se o número é ímpar
                        {
                            escreva(vetorImpares[i], " ") // Exibe o número ímpar
                        }
                    }
                    escreva("\n")
                    pare

                caso 7:
                    // Fibonacci em Vetor
                    fibonacci[0] = 0
                    fibonacci[1] = 1
                    para (inteiro i = 2; i < 10; i++)
                    {
                        fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2] // Preenche a sequência de Fibonacci
                    }
                    escreva("Sequência de Fibonacci:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        escreva(fibonacci[i], " ") // Exibe os elementos do vetor Fibonacci
                    }
                    escreva("\n")
                    pare

                caso 8:
                    // Múltiplos de 3 e 5
                    inteiro contadorMultiplo = 0
                    para (inteiro i = 1; i <= 20; i++)
                    {
                        vetMultiplo[i - 1] = i // Preenche o vetor com números de 1 a 20
                        se (i % 3 == 0 ou i % 5 == 0) // Verifica se o número é múltiplo de 3 ou 5
                        {
                            contadorMultiplo = contadorMultiplo + 1
                        }
                    }
                    escreva("Quantidade de múltiplos de 3 ou 5: ", contadorMultiplo, "\n")
                    pare

                caso 9:
                    // Cálculo de Fatorial
                    escreva("Preencha o vetor com 5 números inteiros:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(fatorial[i]) // Lê os números fornecidos pelo usuário
                    }
                    para (inteiro i = 0; i < 5; i++)
                    {
                        inteiro resultado = 1
                        para (inteiro j = 1; j <= fatorial[i]; j++)
                        {
                            resultado = resultado * j // Calcula o fatorial do número
                        }
                        escreva("Fatorial de ", fatorial[i], ": ", resultado, "\n")
                    }
                    pare

                caso 10:
                    // Busca em Vetor
                    escreva("Preencha o vetor com 10 números inteiros:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        leia(buscaVetor[i]) // Lê os números fornecidos pelo usuário
                    }
                    escreva("Digite o número a ser buscado: ")
                    leia(numeroBusca) // Lê o número para busca
                    inteiro encontrado = 0
                    para (inteiro i = 0; i < 10; i++)
                    {
                        se (buscaVetor[i] == numeroBusca) // Verifica se o número está no vetor
                        {
                            encontrado = 1
                            escreva("Número encontrado na posição: ", i, "\n")
                            pare
                        }
                    }
                    se (encontrado == 0)
                    {
                        escreva("Número não encontrado no vetor.\n")
                    }
                    pare

                caso contrario:
                    escreva("Opção inválida.\n")
            }
        } enquanto(opcao != 0) // Repete o menu até a opção 0 (encerramento)
        
        escreva("Programa encerrado.\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9884; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */