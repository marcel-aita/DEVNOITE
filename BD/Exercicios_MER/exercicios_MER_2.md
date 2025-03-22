# Sistema de Aluguel de Carros(MER)

```
Entidade: Cliente 
Atributos: id_cliente(INT); nome_cliente(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); email(VARCHAR); endereco(CHAR)  

Entidade: Contrato_Aluguel
Atributos: id_contrato(INT); data_devolucao(TIMESTAMP); data_retirada(TIMESTAMP)

Entidade: Veículo
Atributos: id_veiculo(INT); tipo(VARCHAR); marca(VARCHAR); cor(VARCHAR); placa(CHAR); quilometragem(DECIMAL)

Entidade: Local
Atributos: id_local(INT); local_retirada(VARCHAR); local_devolucao(VARCHAR)

Relacionamentos:
Cliente(1:N) -----> (N:1)Contrato de Aluguel
Veículo(1:N) -----> (N:1)Contrato de Aluguel
Local(1:N) -------> (N:1)Contrato de Aluguel(de Retirada)
Local(1:N) -------> (N:1)Contrato de Aluguel(de Entrega)


```

# Sistema de Gerenciamento de E-commerce (MER)

```
Entidade: Cliente
Atributo: id_cliente(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); email(VARCHAR)

Entidade: Produto 
Atributo: id_produto(INT); nome_produto(VARCHAR); preco_produto(VARCHAR) 

Entidade: Pedido 
Atributo: id_pedido(INT); status(BOOLEAN); data_pedido(VARCHAR); valor_total(DECIMAL)

Entidade: compra
Atributo: id_compra(INT); quantidade(VARCHAR) 

Entidade: Pagamento
Atributo: id_pagamento(INT); forma_pagamento(VARCHAR); valor_pagamento(DECIMAL); data_pagamento(TIMESTAMP)

Relacionamentos:
Pedido(1:1) ----> (1:1)Pagamento
Cliente(1:N) ---> (N:1)Pedido
Pedido(1:1) ----> (1:1)compra
Compra(1:1) ----> (1:1)Pagamento


```

# Sistema de Gestão Escolar (MER)

```
Entidade: Matrícula
Atributo: id_matricula(INT)

Entidade: Aluno
Atributa: id_aluno(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); endereco(VARCHAR); email(VARCHAR)

Entidade: Disciplina
Atributo: id_disciplina(INT); nome_disciplina(VARCHAR)

Entidade: Professor
Atributo: id_professor(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); endereco(VARCHAR); email(VARCHAR)

Relacionamentos:
Aluno(1:1) ---------> (1:1)Mátricula
Disciplina(N:1) ----> (N:1)Mátricula
Professor(1:N) -----> (1:N)Disciplina
```

[def]: exercicios_MER_DER.jpg
