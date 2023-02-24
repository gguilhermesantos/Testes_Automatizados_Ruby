Dado('que faço a batida da API listaCertificado com {string}') do |cpf|
  @body = ListaCertificado.new.listar_certificados(cpf)
end

Entao('valido que a API listaCertificado retorna numero do certificado valido') do
  Validacao.new.valida_certificado(@body)
end

Entao('valido que a API listaCertificado retorna uma mensagem de erro') do 
  Validacao.new.valida_certificado_erro(@body)
end 

Dado('que faço a batida da API listaCobertura com id_certificado') do
  @body_cobertura = ListaCobertura.new.listar_coberturas(@body)
end
  
Entao('valido que a API listaCobertura retorna numero do cobertura valido') do
  Validacao.new.valida_cobertura(@body_cobertura)
end

Dado('que faço a batida da API listaCobertura com {string}') do |id_cert_invalido|
  @body_cobertura_invalido = ListaCobertura.new.listar_coberturas_erro(id_cert_invalido)
end

Entao('valido que a API listaCobertura retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@body_cobertura_invalido)
end

Dado('que faço a batida na API consultaCertificado com id_certificado_valido e id_servico') do
  @certificado = ConsultaCertificado.new.consultar_certificado(@body, @body_cobertura)
end

Entao('valido que a api consultaCertificado retorna nrCertificate e id_cobertura valido') do
  Validacao.new.certificado(@certificado, @body, @body_cobertura)
end


Quando('que faço a batida na API consultaCertificado com {string} invalido') do |alteracao|
  @certificado_erro = ConsultaCertificado.new.consultar_certificado_erro(alteracao,@body, @body_cobertura)
end

Entao('valido que a API consultaCertificado retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@certificado_erro)
end


Dado('que faço a batida da API listaSinistro com {string}') do |cpf|
  @sinistro = ListaSinistro.new.lista_sinistro(cpf)
end
  
Então('valido que a API listaSinistro retorna id_certificate valido') do
  Validacao.new.valida_sinistro(@body,@sinistro)
end

Então('valido que A API listaSinistro retornou uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@sinistro)
end

Dado('faco a batida na API CertificateCauses com id_certificado e id_cobertura') do
  @certificate_cause = CertificateCause.new.certificate_cause(@body, @body_cobertura)
end
  
Então('valido que a API CertificateCauses retorna a lista causeslist') do
  Validacao.new.valida_CertificateCause(@certificate_cause)
end

Dado('que faço a batida na API CertificateCauses com {string} invalido') do |campo_alterado|
  @certificate_cause_erro = CertificateCause.new.certificate_cause_error(campo_alterado,@body,@body_cobertura)
end  

Entao('valido que a API CertificateCauses retorna uma mensagem de erro') do
 Validacao.new.valida_certificado_erro(@certificate_cause_erro)
end

Dado('faço a batida na API tecDocRequired com o id_cobertura') do
  @doc_required = TecDocRequired.new.doc_required(@body_cobertura)
end

Entao('valido que a API tecDocRequired retorna a chave DocRequired com valor true') do
  Validacao.new.valida_doc_required(@doc_required)
end

Quando('faço a batida na API tecDocRequired com o {string} invalido') do |id_cob_invalido|
  @erro_doc = TecDocRequired.new.doc_required_erro(id_cob_invalido)
end

Entao('valido que a API tecDocRequired retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@erro_doc)
end

Quando('faço a batida na API Documents com o id_certificado e id_cobertura') do
  @doc_body = Documents.new.documents(@body, @body_cobertura)
end

Entao('valido que a API Documents retorna a chave listaDoc') do
  Validacao.new.doc(@doc_body)
end

Dado('que faço a batida na API Documents com {string} invalido') do |docerro|
  @doc_erro = Documents.new.doc_erro(docerro,@body, @body_cobertura)  
end

Entao('valido que a API Documents retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@doc_erro)
end

Quando('faço a batida na API ValidadeClaims com o id_certificado e id_cobertura') do
  @claims = ValidadeClaims.new.validar_claims(@body, @body_cobertura)
end

Entao('valido que a API ValidadeClaims retorna a chave message') do
  Validacao.new.valida_claim(@claims)
end

Dado('que faço a batida na API ValidadeClaims com {string} invalido') do |claims_erro|
  @claims_erro = ValidadeClaims.new.valida_claims_erro(claims_erro, @body, @body_cobertura)
end

Entao('valido que a API ValidadeClaims retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@claims_erro)
end

Quando('faço a batida na API UserInsured com o id_certificado valido') do
  @insured = UserInsured.new.user_insured(@body)
end

Entao('valido que a API UserInsured retorna a chaves IdInsured e IdRelationship validas') do
  Validacao.new.valida_insured(@insured)
end

Quando('faço a batida na API UserInsured com o {string}') do |insured_erro|
  @insured_erro = UserInsured.new.user_insured_erro(insured_erro)
end

Entao('valido que a API UserInsured retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@insured_erro)
end

Quando('faco a batida na API providers com id_segurado, id_certificado, id_cobertura e {string} validos') do |lista|
 @providers = Providers.new.providers(lista, @body, @body_cobertura, @insured)
end

Então('valido que a API providers retorna a chave campos_primeira') do
 Validacao.new.valida_providers(@providers)
end

Quando('faco a batida na API providers com {string} invalido') do |dado_alterado|
  @providers_erro = Providers.new.providers_erro(dado_alterado, @body, @body_cobertura, @insured)
end

Então('valido que a API providers retorna uma mensagem de erro') do
  Validacao.new.valida_certificado_erro(@providers_erro)
end

Quando('faco a batida na API providers com {string}') do |lista_invalida|
  @lista_vazia= Providers.new.providers_erro_lista(lista_invalida, @body, @body_cobertura, @insured)
end

Então('valido que a API providers retorna uma mensagem de erro de lista vazia') do
  Validacao.new.lista_erro(@lista_vazia)
end

Quando('faco a batida na API DePara com id_segurado, id_certificado, id_cobertura e at_escolhida validos') do
  @depara = DePara.new.de_para(@body, @body_cobertura, @insured, @providers)
end

Então('valido que a API DePara retorna a chave traking_depara') do
  Validacao.new.valida_depara(@depara)
end

Quando('faco a batida na API DePara com {string} invalido') do |dado_alterado|
 @depara_erro = DePara.new.de_para_erro(dado_alterado,@body, @body_cobertura, @insured, @providers)
end

Então('valido que a API DePara retorna uma mensagem de erro') do
 Validacao.new.depara_erro(@depara_erro)
end