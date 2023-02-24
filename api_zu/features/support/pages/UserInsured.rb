class UserInsured

    def user_insured(body)           
        id_certificado = body[0]['values']
        endpoint = DATA['endpoint']['userinsured']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_certificado=#{id_certificado}" 
        body = ""      
        @body = Comum.new.test_get(url, endpoint)
        @body
    end

    def user_insured_erro(insured_erro)                     
        idcobertura = MASSA[insured_erro]
        endpoint = DATA['endpoint']['tecdocrequired']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_cobertura=#{idcobertura}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end    
end