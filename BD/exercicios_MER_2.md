# Sistema de Aluguel de Carros(MER)

```
TEntidade: Cliente 
Atributos: Tipo (VARCHAR); Nome(VARCHAR); Gênero(CHAR); ID(INT); Telefone(VARCHAR); Email(VARCHAR); CPF(VARCHAR)

Entidade: Alugar
Atributos: Taxa(VARCHAR); Validade(DATETIME); Data(DATETIME); ID(INT)

Entidade: Contrato_Aluguel
Atributos: Tipo(VARCHAR); Descrição(CHAR); Contratante(VARCHAR); Contratado(VARCHAR); Periodo_Aluguel(TINYINT); ID(INT)

Entidade: Veículo
Atributos: ID(ID); Tipo(TEXT); Cor(TEXT); Ano(VARCHAR); Modelo(VARCHAR); Placa(CHAR); Kilometragem (VARCHAR)

Entidade: Local
Atributos: ID(INT); Nome (VARCHAR); Endereço(VARCHAR); CEP(SMALLINT)

Relacionamentos:
Cliente (1:1) ------> Alugar
Alugar (1:1) -------->   Contrato_Aluguel
Veículo (1:1) ----------> Local

```

# Sistema de Gerenciamento de E-commerce (MER)

```
Entidade: Cliente
Atributo: ID(INT); Nome(VARCHAR); CPF/CNPJ(INT); Endereço(TEXT); Dados Bancários(VARCHAR); Telefone(INT); CEP(INT); Gênero(CHAR); RG(VARCHAR); Email(VARCHAR)

Entidade: Produto 
Atributo: ID(INT); Tipo(SMALLINT); Valor(DECIMAL); Data/Hora(DATETIME); Qauntidade(SMALLINT); Detalhes(TEXT);

Entidade: Pedido 
Atributo: ID(INT); Quantidade(DECIMAL); Data/Hora(TIMESTAMP); Frete(VARCHAR); Descrição(TEXT);

Entidade: Compra
Atributo: ID(INT); Data/Hora(DATETIME); Detalhes(TEXT); Produto(VARCHAR); Vendedor(VARCHAR); Quantidade(VARCHAR); Previsão de entrega(TIMESTAMP); 

Entidade: Pagamento
Atributo: ID(INT); Local de Pagamento(VARCHAR); Condições(DOUBLE); Valor(DECIMAL); Comprador(VARCHAR); Data/Hora(DATETIME);

Relacionamentos:
Ciente (1:N) ----------> Produto
Produto (N:1) -------------> Pedido
Pedido (1:1) --------------> Compra
Compra (1:1) ----------> Pagamento 

```

# Sistema de Gestão Escolar (MER)

```
Entidade: Matrícula
Atributo: Nome(VARCHAR); ID(INT); Solicitação(INT); RG(INT); Convênio/Partivular/SUS(VARCHAR); CPF(INT); Gênero(CHAR);

Entidade: Aluno
Atributa: ID(INT); Nome(VARCHAR); CPF(VARCHAR); Endereço(VARCHAR); Telefone(VARCHAR); Email(VARCHAR)

Entidade: Estuda
Atributo: ID(INT); Instituiçãi(VARCHAR); Disciplina(VARCHAR)

Entidade: Disciplina
Atributo: ID(INT); Tipo(VARCHAR); Área(VARCHAR); Datas/Horas(VARCHAR)

Entidade: Professor
Atributo: ID(INT); Tipo(VARCHAR); Nome(VARCHAR); Formação(VARCHAR); Escala de Trabalho(VARCHAR); Alunos(CHAR)

Relacionamentos:
Matrícula (1:1) ------> Aluno
Aluno (N:1) -------> Estuda
Estuda (1:N) ---------> Disciplina
Disciplina (N:N) --------> Professor

```

[def]: exercicios_MER_DER.jpg
