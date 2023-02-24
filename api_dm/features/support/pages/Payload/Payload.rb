class Payload

    def estabelecimento_proximo
        JSON.generate({
            :"cep"=> "12227140"
            }
        )
    end

    def request_nova_pac_whats(cod_estabelecimento, array)
        JSON.generate({
            :"CodEstabelecimento"=> "#{array[0]}",
            :"Cpf"=> "#{array[1]}",
            :"Nome"=> "#{array[2]}",
            :"DataNascimento"=> "#{array[3]}",
            :"Celular"=> "12981821324",
            :"Email"=> "teste001@gmail.com",
            :"Cep"=> "12230090"
            }
        )
    end

    def atualiza_dado_pac
        JSON.generate({
            :"NumeroPac"=> 6362213,
            :"Nome"=> "Efraim Rabelo",
            :"Logradouro"=> "AVENIDA PAULISTA",
            :"Bairro"=> "BELA VISTA",
            :"Numero"=> "1",
            :"Complemento"=> "",
            :"CodCidade"=> "561",
            :"Cidade"=> "SAO PAULO",
            :"Estado"=> "SP",
            :"DiaVencimento"=> 8,
            :"Renda"=> 1000
            }
        )
    end

    def recebe_documento_cliente
        JSON.generate({
            :"bucketName"=> "altubots/liveperson/files/aaa/3/33/uploads",
            :"keyName"=> "1560175287576.jpeg",
            :"cod_estabelecimento"=> 9102,
            :"codPacDocumento"=> -1,
            :"descricao"=> "",
            :"tipoArquivo"=> 1,
            :"tipoDocumento"=> 3,
            :"numeroPac"=> 6362220
            }
        )
    end
    
    def verify_document_url
        JSON.generate({
            :"url"=> "https://prime.altubots.com/chats/dmcard/2/uploads/75327182-8b75-303d-fb32-a96873dc6bf9/20190626200532233_123123.png"
            }
        )    
    end

    def verify_document
        JSON.generate({
            :"bucketName"=> "altubots/liveperson/files/dmcard/1/156/uploads",
            :"keyName"=> "1561554668569.jpeg"
            }
        )    
    end

    def find_cep
        JSON.generate({
            :"endereco"=> "Manoel luis de vergueiro"
            }
        )    
    end

end
