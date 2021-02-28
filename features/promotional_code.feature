#language: pt

Funcionalidade: Códigos Promocionais

    Como Diretor de Vendas da MarsAir (Mark), 
    quero distribuir códigos promocionais aos clientes para
    que eles obtenham descontos e fiquem mais tentados a comprar ingressos

Cenario: Validar inserção de código promocional válido

    Dado que acesso o portal MarsAir
    Quando eu faço a inclusão de um código válido
    Então eu visualizo a mensagem de sucesso: "Promotional code AF3-FJK-418 used: 30% discount!"

Cenario: Validar inserção de código promocional inválido

    Dado que acesso o portal MarsAir
    Quando eu faço a inclusão de um código inválido
    Então visualizo a mensagem de erro: "Sorry, code JJ5-OPQ-320 is not valid"