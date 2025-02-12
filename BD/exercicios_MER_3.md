# Sistema de Suporte Técnico (MER)

```
Entidade: Técnico 
Atributos: ID(); Gênero(); Nome(); Especialidade(); Experiência()

Entidade: Chamado
Atributos: ID(); Nome(); Idade(); Gênero(); Endereço(); CPF();

Entidade: Categoria_Chamado
Atributos: 

Relacionamentos:
Técnico (1:1) ------> Cliente
Cliente (1:1) -------->  Chamado
Chamado (1: N) ----------> Categoria_Chamado

```

# Sistema de Gestão de Transporte Público (MER)

```
Entidade: Motorista 
Atributos: ID(); Nome(); Idade(); Gênero(); Tempo de Serviço

Entidade: Ônibus
Atributos: Placa(); Modelo(); Marca(); ID();

Entidade: Rota
Atributos: ID(); Data/Hora(); Endereços()

Entidade: Parada
Atributos: ID(); Endereço(); Número()

Relacionamentos:
Motorista (1:1) ------> Dirige
Dirige (1:1) --------> Ônibus
Ônibus (1:1)----------> Percorre
Percorre (1:1) --------> Rota
Rota (N:N) --------> Parada

```

[def]: exercicios_MER_DER.jpg
