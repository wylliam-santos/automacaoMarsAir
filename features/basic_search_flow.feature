#language: pt

Funcionalidade: Fluxo de Pesquisa Básico

    Como Diretor de Vendas da MarsAir (Mark),
    Quero que os clientes em potencial possam pesquisar voos para Marte para
    Que vejam quais viagens estão disponíveis

    Cenario: Validar se existem os campos de saida e retorno

        Dado que acesso o portal MarsAir
        Quando a página é carregada
        Então eu devo visualizar os campos de Saida e Retorno no formulário

    Cenario: Validar as opções de voos semestrais

        Dado que acesso o portal MarsAir
        Quando a página é carregada
        Então eu posso selecionar as opções de julho e dezembro para pesquisa

    Cenario: Validar as opções para os próximos dois anos

        Dado que acesso o portal MarsAir
        Quando a página é carregada
        Então eu posso selecionar voos para os próximos dois anos

    Cenario: Validar acentos disponiveis

        Dado que acesso o portal MarsAir
        Quando eu faço uma pesquisa com acentos disponiveis
        Então eu devo visualizar a mensagem de sucesso: "Seats available! Call 0800 MARSAIR to book!"

    Cenario: Validar acentos indisponiveis

        Dado que acesso o portal MarsAir
        Quando eu faço uma pesquisa com acentos indisponiveis
        Então eu devo visualizar a mensagem de erro: "Sorry, there are no more seats available."