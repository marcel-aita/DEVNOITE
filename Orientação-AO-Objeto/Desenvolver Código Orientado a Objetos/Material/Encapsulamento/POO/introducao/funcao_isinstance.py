def explicar_isinstance():

    class Animal:
        pass

    class Cachorro():
        pass

    animal = Animal()
    cachorro = Cachorro()
    lista = []
    numero = 10

    print(f"\n isinstance(animal, Animal)` : {isinstance(animal, Animal)}") 
    print(f" isinstance(cachorro, Cachorro)`: {isinstance(cachorro, Cachorro)}") 
    print(f" isinstance(animal, Cachorro)` : {isinstance(animal, Cachorro)}") 
    print(f" isinstance(lista, list)`    : {isinstance(lista, list)}") 
    print(f" isinstance(numero, int)`    : {isinstance(numero, int)}") 
    input("Pressione Enter para voltar ao menu...")


if __name__ == "__main__":
    explicar_isinstance()