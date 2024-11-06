programa
{
    funcao inicio()
    {
        inteiro opcao 
        inteiro numeros[5]
        inteiro numeros1[] = {10, 20, 30, 40, 50}
        inteiro numeros2[5]
        inteiro soma = 0 
       
        escreva("Elementos do vetor numeros1:\n")
        para (inteiro i = 0; i < 5; i++)
        {
            escreva(numeros1[i], "\n") 
        }

        
        numeros[0] = 10
        numeros[1] = 20
        numeros[2] = 30
        numeros[3] = 40
        numeros[4] = 50

       
        escreva("Elementos do vetor numeros2:\n")
        para (inteiro i1 = 0; i1 < 5; i1++)
        {
            numeros2[i1] = (i1 + 1) * 10
            escreva(numeros2[i1], "\n") 
        }

       
        faca
        {
            escreva("\nEscolha uma opção:\n")
            escreva("1. Acessar um elemento do vetor 'numeros'\n")
            escreva("2. Modificar um elemento do vetor 'numeros'\n")
            escreva("3. Exibir a soma dos elementos do vetor 'numeros'\n")
            escreva("4. Explicar o que são vetores\n") 
            escreva("5. Preencher o vetor de reais\n")
            escreva("6. Preencher o vetor de letras\n")
            escreva("0. Sair\n")
            escreva("Digite sua opção: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    escreva("O elemento na posição 2 é: ", numeros[2], "\n") 
                    pare

                caso 2:
                    inteiro posicao, novoValor
                    escreva("Digite a posição (0 a 4) para modificar: ")
                    leia(posicao)
                    escreva("Digite o novo valor: ")
                    leia(novoValor)
                    se (posicao >= 0 e posicao < 5)
                    {
                        numeros[posicao] = novoValor 
                        escreva("O vetor atualizado:\n")
                        para (inteiro i = 0; i < 5; i++)
                        {
                            escreva(numeros[i], " ")
                        }
                        escreva("\n")
                    }
                    senao
                    {
                        escreva("Posição inválida!\n")
                    }
                    pare

                caso 3:
                    soma = 0 
                    para (inteiro i = 0; i < 5; i++)
                    {
                        soma = soma + numeros[i] 
                    }
                    escreva("Soma dos elementos do vetor: ", soma, "\n")
                    pare

                caso 4:
                    escreva("Vetores são estruturas de dados que permitem armazenar\n")
                    escreva("uma coleção de elementos do mesmo tipo. O tamanho\n")
                    escreva("de um vetor deve ser definido no momento da sua\n")
                    escreva("declaração e não pode ser alterado. Por exemplo,\n")
                    escreva("um vetor de inteiros pode ser declarado assim:\n")
                    escreva("inteiro numeros[5]\n")
                    escreva("Você pode acessar e modificar os elementos usando\n")
                    escreva("índices, que começam em 0.\n")
                    pare

                caso 5:
                    real valores[5]
                    escreva("Preencha o vetor de reais (máximo ", 5, "):\n") 
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva("Valor ", i + 1, ": ")
                        leia(valores[i]) 
                    }
                    escreva("Valores cadastrados:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(valores[i], "\n")
                    }
                    pare

                caso 6:
                    caracter letras[5]
                    escreva("Preencha o vetor de letras (máximo ", 5, "):\n") 
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva("Letra ", i + 1, ": ")
                        leia(letras[i]) 
                    }
                    escreva("Letras cadastradas:\n")
                    para (inteiro i = 0; i < 5; i++)
                    {
                        escreva(letras[i], "\n") 
                    }
                    pare

                caso 0:
                    escreva("Saindo do programa...\n")
                    pare

                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        } enquanto (opcao != 0)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2057; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */