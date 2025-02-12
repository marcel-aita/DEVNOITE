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

Entidade: Local
Atributos: ID(SMALLINT); Nome (VARCHAR); Endereço(VARCHAR); CEP(SMALLINT)

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
Atributo: ID(SMALLINT); Quantidade(DECIMAL); Data/Hora(DATETIME); Frete(Decimal); Descrição(TEXT);

Entidade: Compra
Atributo: ID(SMALLINT); Data/Hora(DATETIME); Detalhes(TEXT); Produto(VARCHAR); Funcionário(VARCHAR); Quantidade(SMALLINT); Previsão de entrega(DATETIME); 

Entidade: Pagamento
Atributo: ID(SMALLINT); Local de Pagamento(Varchar); Condições(Double); Valor(DECIMAL); Fonte Pagadora(MEDIUMINT); Fonte Receptora(MEDIUMINT); Data/Hora(DATETIME);

Relacionamentos:
Ciente (1:N) ----------> Produto
Produto (N:1) -------------> Pedido
Pedido (1:1) --------------> Compra
Compra (1:1) ----------> Pagamento 

```

# Sistema de Gestão Escolar (MER)

```
Entidade: Matrícula
Atributo: Nome(VARCHAR); ID(SMALLINT); Solicitação(INT); RG(INT); Convênio/Partivular/SUS(VARCHAR); CPF(INT); Gênero(CHAR);

Entidade: Aluno
Atributa: Sintomas(TEXT); Exames anteriores(MEDIUMBLOB); ID(SMALLINT); Alergias(MEDIUMTEXT); Histórico(MEDIUMTEXT);

Entidade: Estuda
Atributo: ID(SMALLINT); Nome(VARCHAR); Gênero(CHAR); CRM(); Cargo(VARCHAR); CPF e CNPJ(INT); E-mail(TEXT); Experiência(TEXT); Telefone(INT); 

Entidade: Disciplina
Atributo: ID(SMALLINT); Tipo(SMALLINT); Área(VARCHAR); Datas/Horas(DATETIME)

Entidade: Professor
Atributo: ID(SMALLINT); Tipo(SMALLINT); Nome(); Formação(VARCHAR); Escala de Trabalho(DATETIME); Alunos(VARCHAR)

Relacionamentos:
Matrícula (1:1) ------> Aluno
Aluno (N:1) -------> Estuda
Estuda (1:N) ---------> Disciplina
Disciplina (N:N) --------> Professor

```

[def]: exercicios_MER_DER.jpg
