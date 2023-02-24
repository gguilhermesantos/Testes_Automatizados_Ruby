#language: pt
Funcionalidade: validacoes de cenarios para nao clientes

@n_cliente @telefone 
Cenario: realizo uma busca pelo telefone validando 
  Dado que realizar uma busca pelo telefone
  Entao valido que o codigo da empresa foi apresentada com sucesso

@n_cliente @nome
Cenario: realizo uma busca pelo nome validando 
  Dado que realizar uma busca pelo nome da loja
  Entao valido que o codigo da empresa foi apresentada com sucesso