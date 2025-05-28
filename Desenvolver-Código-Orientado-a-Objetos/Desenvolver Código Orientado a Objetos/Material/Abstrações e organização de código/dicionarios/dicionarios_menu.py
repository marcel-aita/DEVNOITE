from .dicionarios_funcoes import (
    dicionario_acessando_valor_chave,
    dicionario_Atualizando_valores_update,
    dicionario_clear,
    dicionario_copia,
    dicionario_counter,
    dicionario_counter_most_common,
    dicionario_dict,
    dicionario_fromkeys,
    dicionario_interando_chaves_valores,
    dicionario_interativo,
    dicionario_lista_dict,
    dicionario_listando_chave_valor,
    dicionario_listando_chaves,
    dicionario_listando_valores,
    dicionario_popitem,
    dicionario_removendo_del,
    dicionario_removendo_pop,
    dicionario_Usando_get_evitar_erro,
    dicionario_valor_padrao,
    dicionario_verifica_existencia_chave
)

def menu_dicionario_principal():
    opcoes = {
        '1': dicionario_acessando_valor_chave,
        '2': dicionario_Atualizando_valores_update,
        '3': dicionario_clear,
        '4': dicionario_copia,
        '5': dicionario_counter,
        '6': dicionario_counter_most_common,
        '7': dicionario_dict,
        '8': dicionario_fromkeys,
        '9': dicionario_interando_chaves_valores,
        '10': dicionario_interativo,
        '11': dicionario_lista_dict,
        '12': dicionario_listando_chave_valor,
        '13': dicionario_listando_chaves,
        '14': dicionario_listando_valores,
        '15': dicionario_popitem,
        '16': dicionario_removendo_del,
        '17': dicionario_removendo_pop,
        '18': dicionario_Usando_get_evitar_erro,
        '19': dicionario_valor_padrao,
        '20': dicionario_verifica_existencia_chave,
        '0': None
    }

    while True:
        print("\n--- Menu Dicionários ---")
        print("Dicionários são coleções de pares chave-valor, como {'nome': 'Ana', 'idade': 25}")
        for chave, func in opcoes.items():
            if chave != '0':
                # - func.__name__ obtém o nome da função como string (ex: "dicionario_copia")
                # - replace('_', ' ') substitui os underlines por espaços (ex: "dicionario copia")
                # - capitalize() coloca a primeira letra em maiúscula
                print(f"{chave} - {func.__name__.replace('_', ' ').capitalize()}")
        print("0 - Voltar")

        escolha = input("Escolha uma função para executar: ")

        acao = opcoes.get(escolha)
        if acao:
            acao()
        elif escolha == '0':
            break
        else:
            print("Opção inválida. Tente novamente.")
if __name__ == "__main__":
    menu_dicionario_principal()