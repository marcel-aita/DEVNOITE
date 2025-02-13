# Sistema de Suporte Técnico (MER)

```
Entidade: Técnico 
Atributos: ID(SMALLINT); Gênero(CHAR); Nome(VARCHAR); Especialidade(TEXT); Experiência()

Entidade: Chamado
Atributos: ID(SMALLINT); Nome(VARCHAR); Idade(); Gênero(TINYTEXT); Endereço(VARCHAR); CPF(SMALLINT);

Entidade: Categoria_Chamado
Atributos: 

Relacionamentos:
Técnico (1:1) ------> Cliente
Cliente (1:1) -------->  Chamado
Chamado (1: N) ----------> Categoria_Chamado

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
