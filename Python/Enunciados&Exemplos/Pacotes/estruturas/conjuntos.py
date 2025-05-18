def animais_unicos(tamanho_lista):
    animais = []
    
    for i in range(tamanho_lista):
        animal = input(f"Digite o nome do animal {i + 1}: ").strip()
        animais.append(animal)
    
    return set(animais)