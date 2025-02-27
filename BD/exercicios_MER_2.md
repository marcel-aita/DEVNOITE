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
Atributo: id_cliente(); nome(); cpf(); telefone(); email()

Entidade: Produto 
Atributo: id_produto(); nome_produto(); preco_produto() 

Entidade: Pedido 
Atributo: id_pedido(); status(); data_pedido(); valor_total()

Entidade: compra
Atributo: id_compra(); quantidade() 

Entidade: Pagamento
Atributo: id_pagamento(); forma_pagamento(); valor_pagamento(); data_pagamento()

Relacionamentos:
Pedido(1:1) ----> (1:1)Pagamento
Cliente(1:N) ---> (N:1)Pedido
Pedido(1:1) ----> (1:1)compra
Compra(1:1) ----> (1:1)Pagamento


```

# Sistema de Gestão Escolar (MER)

```
Entidade: Matrícula
Atributo: id_matricula()

Entidade: Aluno
Atributa: id_aluno(); nome(); cpf(); telefone(); endereco(); email()

Entidade: Disciplina
Atributo: id_disciplina(); nome_disciplina()

Entidade: Professor
Atributo: id_professor(); nome(); cpf(); telefone(); endereco(); email()

Relacionamentos:
Aluno(1:1) ---------> (1:!)Mátricula
Disciplina(N:1) ----> (N:1)Mátricula
Professor(1:N) -----> (1:N)Disciplina
```

[def]: exercicios_MER_DER.jpg
