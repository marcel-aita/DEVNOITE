# Sistema de Suporte Técnico (MER)

```
Entidade: Técnico 
Atributos: id_tecnico(); nome(); cpf(); telefone(); email()

Entidade: Cliente
Atributos: id_cliente(); nome(); cpf(); telefone(); endereco(); email()

Entidade: Chamado
Atributos: id_chamado(); titulo_chamado(); prioridade(); status(); data_chamado(); data_aberuta(); data_fechamento()

Entidade: Categoria_Chamado
Atributos: id_categoria(); nome_categoria(); descricao_categoria()

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
Ônibus(1:1) ----> (1:1)Ônibus_Motorista
Motorista(1:1) ------> (1:1)Ônibus_Motorista
Motorista(N:N) ------> (N:N)Ônibus
Ônibus(N:N) ---------> (N:N)Ônibus_Rota
Parada(N:N) ---------> (N:N)Ônibus_Rota
```

[def]: exercicios_MER_DER.jpg
