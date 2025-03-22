# Sistema de Suporte Técnico (MER)

```
Entidade: Técnico 
Atributos: id_tecnico(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); email(VARCHAR)

Entidade: Cliente
Atributos: id_cliente(INT); nome(VARCHAR); cpf(VARCHAR); telefone(VARCHAR); endereco(VARCHAR); email()

Entidade: Chamado
Atributos: id_chamado(INT); titulo_chamado(VARCHAR); prioridade(BOOLEAN); status(BOOLEAN); data_chamado(); data_aberuta(TIMESTAMP); data_fechamento(TIMESTAMP)

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
Atributos: ID(INT); Placa(CHAR); Modelo(CHAR); Marca(VARCHAR); Kilometros_rodados(CHAR);

Entidade: Ônibus_Motorista
Atributos: ID(INT); Placa(CHAR); Modelo(CHAR); Marca(VARCHAR); Kilometros_rodados(CHAR);

Entidade: Ônibus_Rota
Atributos: ID(INT); Placa(CHAR); Modelo(CHAR); Marca(VARCHAR); Kilometros_rodados(CHAR);

Entidade: Rota
Atributos: ID(INT); Data/Hora(DATETIME); Endereços(VARCHAR)

Entidade: Parada
Atributos: ID(INT); Endereço(VARCHAR); Número(TINYINT)

Relacionamentos:
Ônibus(1:1) ---------> (1:1)Ônibus_Motorista
Motorista(1:1) ------> (1:1)Ônibus_Motorista
Motorista(N:N) ------> (N:N)Ônibus
Ônibus(N:N) ---------> (N:N)Ônibus_Rota
Parada(N:N) ---------> (N:N)Ônibus_Rota
```

[def]: exercicios_MER_DER.jpg
