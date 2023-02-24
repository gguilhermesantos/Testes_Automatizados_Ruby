class TecDocRequired

    def doc_required(body_cobertura)           
        cobertura = body_cobertura[0]['values']
        endpoint = DATA['endpoint']['tecdocrequired']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_cobertura=#{cobertura}" 
        body = ""      
        @body = Comum.new.test_get(url, endpoint)
        @body
    end

    def doc_required_erro(id_cob_invalido)                       
        idcobertura = MASSA[id_cob_invalido]
        endpoint = DATA['endpoint']['tecdocrequired']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?id_cobertura=#{idcobertura}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end    
end