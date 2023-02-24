#language: pt
@listar
Funcionalidade: Validar respostas das APIs

@buscar_certificado
Cenario: Validar que a API listaCertificado retorna id_certificado valido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'    
    Entao valido que a API listaCertificado retorna numero do certificado valido
    
@buscar_certificado_invalido
Cenario: Validar que a API listaCertificado retorna erro
    Dado que faço a batida da API listaCertificado com 'cpf_invalido'    
    Entao valido que a API listaCertificado retorna uma mensagem de erro  

@buscar_idcobertura
Cenario: Validar que a API listaCobertura retorna id_cobertura valido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'   
    E que faço a batida da API listaCobertura com id_certificado   
    Entao valido que a API listaCobertura retorna numero do cobertura valido

@buscar_idcobertura_invalido
Cenario: Validar que a API listaCobertura retorna erro
    Dado que faço a batida da API listaCobertura com 'id_certificado_invalido'   
    Entao valido que a API listaCobertura retorna uma mensagem de erro

@consultar_certificado
Cenario: validar que a API consultaCertificado retorna um nrCertificate e id_cobertura valido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API consultaCertificado com id_certificado_valido e id_servico
    Entao valido que a api consultaCertificado retorna nrCertificate e id_cobertura valido

@consultar_certificado_invalido
Cenario: validar que a API consultaCertificado retorna erro com id_certificado invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado  
    Quando que faço a batida na API consultaCertificado com 'id_certificado' invalido
    Entao valido que a API consultaCertificado retorna uma mensagem de erro

@laudo
Cenario: validar se a API listaSinistro retorna o id_certificate valido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'         
    E que faço a batida da API listaSinistro com 'cpf_valido'
    Então valido que a API listaSinistro retorna id_certificate valido

@laudo_invalido
Cenario: validar se a API listaSinistro retorna erro com cpf invalido
    Dado que faço a batida da API listaCertificado com 'cpf_invalido'         
    E que faço a batida da API listaSinistro com 'cpf_invalido'
    Então valido que A API listaSinistro retornou uma mensagem de erro 

@certificate_cause
Cenario: Validar se a API CertificateCauses retorna a lista de causeslist 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E faco a batida na API CertificateCauses com id_certificado e id_cobertura
    Então valido que a API CertificateCauses retorna a lista causeslist 

@certificate_cause_erro
Cenario: validar se o CertificateCauses retorna dados invalidos
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API CertificateCauses com 'id_certificado' invalido
    Entao valido que a API CertificateCauses retorna uma mensagem de erro

@certificate_cause_erro
Cenario: validar se o CertificateCauses retorna dados invalidos
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API CertificateCauses com 'id_cobertura' invalido
    Entao valido que a API CertificateCauses retorna uma mensagem de erro

@tecdoc
Cenario: Validar que a API tecDocRequired retorna a chave DocRequired com valor true
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    Quando faço a batida na API tecDocRequired com o id_cobertura 
    Entao valido que a API tecDocRequired retorna a chave DocRequired com valor true

@tecdoc_invalido
   Cenario: Validar que a API tecDocRequired retorna erro com id_cobertura invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    Quando faço a batida na API tecDocRequired com o 'id_cobertura_invalido' invalido
    Entao valido que a API tecDocRequired retorna uma mensagem de erro  

@doc
Cenario: Validar que a API Documents retorna a chave listaDoc
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    Quando faço a batida na API Documents com o id_certificado e id_cobertura 
    Entao valido que a API Documents retorna a chave listaDoc

@doc_erro
Cenario: validar se a API Documents retorna erro com id_certificado invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API Documents com 'id_certificado' invalido
    Entao valido que a API Documents retorna uma mensagem de erro

Cenario: validar se a API Documents retorna erro com id_cobertura invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API Documents com 'id_cobertura' invalido
    Entao valido que a API Documents retorna uma mensagem de erro

