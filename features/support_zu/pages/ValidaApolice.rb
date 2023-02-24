class ValidaApolice
    include Capybara::DSL

    def valida_num_apolice
        quantidade_el = all(EL['txt_whats']).length
        txt_capturado = all(EL['txt_whats'])[quantidade_el -2].text
        num_apolice = (txt_capturado[0..6]).to_i
        apol_img = all(EL['titulo_apolice']).length
        apol_capturado_img = all(EL['titulo_apolice'])[apol_img -1].text
        apol_capturado_img.slice!('Apólice n.º ')
        num_apolice_img = (apol_capturado_img[0..6]).to_i
        if num_apolice == num_apolice_img
            p "apolice validada com sucesso #{num_apolice}"
        else
            raise "Não foi possivel validar apolice, #{all(EL['txt_whats'])[quantidade_el].text}"
        end
    end

    def valida_placa
        quantidade_el = all(EL['txt_whats']).length
        txt_capturado = all(EL['txt_whats'])[quantidade_el -2].text
        placa = (txt_capturado[44..50])
        apol_img = all(EL['desc_apolice']).length
        apol_capturado_img = all(EL['desc_apolice'])[apol_img -1].text
        apol_capturado_img.slice!('Veículo: FOX CITY 1.0 MI 8V 4P Placa: ')
        placa_img = (apol_capturado_img[0..6])

        if placa == placa_img
            p "placa validada com sucesso #{placa}"
        else
            raise "Não foi possivel validar apolice, #{all(EL['txt_whats'])[quantidade_el].text}"
        end
    end

    def valida_vigencia
        quantidade_el = all(EL['txt_whats']).length
        txt_capturado = all(EL['txt_whats'])[quantidade_el -2].text
        data = (txt_capturado[24..33])
        data_img = all(EL['desc_apolice']).length
        data_capturado_img = all(EL['desc_apolice'])[data_img -1].text
        data_capturado_img.slice!('Veículo: FOX CITY 1.0 MI 8V 4P Placa: DZX2976 Vigência: de 17/04/2020 até ')
        data_img = (data_capturado_img[0..9])

        if data == data_img
            p "data de fim de vigência validada com sucesso #{data}"
        else
            raise "Não foi possivel validar apolice, #{all(EL['txt_whats'])[quantidade_el].text}"
        end
    end

    def valida_num_apolice_cpf_1_apolice
        apol_img = all(EL['titulo_apolice']).length
        apol_capturado_img = all(EL['titulo_apolice'])[apol_img -1].text
        apol_capturado_img.slice!('Apólice n.º ')
        num_apolice_img = (apol_capturado_img[0..6]).to_i
        if num_apolice_img.class == Integer
            p "apolice validada com suceesso #{num_apolice_img}"
        else
            raise "Não foi possivel validar apolice, #{all(EL['txt_whats'])[apol_img].text}"
        end
    end
    
end