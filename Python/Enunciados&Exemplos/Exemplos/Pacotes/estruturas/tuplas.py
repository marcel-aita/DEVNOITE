def mostrar_cores(tamanho_cores):
    cores = []  
    for i in range(tamanho_cores):
        cor = input(f"Digite o nome da cor {i + 1}: ").strip()
        cores.append(cor) 
    
    
    return tuple(cores)
