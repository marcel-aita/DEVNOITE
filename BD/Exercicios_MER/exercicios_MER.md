# Sistema de Gestão de Eventos (MER)

```
Entidade: Paricipante
Atributos: id_participante(INT); nome_participante(VARCHAR); telefone(VARCHAR); cpf(CHAR); email(VARCHAR)

Entidade: Inscrição
Atributos:id_inscricao(INT); data_inscricao(TIMESTAMP)

Entidade: Evento
Atributos: id_evento(INT); nome_evento(VARCHAR); descricao(TEXT); data_fim(); data_inicio

Entidade: Local
Atributos: id_local(INT); nome_local(VARCHAR); endereco_local(VARCHAR); capacidade(TEXT)

Relacionamentos:
Participante(1:1) ------> (1:1)Inscrição
Inscrição(1:N) ---------> (1:N)Evento
Evento(1:N) ------------> (1:N)Local

```

# Sistema de Gestão de Ordens de Produção (MER)

```
Entidade: Funcionário
Atributos: id_funcionario(INT); nome_fincionario(VARCHAR); telefone(VARCHAR); email(VARCHAR) 

Entidade: Ordem de produção
Atributos: id_ordem(INT); nome_ordem(VARCHAR); data_inicio(TIMESTAMP); data_final(TIMESTAMP); valor(DECIMAL)

Entidade: Produto
Atributos: id_produto(INT); nome_produto(VARCHAR); preco_produto(Decimal)

Entidade: Fornecedor
Atributo: id_fornecedor(INT); nome_fornecedor(VARCHAR); 

Relacionamentos:
Funcionário(1:N) ----------> (1:N)Ordem de Produção
Pedido(N:1) ---------------> (N:1)Ordem de produção
Fornecedor(N:N) -----------> (N:N)Produto

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
