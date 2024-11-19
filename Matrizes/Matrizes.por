programa {
    inteiro i, j, linhas, colunas, k
    funcao inicio() {
        inteiro opcao
        inteiro matriz1[2][2], matriz2[2][2], resultado[2][2]
        cadeia ignorar

        faca {
            escreva("\nEscolha uma opção:\n")
            escreva("1. Explicar o que são matrizes\n")
            escreva("2. Explicar a estrutura de uma matriz\n")
            escreva("3. Somar duas matrizes\n")
            escreva("4. Subtrair duas matrizes\n")
            escreva("5. Multiplicar duas matrizes\n")
            escreva("6. Transposta de uma matriz\n")
            escreva("7. Testar operações com matrizes\n")
            escreva("8. Preencher matriz recursivamente\n")
             escreva("9. Ordenar elementos de uma matriz\n")
            escreva("0. Sair\n")
            escreva("Digite sua opção: ")
            leia(opcao)
            limpa()

            escolha (opcao) {
                caso 1:
                    escreva("Matrizes são tabelas de dados organizadas em linhas e colunas.\n")
                    escreva("Cada elemento de uma matriz é identificado por um par de índices: um para a linha e outro para a coluna.\n")
                    escreva("Por exemplo, uma matriz 2x3 tem 2 linhas e 3 colunas.\n")
                    escreva("As matrizes são utilizadas em várias áreas como álgebra linear, processamento de imagens, e ciência de dados.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa()
                    pare

                caso 2:
                   escreva("A estrutura de uma matriz é composta por:\n")
				escreva("A primeira abertura de colchetes representa o número de linhas e a segunda o número de colunas da nossa matriz.\n")
				escreva("Linhas: Cada linha da matriz é uma sequência horizontal de elementos.\n")
				escreva("Colunas: Cada coluna é uma sequência vertical de elementos.\n")
				escreva("Exemplo de matriz 2x3:\n")
				escreva("[ a00, a01, a02 ]\n")
				escreva("[ a10, a11, a12 ]\n")
				escreva("Onde a00, a01, a02, etc., são os elementos da matriz.\n")
				escreva("Pressione Enter para continuar ao menu.\n")
				leia(ignorar)
				limpa()
				escreva("Para declararmos uma matriz, podemos fazê-lo das seguintes formas:\n")
				escreva("tipo nome_matriz[x][y]\n")
				escreva("Sendo 'x' o número de linhas e 'y' o número de colunas.\n")
				escreva("Quando declaramos uma matriz assim: matriz1[2][2], sabemos que essa matriz terá quatro valores informados.\n")
				escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa() 				
                    
                    pare

                caso 3:
                    escreva("A soma de matrizes só é possível quando ambas as matrizes têm o mesmo número de linhas e o mesmo número de colunas.\n")
                    escreva("Isso ocorre porque, ao somar matrizes, os elementos correspondentes das duas matrizes são somados\n")
                    escreva("Por exemplo, se temos duas matrizes ( A ) e ( B ), ambas com (x) linhas e (y) colunas, o elemento de (i) e (j) da coluna de ( A ) será somado ao elemento correspondente de ( B )\n")
                    escreva("Pressione Enter para continuar ao menu.\n")
				leia(ignorar)
                    limpa()
                    escreva("Digite os elementos da primeira matriz:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva("Elemento [", i+1, ",", j+1, "]: ")
                            leia(matriz1[i][j])
                        }
                    }
                    escreva("Digite os elementos da segunda matriz:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva("Elemento [", i+1, ",", j+1, "]: ")
                            leia(matriz2[i][j])
                        }
                    }

                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            resultado[i][j] = matriz1[i][j] + matriz2[i][j]
                             escreva("Pressione Enter continuar")
                    		leia(ignorar) 
                        }
                    }

                    escreva("Resultado da soma das matrizes:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva(resultado[i][j], " ")
                        }
                        escreva("\n")
                    }
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa()
                    pare
                caso 4:
                	escreva("A subtração de matrizes só é possível quando ambas as matrizes têm o mesmo número de linhas e o mesmo número de colunas.\n")
				escreva("Isso ocorre porque, ao subtrair matrizes, os elementos correspondentes das duas matrizes são subtraídos.\n")
				escreva("Por exemplo, se temos duas matrizes ( A ) e ( B ), ambas com (x) linhas e (y) colunas, o elemento de (i) e (j) da matriz ( A ) será subtraído pelo elemento correspondente de ( B ).\n")
				escreva("Pressione Enter para continuar ao menu.\n")
				leia(ignorar)
				limpa()
                	escreva("Digite os elementos da primeira matriz (A):\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva("Elemento [", i+1, ",", j+1, "]: ")
                            leia(matriz1[i][j])
                        }
                    }

                    escreva("Digite os elementos da segunda matriz (B):\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva("Elemento [", i+1, ",", j+1, "]: ")
                            leia(matriz2[i][j])
                        }
                    }

                  
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            resultado[i][j] = matriz1[i][j] - matriz2[i][j]
                        }
                    }

                    escreva("Resultado da subtração das matrizes (A - B):\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva(resultado[i][j], " ")
                        }
                        escreva("\n")
                    }
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa()
                    pare
                
                caso 5:
                	escreva("A multiplicação de matrizes só é possível quando o número de colunas da primeira matriz é igual ao número de linhas da segunda matriz.\n")
				escreva("Isso ocorre porque, ao multiplicar matrizes, os elementos das linhas da primeira matriz são multiplicados pelos elementos das colunas da segunda matriz.\n")
				escreva("Por exemplo, se temos uma matriz ( A ) de ordem ( 2 x 2 ) e uma matriz ( B ) de ordem ( 2 x 2 ), a multiplicação será possível porque o número de colunas de ( A ) é igual ao número de linhas de ( B ).\n")
				escreva("Vamos considerar as matrizes:\n")
				escreva("A = [ 1  2 ]\n")
				escreva("    [ 3  4 ]\n")
				escreva("B = [ 5  6 ]\n")
				escreva("    [ 7  8 ]\n")
				escreva("Por exemplo, o elemento da 1ª linha e 1ª coluna da matriz resultante será:\n")
				escreva("1*5 + 2*7 = 5 + 14 = 19\n")
				escreva("O elemento da 1ª linha e 2ª coluna da matriz resultante será:\n")
				escreva("1*6 + 2*8 = 6 + 16 = 22\n")
				escreva("O elemento da 2ª linha e 1ª coluna da matriz resultante será:\n")
				escreva("3*5 + 4*7 = 15 + 28 = 43\n")
				escreva("E o elemento da 2ª linha e 2ª coluna da matriz resultante será:\n")
				escreva("3*6 + 4*8 = 18 + 32 = 50\n")
				escreva("Portanto, a matriz resultante será:\n")
				escreva("Resultado = [ 19  22 ]\n")
				escreva("           [ 43  50 ]\n")
				escreva("Pressione Enter para continuar.\n")
				leia(ignorar)
				limpa()
                    escreva("Digite os elementos da primeira matriz (A):\n")
                    para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			        escreva("Elemento [", i+1, ",", j+1, "]: ")
			        leia(matriz1[i][j])
			    }
			}
			
			escreva("Digite os elementos da segunda matriz (B):\n")
			para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			        escreva("Elemento [", i+1, ",", j+1, "]: ")
			        leia(matriz2[i][j])
			    }
			}
			
			escreva("Resultado da multiplicação das matrizes (A * B):\n")
			para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			        resultado[i][j] = 0  
			        para (k = 0; k < 2; k++) {
			            resultado[i][j] = resultado[i][j] + matriz1[i][k] * matriz2[k][j]  
			        }
			    }
			}
			
			
			para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			    	
			        escreva(resultado[i][j], " ")
			    }
			    escreva("\n")
			}
			
			escreva("Pressione Enter para voltar ao menu")
			leia(ignorar)
			limpa()

                caso 6:
                	escreva("A transposta de uma matriz é obtida trocando suas linhas por colunas.\n")
				escreva("Ou seja, o elemento da i-ésima linha e j-ésima coluna da matriz original se torna o elemento da j-ésima linha e i-ésima coluna da matriz transposta.\n")
				escreva("Por exemplo, se temos uma matriz ( A ) de ordem ( 2 x 2 ):\n")
				escreva("A = [ 1  2 ]\n")
				escreva("    [ 3  4 ]\n")
				escreva("A transposta, denotada por ( A^T ), será de ordem ( 2 x 2 ) e ficará assim:\n")
				escreva("A^T = [ 1  3 ]\n")
				escreva("       [ 2  4 ]\n")
				escreva("Ou seja, a primeira linha de A (1, 2) se torna a primeira coluna de A^T (1, 2), e a segunda linha de A (3, 4) se torna a segunda coluna de A^T (3, 4).\n")
				escreva("Pressione Enter para continuar.\n")
				leia(ignorar)
				limpa()
                    escreva("Digite os elementos da matriz:\n")
                    para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			        escreva("Elemento [", i+1, ",", j+1, "]: ")
			        leia(matriz1[i][j])
			    }
			}
			
			
			escreva("Matriz original:\n")
			para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			        escreva(matriz1[i][j], " ")
			    }
			    escreva("\n")
			}
			
			
			escreva("Resultado da transposta da matriz:\n")
			para (i = 0; i < 2; i++) {
			    para (j = 0; j < 2; j++) {
			        escreva(matriz1[j][i], " ") 
			    }
			    escreva("\n")
			}
			
			escreva("\nPressione Enter para continuar...\n")
			leia(ignorar)
			limpa()
			pare

                caso 7:
                    escreva("Testando operações com matrizes:\n")
                    testarMatrizes()
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa()
                    pare

                caso 8:
                    
                    escreva("Preenchendo matriz recursivamente...\n")
                    preencherMatrizRecursiva(matriz1, 0, 0)
                    escreva("Matriz preenchida recursivamente:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva(matriz1[i][j], " ")
                        }
                        escreva("\n")
                    }
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa()
                    pare
                    caso 9:
                   escreva("A ordenação de uma matriz em ordem crescente consiste em rearranjar todos os seus elementos do menor para o maior, levando em conta todos os elementos presentes na matriz, não apenas por linhas ou colunas.\n")
			    escreva("Esse processo é semelhante a ordenar um vetor de números, mas, no caso da matriz, trabalhamos com todos os elementos de forma unificada.\n")
			    escreva("Por exemplo, vamos considerar a seguinte matriz (A) de ordem (2 x 3):\n")
			    escreva("A = [ 5  3  8 ]\n")
			    escreva("    [ 1  6  7 ]\n")
			    escreva("Primeiro, vamos extrair todos os elementos dessa matriz em uma única lista:\n")
			    escreva("[ 5, 3, 8, 1, 6, 7 ]\n")
			    escreva("Agora, ordenamos essa lista em ordem crescente:\n")
			    escreva("[ 1, 3, 5, 6, 7, 8 ]\n")
			    escreva("Após a ordenação, reorganizamos os elementos na forma de uma nova matriz, mantendo a mesma ordem de linhas e colunas da matriz original.\n")
			    escreva("Neste caso, a matriz ordenada em ordem crescente será:\n")
			    escreva("A ordenada = [ 1  3  5 ]\n")
			    escreva("             [ 6  7  8 ]\n")
			    escreva("Portanto, todos os elementos da matriz foram rearranjados do menor para o maior.\n")
			    escreva("Pressione Enter para continuar.\n")
			     leia(ignorar)
                    limpa()
			     escreva("Digite os elementos da matriz para ordenar:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva("Elemento [", i+1, ",", j+1, "]: ")
                            leia(matriz1[i][j])
                        }
                    }

                   
                    ordenarMatrizCrescente(matriz1)
                    escreva("Matriz ordenada em ordem crescente:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva(matriz1[i][j], " ")
                        }
                        escreva("\n")
                    }

                   
                    ordenarMatrizDecrescente(matriz1)
                    escreva("Matriz ordenada em ordem decrescente:\n")
                    para (i = 0; i < 2; i++) {
                        para (j = 0; j < 2; j++) {
                            escreva(matriz1[i][j], " ")
                        }
                        escreva("\n")
                    }

                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar)
                    limpa()
                    pare

                caso 0:
                    escreva("Saindo do programa...\n")
                    pare

                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        } enquanto (opcao != 0)
    }


    funcao ordenarMatrizCrescente(inteiro matriz[][]) {
        inteiro vetor[4], i, j, temp
     
        k = 0
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                vetor[k] = matriz[i][j]
                k = k + 1
            }
        }

       
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3 - i; j++) {
                se (vetor[j] > vetor[j + 1]) {
                    temp = vetor[j]
                    vetor[j] = vetor[j + 1]
                    vetor[j + 1] = temp
                }
            }
        }

       
        k = 0
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                matriz[i][j] = vetor[k]
                k = k + 1
            }
        }
    }

    funcao ordenarMatrizDecrescente(inteiro matriz[][]) {
        inteiro vetor[4], i, j, temp
        
        k = 0
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                vetor[k] = matriz[i][j]
                k = k + 1
            }
        }

       
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3 - i; j++) {
                se (vetor[j] < vetor[j + 1]) {
                    temp = vetor[j]
                    vetor[j] = vetor[j + 1]
                    vetor[j + 1] = temp
                }
            }
        }


       
        k = 0
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                matriz[i][j] = vetor[k]
                k = k + 1
            }
        }
    }


    funcao preencherMatrizRecursiva(inteiro matriz[][], inteiro i, inteiro j) {
       
        se (i < 2) {
            se (j < 2) {
                matriz[i][j] = i + j  
                preencherMatrizRecursiva(matriz, i, j + 1)  
            } senao {
                preencherMatrizRecursiva(matriz, i + 1, 0)  
            }
        }
    }

    funcao testarMatrizes() {
       
        inteiro matrizA[2][2] = {{1, 2}, {3, 4}}
        inteiro matrizB[2][2] = {{5, 6}, {7, 8}}
        inteiro resultadoSoma[2][2]
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                resultadoSoma[i][j] = matrizA[i][j] + matrizB[i][j]
            }
        }
        escreva("Resultado da soma das matrizes A e B:\n")
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                escreva(resultadoSoma[i][j], " ")
            }
            escreva("\n")
        }

        
        inteiro resultadoMultiplicacao[2][2]
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                resultadoMultiplicacao[i][j] = 0
                para (k = 0; k < 2; k++) {
                    resultadoMultiplicacao[i][j] = resultadoMultiplicacao[i][j] + (matrizA[i][k] * matrizB[k][j])
                }
            }
        }
        escreva("Resultado da multiplicação das matrizes A e B:\n")
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                escreva(resultadoMultiplicacao[i][j], " ")
            }
            escreva("\n")
        }

    
        escreva("Resultado da transposta da matriz A:\n")
        para (i = 0; i < 2; i++) {
            para (j = 0; j < 2; j++) {
                escreva(matrizA[j][i], " ")
            }
            escreva("\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2723; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz1, 5, 16, 7}-{matriz2, 5, 31, 7}-{resultado, 5, 46, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */