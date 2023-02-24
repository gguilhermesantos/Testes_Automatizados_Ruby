class NameIdentification
    def name_identification(nome)   
        numero_cpf = MASSA['cpf_valido']
        name = MASSA[nome]
        endpoint = DATA['endpoint']['name_identification']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cpf=#{numero_cpf}&nome=#{name}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        binding.pry
        @body
    end
end