Dado('que faço a batida da API PositiveIdentification com {string}') do |cpf|
    @body = PositiveIdentification.new.busca_identification(cpf)
end

Entao('valido se o numero do cpf retorna true') do
    Validacao.new.valida_identification(@body)
end

Entao('valido se o numero do cpf retorna false') do
    Validacao.new.valida_identification(@body)
end

Dado('que faco a batida da API nameidentification com {string}') do |nome|
    @body = NameIdentification.new.name_identification(nome)
end

Entao('valido se o nome do usuario retorna true') do
    Validacao.new.valida_identification(@body)
end

Entao('valido se o nome do usuario retorna false') do
    Validacao.new.valida_identification(@body)
end