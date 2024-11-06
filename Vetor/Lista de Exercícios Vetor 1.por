programa
{
    funcao inicio()
    {
        inteiro opcao 
        inteiro valores[10] 
        caracter vogais[5] 
        real numerosReais[5]
        inteiro numeros[5]
        inteiro copia[5]
        inteiro vetorOrdenado[5] 
        caracter letras[5]
        inteiro contador 

        faca
        {
            escreva("Escolha uma opção:\n")
            escreva("1. Declaração de Vetores\n")
            escreva("2. Inicialização de Vetores\n")
            escreva("3. Exibição de Elementos\n")
            escreva("4. Acesso a Elementos\n")
            escreva("5. Modificação de Elementos\n")
            escreva("6. Preenchimento de Vetores pelo Usuário\n")
            escreva("7. Soma dos Elementos de um Vetor\n")
            escreva("8. Cópia de Vetores\n")
            escreva("9. Ordenação Simples\n")
            escreva("10. Contagem de Letras\n")
            escreva("Digite sua opção: ")
            leia(opcao)
            limpa()

            escolha(opcao) 
            {
                caso 1:
                    // Declaração de Vetores
                    escreva("Vetores declarados com sucesso.\n")
                    pare
                
                caso 2:
                    // Inicialização de Vetores
                    para (inteiro i = 0; i < 10; i++)
                    {
                        valores[i] = i + 1 // Inicializa o vetor valores com números de 1 a 10
                        escreva("Inicialização de Vetores posição: ",i+1,": ",valores[i],"\n")
                    }
                    vogais[0] = 'a' // Inicializa o vetor vogais com as letras
                    vogais[1] = 'e'
                    vogais[2] = 'i'
                    vogais[3] = 'o'
                    vogais[4] = 'u'
                    escreva("Vetores inicializados com sucesso.\n")
                    pare
                
                caso 3:
                    // Exibição de Elementos
                    escreva("Elementos do vetor valores:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        escreva(valores[i], " ") // Exibe os elementos do vetor valores
                    }
                    escreva("\nElementos do vetor vogais:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(vogais[i], " ") // Exibe os elementos do vetor vogais
                    }
                    escreva("\n")
                    pare
                
                caso 4:
                    // Acesso a Elementos
                    escreva("Elemento na posição 4 do vetor valores: ", valores[4], "\n") // Imprime o elemento na posição 4
                    escreva("Elemento na posição 1 do vetor vogais: ", vogais[1], "\n") // Imprime o elemento na posição 1
                    pare
                
                caso 5:
                    // Modificação de Elementos
                    valores[3] = 15 // Modifica o valor na posição 3 para 15
                    escreva("Vetor valores atualizado:\n")
                    para (inteiro i = 0; i < 10; i++)
                    {
                        escreva(valores[i], " ") // Exibe o vetor atualizado
                    }
                    escreva("\n")
                    pare
                
                caso 6:
                    // Preenchimento de Vetores pelo Usuário
                    escreva("Preencha o vetor com 5 números reais:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(numerosReais[i]) // Lê os valores fornecidos pelo usuário
                    }
                    escreva("Valores cadastrados:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(numerosReais[i], " ") // Exibe os valores cadastrados
                    }
                    escreva("\n")
                    pare
                
                caso 7:
                    // Soma dos Elementos de um Vetor
                    inteiro soma = 0 // Inicializa a variável soma
                    escreva("Digite 5 números inteiros:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(numeros[i]) // Lê os números do usuário
                        soma = soma + numeros[i] // Calcula a soma dos números
                    }
                    escreva("Soma dos elementos: ", soma, "\n") // Exibe a soma
                    pare
                
                caso 8:
                    // Cópia de Vetores
                    para (inteiro i = 0; i < 5; i++)
                    {
                        copia[i] = valores[i] // Copia os valores do vetor valores para o vetor cópia
                    }
                    escreva("Vetor cópia:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(copia[i], " ") // Exibe o vetor cópia
                    }
                    escreva("\n")
                    pare
                
                caso 9:
                    // Ordenação Bubble Sort
                    escreva("Digite 5 números para ordenar:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(vetorOrdenado[i]) // Lê os números do usuário
                    }
                    // Bubble Sort para ordenar
                    para (inteiro i = 0; i < 4; i++)
                    {
                        para (inteiro j = 0; j < 4 - i; j++)
                        {
                            se (vetorOrdenado[j] > vetorOrdenado[j + 1]) 
                            {
                                inteiro temp = vetorOrdenado[j] // Armazena o valor atual
                                vetorOrdenado[j] = vetorOrdenado[j + 1] // Troca
                                vetorOrdenado[j + 1] = temp
                            }
                        }
                    }
                    escreva("Vetor ordenado:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(vetorOrdenado[i], " ") // Exibe o vetor ordenado
                    }
                    escreva("\n")
                    pare
                
                caso 10:
                    // Contagem de Letras
                    contador = 0
                    escreva("Preencha o vetor com 5 letras:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        leia(letras[i])
                    }
                    para (inteiro i = 0; i < 5; i++)
                    {
                        se (letras[i] == 'a' ou letras[i] == 'e' ou letras[i] == 'i' ou letras[i] == 'o' ou letras[i] == 'u') 
                        {
                            contador = contador + 1
                        }
                    }
                    escreva("Total de vogais: ", contador, "\n") 
                    pare
                
                caso contrario:
                    escreva("Opção inválida.\n") 
            }
        } enquanto(opcao != 0) 
        
        escreva("Programa encerrado.\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5165; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */