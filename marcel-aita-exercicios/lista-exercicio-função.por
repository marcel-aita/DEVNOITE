programa {
  funcao inicio()
  {
   inteiro opcao
   inteiro num1, num2
   inteiro resultado
   inteiro resultadoFatorial
   inteiro n
   cadeia ignorar
   
   faca
   {
    escreva("1. Função soma: \n")
    escreva("2. Função subtrair: \n")
    escreva("3. Função multiplicação: \n")
    escreva("4. Função divisão: \n")
    escreva("5. Função de 'Mínimo entre dois números': \n")
    escreva("6. Função de 'Maior valor entre dois números': \n")
    escreva("7. Função teste de paridade: \n")
    escreva("8. Função calculo fatorial: \n")
    escreva("9. Teste a função '(+ ou - ou =0)' : \n")
    escreva("0. Para sair: \n")
    leia(opcao)
    escolha (opcao)
    {
      caso 1:
      escreva("Digite o primeiro número: ")
      leia(num1)
      escreva("Digite o segundo número: ")
      leia(num2)
      resultado = somaNumeros(num1, num2)
      escreva("Resultado da soma: ", resultado, "\n")
      escreva("Pressione Enter para voltar ao menu")
      leia(ignorar) 
      limpa()
      pare

      caso 2:
      escreva("Digite dois números a serem subtraídos: \n")
      leia(num1)
      leia(num2)
      resultado = subtraiNumeros(num1, num2)
      escreva("Resultado da subtração: ", resultado, "\n")
      escreva("Pressione Enter para voltar ao menu")
      leia(ignorar)
      limpa()

      caso 3:
      escreva("Digite dois números a serem multiplicados: \n")
      leia(num1, num2)
      resultado = multiplicaNumeros(num1, num2)
      escreva("Resultado da multiplicação: ", resultado, "\n")
      leia(ignorar)
      limpa()

      caso 4:
      escreva("Digite dois números a serm divididos: \n")
      leia(num1, num2)
      resultado = divideNumeros(num1, num2)
      escreva("Resultado da divisão: ", resultado, "\n")

      caso 5: 
      escreva("Digite dois números: \n")
      leia(num1, num2)
      resultado = menorQ(num1, num2)
      escreva("O menor valor é: ", resultado, "\n")

      caso 6: 
      escreva("Digite dois números: \n")
      leia(num1, num2)
      resultado = maiorQ(num1, num2)
      escreva("O maior valor é: ", resultado, "\n")

      caso 7:
      escreva("Digite dois números: \n")
      leia(num1, num2)
      resultado = numeroPar(num1, num2)
      escreva("O número par é: ", resultado, "\n")

      caso 8:
      escreva("Digite um número: \n")
      leia(n)
      resultado = fatorial(n)
      escreva("O fatorial é: ", resultado, "\n")

      caso 9:
      escreva("Digite um número: \n")
      leia(n)
      resultado = testaNumero(n)
      escreva("O número é: ", resultado, "\n")


     } 
   }enquanto (opcao != 0)   
}

funcao inteiro somaNumeros (inteiro numero1, inteiro numero2)//puxa as variáveis
{ 
  retorne numero1 + numero2//fórmula matemática
}

funcao inteiro subtraiNumeros (inteiro numero1, inteiro numero2)
{
  retorne numero1 - numero2
}

funcao inteiro multiplicaNumeros (inteiro numero1, inteiro numero2)
{
  retorne numero1 * numero2
}

funcao inteiro divideNumeros (inteiro numero1, inteiro numero2)
{
  retorne numero1 / numero2
}

funcao inteiro menorQ (inteiro numero1, inteiro numero2)
{
  se(numero1 < numero2)
  {
    retorne numero1
  }
  senao
  {
    retorne numero2
  }
}

funcao inteiro maiorQ (inteiro numero1, inteiro numero2)
{
  se(numero1 > numero2)
  {
    retorne numero1
  }
  senao
  {
    retorne numero2
  }
}

funcao inteiro numeroPar (inteiro numero1, inteiro numero2)
{
  se(numero1 % 2 ==0)
  {
    retorne numero1
  }
  senao
  {
    escreva("Número inválido. \n")
  }
  se(numero2 % 2==0)
  {
    retorne numero2
  }
  senao
  {
    escreva("Número inválido. \n")
  }
}

funcao inteiro fatorial(inteiro n)
{
  inteiro i, fat
  fat = 1
    para (i = 1; i <= n; i = i + 1)
        {
            fat = fat * i
        }
        retorne fat
}

funcao inteiro testaNumero(inteiro n)
{
  inteiro i = n
  para(i = 0)
 
}
}