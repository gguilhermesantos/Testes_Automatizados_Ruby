class ListaCertificado
    def listar_certificados(cpf)           
        numero_cpf = MASSA[cpf]
        endpoint = DATA['endpoint']['lista_certificado']     
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cpf=#{numero_cpf}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        @body
    end
end