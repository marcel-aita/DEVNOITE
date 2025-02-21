# Sistema de Suporte Técnico (MER)

```
Entidade: Técnico 
Atributos: ID(INT); Nome(VARCHAR); CPF(VARCHAR); Telefone(VARCHAR); Email(VARCHAR); Endereço(VARCHAR); Função(VARCHAR)

Entidade: Cliente
Atributos: ID(INT); Nome(VARCHAR); CPF(VARCHAR); Telefone(VARCHAR); Email(VARCHAR); Endereço(VARCHAR)

Entidade: Chamado
Atributos: ID(INT); Data/Hora(DATETIME); Endereço(VARCHAR); Detalhes(VARCHAR)

Entidade: Categoria_Chamado
Atributos: ID(INT); Tipo(VARCHAR); Detalhes(VARCHAR);

Relacionamentos:
Técnico (1:N) ------> Cliente
Cliente (1:N) -------->  Chamado
Chamado (1:N) ----------> Categoria_Chamado

```

# Sistema de Gestão de Transporte Público (MER)

```
Entidade: Motorista 
Atributos: ID(INT); Nome(VARCHAR); CPF(VARCHAR); Endereço(VARCHAR); Telefone(VARCHAR); Email(VARCHAR); Carteira_motorista(VARCHAR)

Entidade: Ônibus
Atributos: ID(INT); Placa(CHAR); Modelo(CHAR); Marca(VARCHAR); Kilometros_rodados(CHAR); 

Entidade: Rota
Atributos: ID(INT); Data/Hora(DATETIME); Endereços(VARCHAR)

Entidade: Parada
Atributos: ID(INT); Endereço(VARCHAR); Número(TINYINT)

Relacionamentos:
Motorista (1:1) ------> Ônibus
Ônibus (1:1) ---------> Rota
Rota (1:N) -----------> Parada

```

[def]: exercicios_MER_DER.jpg
