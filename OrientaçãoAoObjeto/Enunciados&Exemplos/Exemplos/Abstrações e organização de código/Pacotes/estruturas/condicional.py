def classificar_idade(idade):
    try:
        if idade < 0:
            return "Idade inválida."
        elif idade < 12:
            return "Criança"
        elif idade < 18:
            return "Adolescente"
        elif idade < 60:
            return "Adulto"
        else:
            return "Idoso"
    except ValueError:
        return "Erro: Entrada inválida."
