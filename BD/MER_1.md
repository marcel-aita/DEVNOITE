# Sistema de Gestão de Eventos (MER)

```
Entidade: Paricipante
Atributos: Tipo (VARCHAR); Nome (VARCHAR); Gênero(CHAR); Idade(INT); ID(SMALLINT).

Entidade: Inscrição
Atributos: Taxa(DECIMAL); Validade(TINYINT); Data(DATETIME); ID(SMALLINT).

Entidade: Evento
Atributos: Tipo(VARCHAR); Descrição(CHAR); Classificação etária(TINYINT); Nome(VARCHAR); ID(SMALLINT)

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
Atributos: ID(SMALLINT); Cargo/Função(VARCHAR); Nome(VARCHAR);

Entidade: Cliente
Atributo: ID(SMALLINT); Nome(VARCHAR); CPF/CNPJ(INT); Endereço(TEXT); E-mail(TEXT); Telefone(INT);

Entidade: Pedido 
Atributo: ID(SMALLINT); Tipo(SMALLINT); Valor(DECIMAL); Data/Hora(DATETIME); Qauntidade(SMALLINT); Detalhes(TEXT);

Entidade: Ordem de produção
Atributo: ID(SMALLINT); Data/Hora(DATETIME); Detalhes(TEXT); Produto(VARCHAR); Funcionário(VARCHAR); Quantidade(SMALLINT); Previsão de entrega(DATETIME); 

Entidade: Fornecedor
Atributo: ID(SMALLINT); Tipo(SMALLINT); Nome(VARCHAR);

Relacionamentos:
Funcionário (1:N) ----------> Cliente
Cliente (1:N) -------------> Pedido
Pedido (1:1) --------------> Ordem de produção
Ordem de produção (1:N) ----------> Fornecedor 

```




[def]: exercicios_MER_DER.jpg