#language: pt
@positive
Funcionalidade: Validar na API se o cpf e nome sao validos

@verifica_cpf
Cenario: Validar se o cpf e valido
    Dado que faço a batida da API PositiveIdentification com 'cpf_valido'
    Entao valido se o numero do cpf retorna true

@verifica_cpf_invalido
Cenario: Validar se o cpf e invalido
    Dado que faço a batida da API PositiveIdentification com 'cpf_invalido'
    Entao valido se o numero do cpf retorna false

@verifica_nome
Cenario: Validar se o nome e valido
    Dado que faco a batida da API nameidentification com 'nome_valido'
    Entao valido se o nome do usuario retorna true

@verifica_nome_invalido
Cenario: Validar se o nome e invalido
    Dado que faco a batida da API nameidentification com 'nome_invalido'
    Entao valido se o nome do usuario retorna false