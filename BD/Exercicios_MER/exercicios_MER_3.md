# Sistema de Suporte Técnico (MER)

```
Entidade: Técnico 
Atributos: id_tecnico(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); email(VARCHAR)

Entidade: Cliente
Atributos: id_cliente(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); endereco(VARCHAR); email(VARCHAR)

Entidade: Chamado
Atributos: id_chamado(INT); titulo_chamado(VARCHAR); prioridade(BOOLEAN); status(BOOLEAN); data_chamado(DATETIME); data_aberuta(TIMESTAMP); data_fechamento(TIMESTAMP)

Entidade: Categoria_Chamado
Atributos: id_categoria(INT); nome_categoria(VARCHAR); descricao_categoria(VARCHAR)

Relacionamentos:
Cliente(1:N) ----> (1:N)Chamado
Técnico(1:N) ----> (1:N)Chamado
Categoria(N:1) --> (N:1)Chamado

```

# Sistema de Gestão de Transporte Público (MER)

```
Entidade: Motorista 
Atributos: ID(INT); Nome(VARCHAR); CPF(VARCHAR); Endereço(VARCHAR); Telefone(VARCHAR); Email(VARCHAR); Carteira_motorista(VARCHAR)

Entidade: Ônibus
Atributos: ID(INT); Placa(VARCHAR); Modelo(VARCHAR); Marca(VARCHAR); Quilometros_rodados(VARCHAR);

Entidade: Ônibus_Motorista
Atributos: ID_Motorista(INT); ID_Ônibus(INT)

Entidade: Ônibus_Rota
Atributos: ID_Ônibus(INT); ID_Rota(INT)

Entidade: Rota
Atributos: ID(INT); Data_Hora(DATETIME); Endereços(VARCHAR)

Entidade: Parada
Atributos: ID(INT); Endereço(VARCHAR); Número(VARCHAR)

Relacionamentos:
Motorista(N:N) ------> (N:N)Ônibus
Ônibus(N:N) ---------> (N:N)Rota
Rota(1:N) -----------> (1:N)Parada-
```

[def]: exercicios_MER_DER.jpg
