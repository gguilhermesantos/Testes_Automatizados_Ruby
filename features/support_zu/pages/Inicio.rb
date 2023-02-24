class Inicio
    include Capybara::DSL

    def validacao_fluxo(opcao)
        if opcao == "Automóvel" || opcao == "Afinidades" || opcao == "Non motors"
            Comum.new.titulo_existe('Qual assunto você deseja tratar?')
        elsif opcao == "Perguntas e filas" 
            Comum.new.texto_existe('Primeiramente, pode nos informar seu nome?')
        elsif opcao == "Transbordo"
            Comum.new.texto_existe('Colabore com a evolução dos nossos serviços!')
        elsif opcao == "Bloco de Identificacao"
            Comum.new.texto_existe('Vamos lá! Por favor, preciso de algumas informações.')
        elsif opcao == "Transbordo de erro e nao cliente"
            Comum.new.texto_existe('Aguarde um momento enquanto transfiro para um de nossos atendentes.')
        elsif opcao == "O que voce deseja"
            Comum.new.titulo_existe('Posso ajudá-lo com mais alguma coisa?')
        elsif opcao == "Encerramento"
            Comum.new.texto_existe('Para continuar evoluindo com os nossos serviços, vou te fazer algumas perguntas sobre sua experiencia conosco.')
        elsif opcao == "Automóvel - 2ª via de apólice" || opcao == "Automóvel - 2ª via de boleto"
            Comum.new.texto_existe('Antes de continuarmos, preciso validar alguns dados por segurança.')
        elsif opcao == "Consultar o status do Sinistro"
            Comum.new.titulo_existe('Sobre o que você deseja falar?')
        elsif opcao == "Menu principal"
            Comum.new.opcao_existe('Automóvel') 
            Comum.new.opcao_existe('Celulares, equipamentos, eletrônicos, móveis e portáteis')
            Comum.new.opcao_existe('Vida e acidentes pessoais')
        elsif opcao == "Finalizacao da conversa"  
            Comum.new.texto_existe('Obrigado por sua avaliação!')
            Comum.new.texto_existe('Obrigada! A Zurich agradece seu contato 🙂.') 
        elsif opcao == "Automóvel"
            Comum.new.opcao_existe('Informações sobre o urich Driver')
            Comum.new.opcao_existe('Informações para Oficinas')
        elsif opcao == "Non motors" || opcao == "Automóvel"
            Comum.new.opcao_existe('Boleto 2ªVia')
            Comum.new.opcao_existe('Apólice')
            Comum.new.opcao_existe('Acionar e acompanhar processo/sinistro')
        elsif opcao == "Afinidades"
            Comum.new.opcao_existe('Informações sobre certificado')
            Comum.new.opcao_existe('Acionar meu seguro')
            Comum.new.opcao_existe('Acompanhamento de processo/sinistro')
            Comum.new.opcao_existe('Envio de documentos para processo/sinistro')
        elsif opcao ==  "Non motors"
            Comum.new.opcao_existe('Acionar assistência 24 horas')
        elsif opcao == "Afinidades" || opcao == "Non motors" || opcao == "Automóvel"
            Comum.new.opcao_existe('Falar com atendente')
            Comum.new.opcao_existe('Dúvidas')
            Comum.new.opcao_existe('Voltar ao menu inicial')
        elsif opcao == "FAQ"
            Comum.new.texto_existe('Estou em processo de aprendizagem!')
            Comum.new.texto_existe('Hoje, consigo ajudar com algumas perguntas sobre o mundo de seguros.')
            Comum.new.texto_existe('Como posso te ajudar?')
        elsif opcao == "Vida"
            Comum.new.titulo_existe('Qual assunto você deseja tratar?')
            Comum.new.opcao_existe('2ª via de boleto')
            Comum.new.opcao_existe('Certificado e Apólice')
            Comum.new.opcao_existe('Falar com atendente')
            Comum.new.opcao_existe('Dúvidas')
            Comum.new.opcao_existe('Voltar ao menu')
        else
            raise "Opção não existe."
        end
    end

    def redirecionamento_fluxo(opcao, fluxo)   
        case fluxo
        when 'Encerramento'
            Inicio.new.validacao_fluxo(opcao)
            Comum.new.selecionar_opcao("Acionar seguro e acompanhar processo/sinistro")
            Comum.new.selecionar_opcao("Acionar assistência 24 horas")
            Comum.new.titulo_existe("Posso ajudá-lo com mais alguma coisa?")
            Comum.new.selecionar_opcao("Não")
        when 'Bloco de Identificacao'
            Inicio.new.validacao_fluxo(opcao)
            Comum.new.selecionar_opcao("Boleto - 2°via")
            Inicio.new.validacao_fluxo(fluxo)
        when 'O que voce deseja'
            if opcao == "Automóvel"
                Inicio.new.validacao_fluxo(opcao)
                Comum.new.selecionar_opcao("Acionar seguro e acompanhar processo/sinistro")
                Comum.new.selecionar_opcao("Acionar assistência 24 horas")
                Comum.new.titulo_existe("Posso ajudá-lo com mais alguma coisa?")
            elsif opcao == "Afinidades"
                raise "Fluxo ainda não implementado"
            end
        else
            raise "Erro - sem redirecionamento"
        end
    end
end