class PositiveIdentification
    def busca_identification(cpf)   
        numero_cpf = MASSA[cpf]
        endpoint = DATA['endpoint']['positive_identification']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cpf=#{numero_cpf}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end
end