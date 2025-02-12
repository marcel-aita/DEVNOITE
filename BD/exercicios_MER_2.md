# Sistema de Aluguel de Carros(MER)

```
TEntidade: Cliente 
Atributos: Tipo (VARCHAR); Nome (VARCHAR); Gênero(CHAR); Idade(INT); ID(SMALLINT).

Entidade: Alugar
Atributos: Taxa(DECIMAL); Validade(TINYINT); Data(DATETIME); ID(SMALLINT).

Entidade: Contrato_Aluguel
Atributos: Tipo(VARCHAR); Descrição(CHAR); Contratante(VARCHAR); Contratado(VARCHAR); Validade(TINYINT); ID(SMALLINT)

Entidade: Veículo
Atributos: ID(SMALLINT); Tipo(VARCHAR); Cor(VARCHAR); Ano(INT); Modelo(VARCHAR); Placa(CHAR); Kilometragem(TEXT) 

Relacionamentos:
Cliente (1:1) ------> Alugar
Alugar (1:1) -------->   Contrato_Aluguel
Veículo (1:1) ----------> Local

```

# Sistema de Gerenciamento de E-commerce (MER)

```
Entidade: Cliente
Atributo: ID(SMALLINT); Nome(VARCHAR); CPF/CNPJ(INT); Endereço(TEXT); Dados Bancários(TEXT); Telefone(INT); CEP(INT); Gênero(CHAR)

Entidade: Produto 
Atributo: ID(SMALLINT); Tipo(SMALLINT); Valor(DECIMAL); Data/Hora(DATETIME); Qauntidade(SMALLINT); Detalhes(TEXT);

Entidade: Pedido 
Atributo: ID(SMALLINT); Tipo(SMALLINT); Valor(DECIMAL); Data/Hora(DATETIME); Qauntidade(SMALLINT); Detalhes(TEXT);

Entidade: Compra
Atributo: ID(SMALLINT); Data/Hora(DATETIME); Detalhes(TEXT); Produto(VARCHAR); Funcionário(VARCHAR); Quantidade(SMALLINT); Previsão de entrega(DATETIME); 

Entidade: Pagamento
Atributo: ID(SMALLINT); Tipo(SMALLINT); Nome(VARCHAR); 

Entidade: Fonte Pagadora
Atributo:

Relacionamentos:
Funcionário (1:N) ----------> Cliente
Cliente (1:N) -------------> Pedido
Pedido (1:1) --------------> Ordem de produção
Ordem de produção (1:N) ----------> Fornecedor 

```

# Sistema de Gestão Escolar (MER)

```
Entidade: Paciente
Atributo: Nome(VARCHAR); ID(SMALLINT); Solicitação(INT); RG(INT); Convênio/Partivular/SUS(VARCHAR); CPF(INT); Gênero(CHAR);

Entidade: Consulta
Atributa: Sintomas(TEXT); Exames anteriores(MEDIUMBLOB); ID(SMALLINT); Alergias(MEDIUMTEXT); Histórico(MEDIUMTEXT);

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
