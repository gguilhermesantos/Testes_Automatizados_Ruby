class ListaCobertura
    def listar_coberturas(body)           
        certificado = body[0]['values']
        endpoint = DATA['endpoint']['lista_coberturas']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_certificado=#{certificado}" 
        body = ""      
        @body = Comum.new.test_get(url, endpoint)
        @body
    end

    def listar_coberturas_erro(id_cert_invalido)          
        certificado_invalido = MASSA[id_cert_invalido]
        endpoint = DATA['endpoint']['lista_coberturas']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_certificado=#{certificado_invalido}" 
        body = ""       
        @body = Comum.new.test_get(url, endpoint)
        @body
    end
end