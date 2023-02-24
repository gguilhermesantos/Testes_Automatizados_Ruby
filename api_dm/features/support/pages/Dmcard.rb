class Dmcard



    def estabelecimento_proximo
        endpoint = DATA['endpoint']['estabelecimento_proximo']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        payload = Payload.new.estabelecimento_proximo
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def busca_loja
        endpoint = "#{DATA['endpoint']['busca_loja']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?nome_loja=#{MASSA['nome_loja']}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def dados_estabelecimento
        endpoint = "#{DATA['endpoint']['dados_estabelecimento']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cod_estabelecimento=1994"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def consulta_cep
        endpoint = "#{DATA['endpoint']['consulta_cep']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cep=12227140"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def consulta_cidades
        endpoint = "#{DATA['endpoint']['consulta_cidades']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?uf=SP"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def vencimentos_datas
        endpoint = "#{DATA['endpoint']['vencimentos_datas']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?cod_estabelecimento=1"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def carregar_endereco
        endpoint = "#{DATA['endpoint']['carregar_endereco']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?pac=1"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def request_nova_pac_whats(cod_estabelecimento)
        endpoint = DATA['endpoint']['request_nova_pac_whats']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        array = de_para_request(cod_estabelecimento)
        payload = Payload.new.request_nova_pac_whats(cod_estabelecimento, array)
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def de_para_request(cod_estabelecimento)
        if cod_estabelecimento == "1"
            cod_estabelecimento = "#{cod_estabelecimento}"
            cpf = "11935349767"
            nome = "REQUEST NOVA PAC TESTE SEIS"
            data_nascimento = "1974-10-27"
            array = [cod_estabelecimento, cpf, nome, data_nascimento]
        elsif cod_estabelecimento == "2" || cod_estabelecimento == "3" ||cod_estabelecimento == "44" ||cod_estabelecimento == "45"
            cod_estabelecimento = 1
            cpf = "46546286149"
            nome = "MANUEL BENEDITO"
            data_nascimento = "21.10.1974"
            array = [cod_estabelecimento, cpf, nome, data_nascimento]
        elsif cod_estabelecimento == "5" || cod_estabelecimento == "9" 
            cod_estabelecimento = 9419
            cpf = "47760097816"
            nome = "JEFERSON FERNANDES ALVES JUNIOR"
            data_nascimento = "21.10.1974"
            array = [cod_estabelecimento, cpf, nome, data_nascimento]
        elsif cod_estabelecimento == "8"
            cod_estabelecimento = 7466
            cpf = "29904446881"
            nome = "LUCAS NODA"
            data_nascimento = "21.10.1974"
            array = [cod_estabelecimento, cpf, nome, data_nascimento]
        else
            raise "codigo errado"
        end
        array
    end

    def captura_request_nova_pac(body)
        numero_pac = body['NumeroPac']
        numero_pac
    end

    def atualiza_dado_pac
        endpoint = DATA['endpoint']['atualiza_dado_pac']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        payload = Payload.new.atualiza_dado_pac
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def recebe_documento_cliente
        endpoint = DATA['endpoint']['recebe_documento_cliente']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        payload = Payload.new.recebe_documento_cliente
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def finalizar_pac
        endpoint = "#{DATA['endpoint']['finalizar_pac']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?pac=1"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def verify_document_url
        endpoint = DATA['endpoint']['verify_document_url']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        payload = Payload.new.verify_document_url
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def api_google
        endereco = "R DUQUE DE CAXIAS 520, CENTRO PARAISOPOLIS - MG"
        url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{endereco}&key=AIzaSyDoFJ_GrLn90YMpt4OTH464bxoyDWE9r9I"
        @body = ""
        @body = Comum.new.test_get(url, "google_api")
        status_body(@body)
        @body
    end

    def verify_document
        endpoint = DATA['endpoint']['verify_document']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        payload = Payload.new.verify_document
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def find_cep
        endpoint = DATA['endpoint']['find_cep']
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}"
        payload = Payload.new.find_cep
        @body = ""
        @body = Comum.new.test_post(url, payload, endpoint)
        status_body(@body)
        @body
    end

    def estabelecimento_telefone
        endpoint = "#{DATA['endpoint']['estabelecimento_telefone']}"
        url = "#{DATA[$ambiente]['url_api']}#{endpoint}?telefone=#{MASSA['numero_telefone']}"
        @body = ""
        @body = Comum.new.test_get(url, endpoint)
        status_body(@body)
        @body
    end

    def captura_cod_estabelecimento(body)
        cod_estabelecimento = body['cod_estabelecimento']
        cod_estabelecimento
    end

  def status_body(body)
    p body
      if body['status_code'] == 200
      else
        p body['erro_api'] 
        p "nao esta enviando a resposta, reposta #{@body}"
      end
  end
end
  