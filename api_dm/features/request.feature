#language: pt
Funcionalidade: validacoes de request nova pac whatsapp

@request
Esquema do Cenario: cenario esquema do cenario 
  Dado que irei validar os retornos das apis com os <codigos>
  Entao devera retornar na api a resposta <resposta>

  Exemplos:
  | codigos | resposta   |                       
  # |"1"       |"nil"|
  |"2"        |"Este cliente já possui um cartão em análise na loja LOJA DE TESTE desta mesma Unidade/Grupo. Favor aguardar o resultado final."|
  |"3"       |"Este cliente já possui um cartão em análise na loja LOJA DE TESTE desta mesma Unidade/Grupo. Favor aguardar o resultado final."|
  |"44"      |"Este cliente já possui um cartão em análise na loja LOJA DE TESTE desta mesma Unidade/Grupo. Favor aguardar o resultado final."|
  |"45"      |"Este cliente já possui um cartão em análise na loja LOJA DE TESTE desta mesma Unidade/Grupo. Favor aguardar o resultado final."|
  |"5"     |"Esta PAC não está permitida para alteração!"|
  |"9"      |"Esta PAC não está permitida para alteração!"|
  |"8"     | "Este cliente já possui um cartão aprovado na loja FARMACONDE - LJ 123 desta mesma Unidade/Grupo."|
