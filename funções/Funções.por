programa
{
     cadeia ignorar
    funcao inicio()
    {
        inteiro opcao
        inteiro num1, num2, recursivo, resultado
        inteiro vetor[5] 

        faca
        {
            escreva("\nEscolha uma opção:\n")
            escreva("1. Explicar o que são funções\n")
            escreva("2. Explicar a estrutura de uma função\n")
            escreva("3. Explicar parâmetros e argumentos\n")
            escreva("4. Explicar valor de retorno\n")
            escreva("5. Explicar escopo de variáveis\n")
            escreva("6. Somar dois números\n")
            escreva("7. Subtrair dois números\n")
            escreva("8. Multiplicar dois números\n")
            escreva("9. Dividir dois números\n")
            escreva("10. Teste de função recursiva direta\n")
            escreva("11. Teste de função recursiva indireta\n")
            escreva("12. Testar funções\n")
            escreva("13. Tratamento de Erros\n")
            escreva("14. Somar elementos de um vetor\n") 
            escreva("0. Sair\n")
            escreva("Digite sua opção: ")
            leia(opcao)
            limpa()

            escolha (opcao)
            {
                caso 1:
                    escreva("Funções são blocos de código que realizam uma tarefa específica.\n")
                    escreva("Elas ajudam a organizar o código, tornando-o mais modular e reutilizável.\n")
                    escreva("Por exemplo, uma função pode receber dois números, realizar uma operação (como soma) e retornar o resultado.\n")
                    escreva("Além disso, funções podem ser reutilizadas em diferentes partes do programa sem a necessidade de reescrever o código.\n")
                    escreva("Isso torna o código mais limpo, organizado e fácil de manter.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 2:
                    escreva("A estrutura de uma função é composta por três partes principais:\n")
                    escreva("Cabeçalho: É onde você define o nome da função, o tipo de dado que ela retorna e os parâmetros que ela recebe (se houver).\n")
                    escreva("   Exemplo: 'inteiro soma(inteiro a, inteiro b)' — Aqui, a função 'soma' recebe dois parâmetros do tipo inteiro e retorna um valor inteiro.\n")
                    escreva("Corpo: É o bloco de código onde a função executa suas operações. O corpo pode conter declarações de variáveis, estruturas de controle e o cálculo da operação desejada.\n")
                    escreva("   Exemplo de corpo de função: 'retorne a + b;' — Aqui, a função retorna o resultado da soma dos dois números passados como parâmetros.\n")
                    escreva("Retorno: Toda função tem a possibilidade de retornar um valor. O tipo do valor retornado deve ser o mesmo que foi declarado no cabeçalho.\n")
                    escreva("   Exemplo de retorno: 'retorne a + b;' — No caso de nossa função soma, ela retorna o resultado da soma de 'a' e 'b'.\n")
                    escreva("Essas três partes formam a estrutura básica de uma função em muitos linguagens de programação.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 3:
                    escreva("Parâmetros e Argumentos:\n")
                    escreva("Os parâmetros são variáveis que você define no cabeçalho de uma função. Eles servem para receber valores que serão usados dentro da função.\n")
                    escreva("Os argumentos são os valores reais que você passa para esses parâmetros quando chama a função.\n")
                    escreva("Por exemplo, na função 'soma(inteiro a, inteiro b)', 'a' e 'b' são parâmetros. Quando você chama a função 'soma(3, 4)', '3' e '4' são os argumentos.\n")
                    escreva("Os parâmetros permitem que você escreva funções genéricas, que podem operar com diferentes valores, sem precisar alterar a função.\n")
                    escreva("Por exemplo, a função de soma pode somar qualquer par de números inteiros, porque os parâmetros 'a' e 'b' podem receber diferentes valores em cada chamada.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 4:
                    escreva("Valor de Retorno:\n")
                    escreva("O valor de retorno é o valor que a função devolve ao final da execução.\n")
                    escreva("Toda função que possui um tipo de retorno deve especificar um valor a ser retornado no final de sua execução.\n")
                    escreva("Por exemplo, na função 'soma', o valor retornado é o resultado da soma de 'a' e 'b'.\n")
                    escreva("O tipo de valor retornado deve ser compatível com o tipo declarado no cabeçalho da função.\n")
                    escreva("Se o cabeçalho for 'inteiro soma(inteiro a, inteiro b)', o valor retornado também deve ser do tipo 'inteiro'.\n")
                    escreva("Caso contrário, você pode ter um erro de tipo ou um comportamento inesperado.\n")
                    escreva("Funções sem valor de retorno usam o tipo 'void' ou simplesmente não retornam nada, como funções que apenas executam ações sem necessidade de retorno.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 5:
                    escreva("Escopo de Variáveis:\n")
                    escreva("O escopo de uma variável determina onde ela pode ser acessada ou modificada dentro do programa.\n")
                    escreva("Existem dois tipos principais de escopo em funções:\n")
                    escreva("Escopo Local: Variáveis declaradas dentro de uma função têm um escopo local, ou seja, só podem ser acessadas dentro dessa função. Elas não afetam outras partes do programa.\n")
                    escreva("   Exemplo: Se você declarar 'inteiro resultado = 10;' dentro da função soma, a variável 'resultado' só pode ser usada dentro dessa função.\n")
                    escreva("Escopo Global: Variáveis declaradas fora de qualquer função têm um escopo global, ou seja, podem ser acessadas por qualquer parte do programa.\n")
                    escreva("   Exemplo: Se você declarar 'inteiro total;' fora de qualquer função, essa variável pode ser usada em qualquer função do programa.\n")
                    escreva("Além disso, variáveis de escopo local não afetam as variáveis de escopo global, e o oposto também é verdadeiro.\n")
                    escreva("Compreender o escopo é importante para evitar conflitos de variáveis e manter o código organizado.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 6:
                    escreva("Digite o primeiro número: ")
                    leia(num1)
                    escreva("Digite o segundo número: ")
                    leia(num2)
                    resultado = somar(num1, num2)
                    escreva("Resultado da soma: ", resultado, "\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 7:
                    escreva("Digite o primeiro número: ")
                    leia(num1)
                    escreva("Digite o segundo número: ")
                    leia(num2)
                    resultado = subtrair(num1, num2)
                    escreva("Resultado da subtração: ", resultado, "\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 8:
                    escreva("Digite o primeiro número: ")
                    leia(num1)
                    escreva("Digite o segundo número: ")
                    leia(num2)
                    resultado = multiplicar(num1, num2)
                    escreva("Resultado da multiplicação: ", resultado, "\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 9:
                    escreva("Digite o primeiro número: ")
                    leia(num1)
                    escreva("Digite o segundo número: ")
                    leia(num2)
                    resultado = dividirComErro(num1, num2) 
                    escreva("Resultado da divisão: ", resultado, "\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 10:
                    escreva("Digite o número para teste recursivo: ")
                    leia(recursivo)
                    escreva("Contagem regressiva: ")
                    Recursivo(recursivo)
                    escreva("\n")
                  
                    escreva("\nDiferença entre Recursão Direta e Indireta:\n")
                    escreva("Recursão Direta: A função chama a si mesma diretamente.\n")
                    escreva("Recursão Indireta: A função chama outra função que, por sua vez, chama a função original.\n")
                    
                    escreva("\nCondições para que uma função seja recursiva:\n")
                    escreva("A função deve chamar a si mesma.\n")
                    escreva("Deve haver uma condição de parada para evitar chamadas infinitas.\n")
                    escreva("As chamadas recursivas devem progredir em direção à condição de parada.\n")
                    
                    escreva("\nRiscos de usar recursão excessiva:\n")
                    escreva("Exaustão da pilha de chamadas (stack overflow), resultando em erro.\n")
                    escreva("Desempenho reduzido devido a chamadas de função sobrepostas e consumo de memória.\n")
                    escreva("Dificuldade na depuração de funções recursivas complexas.\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare
                caso 11:
                    escreva("Digite o número para teste recursivo indireto: ")
                    leia(recursivo)
                    escreva("Contagem regressiva indireta: ")
                    RecursivoIndireta(recursivo)
                    escreva("\n")
                    escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare
                	pare
                caso 12:
                    escreva("Testes de Funções:\n")
                    testarFuncoes()
                   escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 13:
                    escreva("Tratamento de Erros:\n")
                    escreva("Como lidar com erros em funções.\n")
                    escreva("Teste a divisão: \n")
                    escreva("Digite o primeiro número: ")
                    leia(num1)
                    escreva("Digite o segundo número: ")
                    leia(num2)
                    resultado = dividirComErro(num1, num2) 
                    escreva("Resultado da divisão: ", resultado, "\n")
                   escreva("Pressione Enter para voltar ao menu")
                    leia(ignorar) 
                    limpa()
                    pare

                caso 14:
                    escreva("Digite 5 números para o vetor:\n")
                para (inteiro i = 0; i < 5; i++)
                {
                    escreva("Digite o ", i + 1, "º número: ")
                    leia(vetor[i])  
                }
                resultado = somarVetor(vetor, 5)  
                escreva("Resultado da soma dos elementos do vetor: ", resultado, "\n")
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
   
    funcao RecursivoIndireta(inteiro a)
    {
        se (a > 0) 
        {
            escreva(a, ", ")
            Recursivo(a - 1)  
        }
        senao
        {
            escreva(a)  
        }
    }

    
    funcao inteiro somar(inteiro a, inteiro b)
    {
        retorne a + b
    }

   
    funcao inteiro somarVetor(inteiro v[], inteiro tamanho)
    {
        inteiro soma = 0
        para (inteiro i = 0; i < tamanho; i++)
        {
            soma = soma + v[i]
        }
        retorne soma
    }

    
    funcao inteiro subtrair(inteiro a, inteiro b)
    {
        retorne a - b
    }

    
    funcao inteiro multiplicar(inteiro a, inteiro b)
    {
        retorne a * b
    }

   
    funcao inteiro dividirComErro(inteiro a, inteiro b)
    {
        se (b == 0 ou a==0) 
        {
            escreva("Erro: Divisão por zero não é permitida.\n")
            retorne 0 
        }
        senao
        {
            retorne a / b 
        }
    }

    // Função recursiva
    funcao Recursivo(inteiro a)
    {
        se (a == 0)
        {
            escreva(a)
        }
        senao
        {
            escreva(a, ',')
            Recursivo(a - 1)
        }
    }

   
    funcao testarFuncoes()
    {
        
        inteiro resultadoSoma
        resultadoSoma = somar(2, 3)
        se (resultadoSoma == 5)
        {
            escreva("Teste de soma passou!\n")
        }
        senao
        {
            escreva("Teste de soma falhou! Resultado: ", resultadoSoma, "\n")
        }

        
        inteiro resultadoSubtracao
        resultadoSubtracao = subtrair(5, 2)
        se (resultadoSubtracao == 3)
        {
            escreva("Teste de subtração passou!\n")
        }
        senao
        {
            escreva("Teste de subtração falhou! Resultado: ", resultadoSubtracao, "\n")
        }

       
        inteiro resultadoMultiplicacao
        resultadoMultiplicacao = multiplicar(4, 2)
        se (resultadoMultiplicacao == 8)
        {
            escreva("Teste de multiplicação passou!\n")
        }
        senao
        {
            escreva("Teste de multiplicação falhou! Resultado: ", resultadoMultiplicacao, "\n")
        }

        
        inteiro resultadoDivisao
        resultadoDivisao = dividirComErro(10, 2)
        se (resultadoDivisao == 5)
        {
            escreva("Teste de divisão passou!\n")
        }
        senao
        {
            escreva("Teste de divisão falhou! Resultado: ", resultadoDivisao, "\n")
        }
      
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 14861; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */