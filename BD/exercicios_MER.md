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
Atributo: id_paciente(INT); nome_paciente(VARCHAR); cpf(CHAR); endereco(VARCAHR); telefone(VARCHAR); email(VARCAHR)

Entidade: Consulta
Atributa: id_consulta(INT); data_hora(TIMESTAMP); diagnostico(VARCHAR); receita(VARCHAR); cobraca(VARCHAR)

Entidade: Médico
Atributo: id_medico(INT); nome_medico(VARCHAR); crm(CHAR); telefone(VARCHAR); email() 

Entidade: Especialidade
Atributo: id_especialidae(); tipo()

Relacionamentos:
Consulta(1:1) ----> (1:1)Médico
Consulta(1:N) ----> (1:N)Paciente
Médico(N:1) ------> (N:1)Especialidade
```

[def]: exercicios_MER_DER.jpg
