public class Main {
    // característica de classse principal
    public static void main(String[] args) {
        // Criação do objeto - aqui o objeto é p.
        Pessoa p = new Pessoa();
        // Criação do objeto para a classe venda
        Venda v = new Venda();
        // Criação do objeto para a classe Fornecedor
        Fornecedor f = new Fornecedor();
        // Criação do objeto para a classe AlimentoPerecivel
        AlimentoPerecivel ap = new AlimentoPerecivel();
        // Criação do objeto para a classe AlimentoNaoPerecivel
        AlimentoNaoPerecivel anp = new AlimentoNaoPerecivel();
        // Criação do objeto para a classe LixoSeco~
        LixoSeco ls = new LixoSeco();
        // Criação do objeto para a classe LixoOrganico
        LixoOrganico lo = new LixoOrganico();
        // ABRINDO ESPAÇO PARA O OBJETO QUE FALTOU: ESTOQUE
        Estoque e = new Estoque();


        // Aqui chamo os métodos públicos e envio os dados dentro dos parênteses
        p.setNome("Milena");
        p.setIdade(90);
        p.setCpf(789456123);

        // Chamo os métodos sets para a classe venda através do objeto.
        v.setNumeroNotaFiscal(12587458);
        v.setDataVenda("19/08/2025");
        v.setHoraVenda("19:56");
        v.setValorTotal(45);

        // Métodos para classe fornecedor (CÓDIGO AGREGADO)
        f.setCnpj("12.345.678/0001-90");
        f.setInscricaoEstadual("987.654.321");
        f.setRazaoSocial("Distribuidora ABC Ltda.");
        f.setNomeFantasia("Distribuidora Pão Doce");
        f.setEndereco("Rua dos Comerciantes, 500");
        f.setNumero(500);
        f.setCep("90000-000");
        f.setCidade("Porto Alegre");
        f.setEstado("RS");
        f.setTelefone("(51) 3333-4444");
        f.setEmail("contato@distribuidora.com");
        f.setStatus("Ativo");


        // Herança AlimentoPerecivel
        ap.setCategoria("Padaria");
        ap.setMarca("Armelim");
        ap.setIngrediente("Chocolate, Farinha, Açúcar");
        ap.setprazoAbertura("5 dias úteis");

        // Herança AlimentoNaoPerecivel
        anp.setCategoria("Lar");
        anp.setMarca("Tramontina");
        anp.setIntrucaoConcervacao("Manter Longe de criançcas");
        anp.setConservantes("Conservar limpo após o uso, para maior durabilidade");

        // Métodos para classe LixoSeco
        ls.setMaterial("Plástico, Papel, Metal");
        ls.setColetor("Coleta seletiva");
        ls.setCooperativa("Cooperativa de reciclagem");

        // Métodos para classe LixoOrganico
        lo.setTempodecomposicao("2 meses");
        lo.setAterro("Aterro sanitário");
        lo.setCompostagem("Compostagem caseira");

        // MÉTODOS PARA CLASSE ESTOQUE (CÓDIGO AGREGADO)
        e.setQuantidadeTotal(150);
        e.setLocalizacao("Prateleira A-2");
        e.setDataVencimentoProduto("15/12/2026");

        // Aqui estou imprimindo no terminal o que foi enviando pelo método set
        // através do método get, que retorna o que foi enviado dentro dos parenteses
        System.out.println("******************************");
        System.out.println("O nome da pessoa é: " + p.getNome());
        System.out.println("A idade é: " + p.getIdade());
        System.out.println("O CPF é: " + p.getCpf());
        System.out.println("--------------------------------");
        System.out.println("A Nota fiscal é: " + v.getNumeroNotaFiscal());
        System.out.println("A data da venda é: " + v.getDataVenda());
        System.out.println("O horário da venda é: " + v.getHoraVenda());
        System.out.println("O valor total da compra é: " + v.getValorTotal());
        System.out.println("--------------------------------");

        // IMPRESSÃO DOS DADOS DO FORNECEDOR (CÓDIGO AGREGADO)
        System.out.println("Fornecedor: " + f.getNomeFantasia());
        System.out.println("CNPJ: " + f.getCnpj());
        System.out.println("Endereço: " + f.getEndereco() + ", " + f.getNumero() + " - " + f.getCidade());
        System.out.println("Telefone: " + f.getTelefone());
        System.out.println("Email: " + f.getEmail());
        System.out.println("--------------------------------");

        System.out.println("Categoria do alimento perecível: " + ap.getCategoria());
        System.out.println("Marca do alimento perecível: " + ap.getMarca());
        System.out.println("Ingredientes do alimento perecível: " + ap.getIngrediente());
        System.out.println("Prazo de abertura do alimento perecível: " + ap.getprazoAbertura());
        System.out.println("Categoria do alimento não perecível: " + anp.getCategoria());
        System.out.println("Marca do alimento não perecível: " + anp.getMarca());
        System.out.println("Instrução de conservação do alimento não perecível: " + anp.getIntrucaoConcervacao());
        System.out.println("Conservantes do alimento não perecível: " + anp.getConservantes());
        System.out.println("--------------------------------");

        // IMPRESSÃO DOS DADOS DO ESTOQUE (CÓDIGO AGREGADO)
        System.out.println("Quantidade total em estoque: " + e.getQuantidadeTotal());
        System.out.println("Localização no estoque: " + e.getLocalizacao());
        System.out.println("Data de vencimento: " + e.getDataVencimentoProduto());
        System.out.println("--------------------------------");

        System.out.println("Material do lixo seco: " + ls.getMaterial());
        System.out.println("Coletor do lixo seco: " + ls.getColetor());
        System.out.println("Cooperativa do lixo seco: " + ls.getCooperativa());
        System.out.println("--------------------------------");
        System.out.println("Tempo de decomposição do lixo orgânico: " + lo.getTempodecomposicao());
        System.out.println("Aterro do lixo orgânico: " + lo.getAterro());
        System.out.println("Compostagem do lixo orgânico: " + lo.getCompostagem());
        System.out.println("******************************");
    }
}