@validadeclaims
Cenario: Validar que a API ValidadeClaims retorna a chave message
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    Quando faço a batida na API ValidadeClaims com o id_certificado e id_cobertura 
    Entao valido que a API ValidadeClaims retorna a chave message

@validadeclaims_erro
Cenario: validar se a API ValidadeClaims retorna erro com id_certificado invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API ValidadeClaims com 'id_certificado' invalido
    Entao valido que a API ValidadeClaims retorna uma mensagem de erro

Cenario: validar se a API Documents retorna erro com id_cobertura invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado
    E que faço a batida na API ValidadeClaims com 'id_cobertura' invalido
    Entao valido que a API ValidadeClaims retorna uma mensagem de erro  

@user
Cenario: Validar que a API UserInsured retorna a chaves IdInsured e IdRelationship
    Dado que faço a batida da API listaCertificado com 'cpf_valido'   
    Quando faço a batida na API UserInsured com o id_certificado valido
    Entao valido que a API UserInsured retorna a chaves IdInsured e IdRelationship validas

@user_erro
   Cenario: Validar que a API UserInsured retorna erro com id_certificado invalido
    Dado que faço a batida da API listaCertificado com 'cpf_valido'    
    Quando faço a batida na API UserInsured com o 'id_certificado_invalido'
    Entao valido que a API UserInsured retorna uma mensagem de erro 

@providers
    Cenario: Validar que a API providers retorna a chave Campos_primeira 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com id_segurado, id_certificado, id_cobertura e 'lista' validos
    Então valido que a API providers retorna a chave campos_primeira

@providers_erro
Cenario: Validar que a API providers retorna um campo de erro 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com 'id_segurado' invalido
    Então valido que a API providers retorna uma mensagem de erro


@providers_erro
Cenario: Validar que a API providers retorna um campo de erro 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com 'id_certificado' invalido
    Então valido que a API providers retorna uma mensagem de erro


@providers_erro
Cenario: Validar que a API providers retorna um campo de erro 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com 'id_cobertura' invalido
    Então valido que a API providers retorna uma mensagem de erro

@providers_erro
Cenario: Validar que a API providers retorna um campo de erro 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com 'lista_invalida'
    Então valido que a API providers retorna uma mensagem de erro de lista vazia

@depara
Cenario: Validar que a API DePara retorna a chave traking_depara 
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com id_segurado, id_certificado, id_cobertura e 'lista' validos
    Quando faco a batida na API DePara com id_segurado, id_certificado, id_cobertura e at_escolhida validos
    Então valido que a API DePara retorna a chave traking_depara

@depara_erro
Cenario: Validar que a API DePara retorna uma mensagem de erro
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com id_segurado, id_certificado, id_cobertura e 'lista' validos
    Quando faco a batida na API DePara com 'id_segurado' invalido
    Então valido que a API DePara retorna uma mensagem de erro

@depara_erro
Cenario: Validar que a API DePara retorna uma mensagem de erro
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com id_segurado, id_certificado, id_cobertura e 'lista' validos
    Quando faco a batida na API DePara com 'id_certificado' invalido
    Então valido que a API DePara retorna uma mensagem de erro

@depara_erro
Cenario: Validar que a API DePara retorna uma mensagem de erro
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com id_segurado, id_certificado, id_cobertura e 'lista' validos
    Quando faco a batida na API DePara com 'id_cobertura' invalido
    Então valido que a API DePara retorna uma mensagem de erro

@depara_erro
Cenario: Validar que a API DePara retorna uma mensagem de erro
    Dado que faço a batida da API listaCertificado com 'cpf_valido'
    E que faço a batida da API listaCobertura com id_certificado 
    Quando faço a batida na API UserInsured com o id_certificado valido
    E faco a batida na API providers com id_segurado, id_certificado, id_cobertura e 'lista' validos
    Quando faco a batida na API DePara com 'at_escolhida' invalido
    Então valido que a API DePara retorna uma mensagem de erro