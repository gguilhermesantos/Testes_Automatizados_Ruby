class ListaSinistro

    def lista_sinistro (cpf)               
        cpf = MASSA[cpf]
        endpoint = DATA['endpoint']['lista_sinistro']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cpf=#{cpf}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body

    end
end
