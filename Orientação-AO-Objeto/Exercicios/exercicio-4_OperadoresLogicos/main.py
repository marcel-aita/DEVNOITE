#importe as funções de operacoes.py e as use.
# #Função soma(a, b) e diferenca(a,b)
from operacoes import soma, diferenca
# #Função soma(a, b) e diferenca(a,b)
def main():
    a = 5
    b = 3
    print(f"A soma de {a} e {b} é: {soma(a, b)}")
    print(f"A diferença de {a} e {b} é: {diferenca(a, b)}")
if __name__ == "__main__":
    main()