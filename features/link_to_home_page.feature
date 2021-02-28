#language: pt

Funcionalidade: Link para a página inicial

    Como Diretor de Vendas da MarsAir (Mark), 
    Quero que os clientes em potencial possam voltar à pesquisa de voos de qualquer lugar do site para
    Que sejam orientados a reservar viagens

Cenario: Visualizar o titulo de reserva de passagens

    Dado que acesso o portal MarsAir
    Quando a página é carregada
    Então eu devo visualizar o titulo: "Book a ticket to the red planet now!"

Cenario: Retornar a tela inicial

    Dado que acesso o portal MarsAir
    Quando eu faço uma pesquisa com acentos disponiveis 
    E clico no logotipo da MarsAir
    Então devo ser redirecionado para a tela inicial
