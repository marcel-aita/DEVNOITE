# Sistema de Aluguel de Carros(MER)

```
TEntidade: Cliente 
Atributos: Tipo (VARCHAR); Nome(VARCHAR); Gênero(CHAR); ID(INT); Telefone(VARCHAR); Email(VARCHAR); CPF(VARCHAR)

Entidade: Contrato_Aluguel
Atributos: id_contrato(); data_devolucao(); data_retirada()

Entidade: Veículo
Atributos: id_veiculo(); tipo(); marca(); cor(); placa(); quilometragem()

Entidade: Local
Atributos: id_local(); local_retirada(); local_devolucao

Relacionamentos:


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
Cliente(1:N) ---> (1:N)Pedido
Pedido(1:1) ----> (1:1)compra
Produto(1:1) ---> (1:1)compra

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
