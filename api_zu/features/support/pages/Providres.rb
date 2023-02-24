class Providers

    def providers (lista, body, body_cobertura, insured)        
        lista = MASSA[lista]
        id_certificado = body[0]['values']
        id_cobertura = body_cobertura[0]['values']
        id_segurado = insured['IdInsured']
        endpoint = DATA['endpoint']['providers']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_segurado=#{id_segurado}&id_certificado=#{id_certificado}&id_cobertura=#{id_cobertura}&lista=#{lista}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end

    def providers_erro(dado_alterado, body, body_cobertura, insured)  
                               
        lista = MASSA['lista']
        id_certificado = body[0]['values']
        id_cobertura = body_cobertura[0]['values']
        id_segurado = insured['IdInsured']

        array_certificado_cobertura = [lista, id_certificado,id_cobertura, id_segurado]
       
        if dado_alterado == 'id_segurado'
            array_certificado_cobertura[3] = MASSA['id_segurado_invalido']
        elsif dado_alterado == 'id_certificado'
            array_certificado_cobertura[1] = MASSA['id_certificado_invalido']
        else  dado_alterado == 'id_cobertura'
                array_certificado_cobertura[2] = MASSA['id_cobertura_invalido']   
        end

        endpoint = DATA['endpoint']['providers']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_segurado=#{array_certificado_cobertura[3]}&id_certificado=#{array_certificado_cobertura[1]}&id_cobertura=#{array_certificado_cobertura[2]}&lista=#{lista}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end   

    def providers_erro_lista(lista_invalida, body, body_cobertura, insured)  
                                     
        lista = MASSA['lista_invalida']
        id_certificado = body[0]['values']
        id_cobertura = body_cobertura[0]['values']
        id_segurado = insured['IdInsured']

        array_certificado_cobertura = [lista, id_certificado,id_cobertura, id_segurado]
             
        endpoint = DATA['endpoint']['providers']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_segurado=#{array_certificado_cobertura[3]}&id_certificado=#{array_certificado_cobertura[1]}&id_cobertura=#{array_certificado_cobertura[2]}&lista=#{lista}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end   

end

