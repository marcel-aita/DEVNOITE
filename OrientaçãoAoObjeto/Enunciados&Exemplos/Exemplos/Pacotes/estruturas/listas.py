def operacoes_lista(tamanho_lista):
    frutas = []  
    for i in range(tamanho_lista):
        fruta = input(f"Digite o nome da fruta {i + 1}: ").strip()
        frutas.append(fruta)  
    return frutas
