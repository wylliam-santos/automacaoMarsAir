#language: pt

    Funcionalidade: Datas de Devolução inválidas

        Como Diretor de Vendas da MarsAir (Mark), 
        quero evitar que clientes em potencial pesquisem viagens inválidas para
        que não percam tempo e reserve viagens válidas

Cenário: Validar a mensagem para retorno inferior a 1 ano

    Dado que acesso o portal MarsAir
    Quando faço uma pesquisa com data de retorno menor que um ano
    Então devo visualizar a mensagem: "Unfortunately, this schedule is not possible. Please try again."