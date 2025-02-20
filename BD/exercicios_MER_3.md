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
Atributos: ID(SMALLINT); Nome(VARCHAR); Idade(INT); Gênero(CHAR); Tempo de Serviço()

Entidade: Ônibus
Atributos: Placa(CHAR); Modelo(VARCHAR); Marca(SMALLTEXT); ID(SMALLINT);

Entidade: Rota
Atributos: ID(SMALLINT); Data/Hora(DATETIME); Endereços(VARCHAR)

Entidade: Parada
Atributos: ID(SMALLINT); Endereço(VARCHAR); Número(TINYINT)

Relacionamentos:
Motorista (1:1) ------> Dirige
Dirige (1:1) --------> Ônibus
Ônibus (1:1)----------> Percorre
Percorre (1:1) --------> Rota
Rota (N:N) --------> Parada

```

[def]: exercicios_MER_DER.jpg
