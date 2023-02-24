class Processo
    include Capybara::DSL

    def valida_num_processo
        Comum.new.titulo_existe('Deseja realizar uma nova consulta de status para seus sinistros?')
        quantidade_el = all(EL['txt_whats']).length
        txt_capturado = all(EL['txt_whats'])[quantidade_el -2].text
        txt_tabela = all(EL['txt_whats'])[quantidade_el -1].text
        if (txt_tabela.include?(txt_capturado)) == true
            p "Numero do processo esta correto"
        else
            raise "Numero do processo esta incorreto"
        end
    end
end