class Validacao

    def valida_identification(body)
        if body["isValid"] == "True"  
            p "Os dados são válidos"
        else
            p "Os dados são inválidos"
        end
        p body
    end

    def valida_certificado(body)                              
        if body[0].has_key?('values') == true
            p "Os dados são válidos"   
        else
            raise "Verifique seus dados"
        end
            body
    end

    def valida_certificado_erro(body)         
        if body.has_key?('erro') 
            p "Verifique os dados"
        else
            raise "dados são validos"
        end
    end

    def valida_cobertura(body_cobertura)           
        if body_cobertura[0].has_key?('values') == true
            p "O numero da cobertura é valido"   
        else
            raise "O numero da cobertura não é valido"   
        end
            p body_cobertura
    end   
  
    def certificado(certificado, body, body_cobertura)       
        nrCertificate = certificado['certificado_payload']['nrCertificate']
        servico = body_cobertura[0]['values']
        if certificado['certificado_payload']['nrCertificate']== nrCertificate           
            if certificado['certificado_payload']['listaCoberturas'][0]['values'] == servico && certificado['certificado_payload']['listaCoberturas'].length == 1
                p "numero ok"
            else
                raise "não ok"
            end
        end
    end

    def certificado_erro(certificado_erro)
        if certificado_erro.has_key?("erro")
            p "reveja os dados"                 
        else
            raise body
        end    
    end

    def valida_sinistro(body, sinistro)    
        id_certificado = body[0]['values']
        if sinistro[0]['values'] == id_certificado
            p "Os dados estão ok"
        else
            raise "verifique os dados"
        end  
    end

    def valida_CertificateCause(cause)
        if cause.has_key?('causeslist') == true
            if cause['causeslist'].length != 0
                p "as informações são validas"
            else
                raise "Dados invalidos"
            end
        end
    end

    def valida_doc_required(doc_required)
        if doc_required.has_key?('DocRequired')&& doc_required['DocRequired'] == "true"
            p "as informações são validas"
        else
            raise "Dados invalidos"
        end
    end


    def doc(doc_body)        
        if doc_body.has_key?('listaDoc') == true
            if doc_body['listaDoc'].length != 0
                p "as informações são validas"
            else
                raise "Dados invalidos"
            end
        end

    end


    def valida_claim(claims)                  
        if claims.has_key?('isValid') && claims.has_key?('message') && claims.has_key?('cdMessage') == true
            p "As informações são validas"   
        else
            raise "As informações não são validas"   
        end
    end


        def valida_insured(insured)                          
            if insured.has_key?('IdInsured') && insured.has_key?('IdRelationship') == true
                p "As informações são validas"   
            else
                raise "As informações não são validas"   
            end
           
        end   

        def valida_providers(providers)                                   
            if providers.has_key?('campos_primeira') == true                
                p "As informações são validas, campos primeira: #{providers['campos_primeira']} "
            else
                raise "As informações não são validas"   
            end
           
        end 

        def lista_erro(lista_vazia)
            if lista_vazia.has_key?("mensagem")
                p "reveja os dados: #{lista_vazia['mensagem']} "                
            else
                raise body
            end    
        end
        
        def valida_depara(depara)                                        
            if depara.has_key?('traking_depara') == true
                p "Os dados são válidos"   
            else
                raise "Verifique seus dados"
            end
             
        end

        def depara_erro(depara_erro)            
            if depara_erro.has_key?("erro")
                p "reveja os dados: #{depara_erro['erro']}"             
            elsif depara_erro.has_key?("mensagem")
                p "reveja os dados: #{depara_erro['mensagem']}" 
            else
                raise "dados ok" 
            end    
        end
        
        

end


