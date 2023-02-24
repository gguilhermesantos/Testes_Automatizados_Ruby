class DePara

    def de_para (body, body_cobertura, insured, providers)       
        id_certificado = body[0]['values']
        id_cobertura = body_cobertura[0]['values']
        id_segurado = insured['IdInsured']
        at_escolhida = providers['campos_primeira']

        endpoint = DATA['endpoint']['depara']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_segurado=#{id_segurado}&id_certificado=#{id_certificado}&id_cobertura=#{id_cobertura}&at_escolhida=#{at_escolhida}"
        @body = Comum.new.test_get(url, endpoint)
        @body
    end

    def de_para_erro(dado_alterado, body, body_cobertura, insured, providers)                                 
        id_certificado = body[0]['values']
        id_cobertura = body_cobertura[0]['values']
        id_segurado = insured['IdInsured']
        at_escolhida = providers['campos_primeira']

        array_certificado_cobertura = [id_certificado, id_cobertura,id_segurado,at_escolhida ]
       
        if dado_alterado == 'id_segurado'
            array_certificado_cobertura[2] = MASSA['id_segurado_invalido']

        elsif dado_alterado == 'id_certificado'
            array_certificado_cobertura[0] = MASSA['id_certificado_invalido']

        elsif dado_alterado == 'at_escolhida' 
            array_certificado_cobertura[3] = MASSA['at_invalido']

        else  dado_alterado == 'id_cobertura'
                array_certificado_cobertura[1] = MASSA['id_cobertura_invalido']   
        end

        endpoint = DATA['endpoint']['depara']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_segurado=#{array_certificado_cobertura[2]}&id_certificado=#{array_certificado_cobertura[0]}&id_cobertura=#{array_certificado_cobertura[1]}&at_escolhida=#{array_certificado_cobertura[3]}"
        @body = Comum.new.test_get(url, endpoint)
        @body
    end   

    
end

