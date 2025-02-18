# Sistema de Gestão de Eventos (MER)

```
Entidade: Paricipante
Atributos: telefone (VARCHAR); CPF(CHAR); email (VARCHAR); Nome (VARCHAR); Gênero(CHAR); Idade(INT); ID(SMALLINT).

Entidade: Inscrição
Atributos: Taxa(DECIMAL); Validade(TINYINT); Data(DATETIME); ID(SMALLINT).

Entidade: Evento
Atributos: Tipo(VARCHAR); Descrição(CHAR); Classificação etária(TINYINT); Nome(VARCHAR); ID(SMALLINT); Local(INT)

Entidade: Fornecedor
Atributos: ID(SMALLINT); Tipo(VARCHAR); Nome(VARCHAR);

Relacionamentos:
Participante (1:1) ------> Inscrição
Inscrição (1:N) -------->   Evento
Evento (1:N) ----------> Local

```

# Sistema de Gestão de Ordens de Produção (MER)

```
Entidade: Funcionário
Atributos: Telefone(VARCHAR); ID(SMALLINT); Cargo/Função(VARCHAR); Nome(VARCHAR); Email(VARCHAR); CPF(CHAR); 

Entidade: Cliente
Atributo: ID(SMALLINT); Nome(VARCHAR); CPF(CHAR); Endereço(VARCHAR); Email(VARCHAR); Telefone(VARCHAR);

Entidade: Pedido 
Atributo: ID(SMALLINT); Tipo(SMALLINT); Valor(DECIMAL); Data/Hora(DATETIME); Qauntidade(SMALLINT); Detalhes(TEXT);

Entidade: Ordem de produção
Atributo: ID(SMALLINT); Data/Hora(DATETIME); Detalhes(TEXT); Quantidade(SMALLINT); Previsão de entrega(DATETIME); 

Entidade: Fornecedor
Atributo: ID(INT); Tipo(SMALLINT); Nome(VARCHAR);

Relacionamentos:
Funcionário (1:N) ----------> Cliente
Cliente (1:N) -------------> Pedido
Pedido (1:1) --------------> Ordem de produção
Ordem de produção (1:N) ----------> Fornecedor 

```

# Sistema de Gestão de Saúde

```
Entidade: Paciente
Atributo: Nome(VARCHAR); ID(SMALLINT); Solicitação(INT); RG(INT); Convênio/Partivular(VARCHAR); CPF(INT); Gênero(CHAR); Telefone(VARCHAR); Email(VARCHAR)

Entidade: Consulta
Atributa: Sintomas(TEXT); Exames anteriores(MEDIUMBLOB); ID(SMALLINT); Alergias(MEDIUMTEXT); Histórico(MEDIUMTEXT); Data/Hora (VARCHAR)

Entidade: Médico
Atributo: ID(SMALLINT); Nome(VARCHAR); Gênero(CHAR); CRM(); Cargo(VARCHAR); CPF e CNPJ(INT); E-mail(TEXT); Experiência(TEXT); Telefone(INT); 

Entidade: Especialidade
Atributo: ID(SMALLINT); Tipo(SMALLINT); Área(VARCHAR); Formação(VARCHAR);

Relacionamentos:
Paciente (1:N) ------> Consulta
Consulta (N:N) ------> Médico
Médico (1:N) -------> Especialidade

```

[def]: exercicios_MER_DER.jpg
