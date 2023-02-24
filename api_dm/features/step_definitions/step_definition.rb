Dado("que realizar uma busca pelo endereco mais proximo") do
  # Dmcard.new.estabelecimento_proximo
  Dmcard.new.dados_estabelecimento
  Dmcard.new.consulta_cep
  Dmcard.new.consulta_cidades
  Dmcard.new.vencimentos_datas
  Dmcard.new.carregar_endereco
  Dmcard.new.request_nova_pac_whats
  Dmcard.new.atualiza_dado_pac
  Dmcard.new.recebe_documento_cliente
  Dmcard.new.finalizar_pac
  Dmcard.new.verify_document_url
  Dmcard.new.api_google
  Dmcard.new.verify_document
  Dmcard.new.find_cep
  Dmcard.new.estabelecimento_telefone
end
  
Dado("que realizar uma busca pelo telefone") do
  @body = Dmcard.new.estabelecimento_telefone
  @cod_estabelecimento = Dmcard.new.captura_cod_estabelecimento(@body)
end

Entao("valido que o codigo da empresa foi apresentada com sucesso") do
  if @cod_estabelecimento != nil && @cod_estabelecimento != ''
    p "codigo apresentado com sucesso #{@cod_estabelecimento}"
  else
    raise "nao esta apresentando o codigo"
  end
end

Dado("que realizar uma busca pelo nome da loja") do
  @body = Dmcard.new.busca_loja
  @cod_estabelecimento = Dmcard.new.captura_cod_estabelecimento(@body)
end

Dado("valido o cadastro de um novo cliente") do
  @body = Dmcard.new.request_nova_pac_whats(@cod_estabelecimento)
  @numero_pac = Dmcard.new.captura_request_nova_pac(@body)
end

Entao("valido a criacao do numero pac") do
  if @numero_pac != nil && @numero_pac != ''
    p "codigo apresentado com sucesso #{@cod_estabelecimento}"
  else
    raise "nao esta apresentando o codigo"
  end
end

Dado("que irei validar os retornos das apis com os {string}") do |cod_estabelecimento|
  @body = Dmcard.new.request_nova_pac_whats(cod_estabelecimento)
end

Entao("devera retornar na api a resposta {string}") do |resposta|
  if @body['ResultDescription'] == resposta
    p "resposta apresentada com sucesso"
  else
    raise "nao esta apresentando a resporta correta,\n resposta do body: #{@body['ResultDescription']} \n resposta desejada: #{resposta}"
  end
end
