class Faq
    include Capybara::DSL

    def validacao_texto(opcao_msg)
        if opcao_msg == "O que e um sinistro"
            Comum.new.texto_existe('Vamos explicar o que é um sinistro')
            Comum.new.texto_existe('Também chamado de "acionar o seguro", o sinistro ocorre quando o bem segurado sofre um acidente ou prejuízo material.')
            Comum.new.titulo_existe('Tudo bem! Antes de seguir, por favor, informe, se você possui seguro Afinidade, Automóvel ou outro?') #tt
        elsif opcao_msg == "Como abro um sinistro" 
            Comum.new.texto_existe('Aconteceu algo? Para que você possa saber mais sobre como acionar um seguro, ou abrir um sinistro, deve acessar o nosso site: https://www.zurich.com.br/pt-br/atendimento.')
            Comum.new.texto_existe('Dentro da área de atendimento rápido poderá encontrar todas as informações sobre o seu produto segurado pela Zurich.')
        elsif opcao_msg == "O que e um sinistro - Outro" || opcao_msg == "Status do meu sinistro - Outro"
            Comum.new.texto_existe('Neste caso, entre em contato com a nossa Central de Atendimento! Consulte nossos telefones em nosso site clicando aqui.')
        elsif opcao_msg == "Tive um problema, para quem ligar"
            Comum.new.texto_existe('Você pode iniciar o processo de abertura de sinistro (ou acionar um seguro) por meio da nossa página de atendimento,')
            Comum.new.texto_existe('onde estão todas as informações sobre documentação e o que fazer.')
            Comum.new.texto_existe('Além disso, também poderá encontrar os contatos da central de atendimento Zurich. https://www.zurich.com.br/pt-br/atendimento')
        elsif opcao_msg == "Status do meu sinistro"
            Comum.new.titulo_existe('Tudo bem! Antes de seguir, por favor, informe, se você possui seguro Afinidade, Automóvel ou outro?') #tt
        elsif opcao_msg == "O que preciso para acionar o seguro"
            Comum.new.texto_existe('Os documentos necessários sempre vão variar dependendo do seguro que será acionado.')
            Comum.new.texto_existe('Por favor, acesse o nosso site: https://www.zurich.com.br/pt-br/atendimento.')
            Comum.new.texto_existe('Dentro da área de atendimento rápido você poderá encontrar todas as informações sobre o seu produto segurado pela Zurich.')
        elsif opcao_msg == "Quero ligar para acionar o seguro"
            Comum.new.texto_existe('Muitas vezes conseguimos resolver o seu problema por aqui mesmo.')
            Comum.new.texto_existe('Se quiser, me conte mais sobre o seu problema e tentarei te ajudar. Caso queira falar com um dos nossos atendentes, ligue:')
        elsif opcao_msg == "Quem abre o sinistro"
            Comum.new.texto_existe('O acionamento de seguro, ou sinistro, deve ser aberto preferencialmente pelo titular da apólice ou certificado.')
            Comum.new.texto_existe('O que mais você gostaria de saber sobre sinistro?')
        elsif opcao_msg == "O que é lucro cessante"
            Comum.new.texto_existe('Lucros cessantes são prejuízos causados pela interrupção de qualquer atividade de uma empresa ou de um profissional liberal,')
            Comum.new.texto_existe('no qual o objeto de suas atividades é o lucro.')
        elsif opcao_msg == "Como resgato a minha previdencia"
            Comum.new.texto_existe('Você pode obter mais informações sobre a previdência acessando o nosso portal. Clique aqui e veja esse conteúdo!')
        elsif opcao_msg == "Como fico sabendo do sorteio de capitalizacao"
            Comum.new.texto_existe('Para ter mais informações sobre o tema sobre capitalização individual, clique aqui.')
            Comum.new.texto_existe('Agora, se quer mais informações sobre capitalização empresarial, acesse este link.')
        elsif opcao_msg == "O que e apolice"
            Comum.new.texto_existe('É o documento que a seguradora emite para formalizar a aceitação do seguro.')
            Comum.new.texto_existe('Na apólice, você poderá encontrar informações sobre coberturas, condições e valores.')
            Comum.new.texto_existe('Se você possui seguro de automóvel, equipamentos eletrônicos e portáteis poderá encontrar essas informações voltando ao nosso menu principal')
        elsif opcao_msg == "O que e o corretor"
            Comum.new.texto_existe('É o responsável por intermediar a comunicação entre você e a seguradora.')
            Comum.new.texto_existe('O profissional é responsável por entender o seu perfil e te indicar os melhores produtos. ')
            Comum.new.texto_existe('Hoje, para que você possa contratar o seu seguro precisa de um corretor para te auxiliar.')
            Comum.new.texto_existe('Assim, caso queira falar com um deles, acesse o link e encontre o corretor mais próximo a você')
        elsif opcao_msg == "Como gera um certificado"
            Comum.new.texto_existe('Certificado é o comprovante do produto segurado que foi adquirido junto a um de nossos parceiros.')
            Comum.new.texto_existe('Em sua maioria, os produtos que possuem certificados são equipamentos eletrônicos e portáteis.')
            Comum.new.texto_existe('Saiba mais sobre todos os nossos parceiros e os produtos que temos seguros para você clicando aqui.')
        elsif opcao_msg == "O que e Susep"
            Comum.new.texto_existe('A SUSEP é o órgão responsável pelo controle e fiscalização dos mercados de seguro, previdência privada aberta, capitalização e resseguro.')
            Comum.new.texto_existe('Ou seja, ele é responsável por definir as regras e condições de como serão precificados, organizados e comercializados os seguros.')
        elsif opcao_msg == "Quanto tempo dura minha apolice"
            Comum.new.texto_existe('Vigência é período que o seu seguro é válido e considera a data de início e de fim.')
            Comum.new.texto_existe('Ou seja, esse período é a base para que o seu seguro seja válido para que a Zurich ofereça todas as coberturas e apoio ao seu bem segurado.')
            Comum.new.texto_existe('Se você possui seguro de automóvel, equipamentos eletrônicos e portáteis, você poderá encontrar essas informações no nosso menu principal')
        elsif opcao_msg == "Quanto vale o premio"
            Comum.new.texto_existe('O prêmio de seguro é o valor pago pelo segurado, para a contratação do seguro, que é efetivada após a emissão da apólice.')
            Comum.new.texto_existe('Esse valor, na maioria das vezes, pode ser parcelado ou pago à vista.')
        elsif opcao_msg == "O que e franquia"
            Comum.new.texto_existe('Franquia é o valor (em dinheiro) que o cliente é responsável em casos de acionamento de seguro. Parece complicado, mas não é.')
            Comum.new.texto_existe('Isso significa, por exemplo, que caso você bata seu carro e os reparos fiquem avaliados em R$ 5.000 e sua franquia é de R$ 1.500 você fica responsável por pagar R$ 1.500 do conserto e a seguradora cobre os R$ 3.500 restantes.')
            Comum.new.texto_existe('Esse item da apólice ou certificado serve para garantir que você não corra riscos desnecessários, podendo pensar que o seguro irá cobrir tudo.')
        elsif opcao_msg == "Qual o telefone central vida"
            Comum.new.texto_existe('Para entrar em contato com a nossa Central de Atendimento, por favor, acesse nosso site clicando aqui!')
        elsif opcao_msg == "diferenca entre Zurich e outras seguradoras"
            Comum.new.texto_existe('Conheça a Zurich e todas as vantagens e produtos que temos especialmente para você em nosso site!')
            Comum.new.texto_existe('Acesse clicando aqui ou procure o corretor mais próximo de você pelo nosso site.')
        elsif opcao_msg == "O que e Zurich Driver"
            Comum.new.texto_existe('Você pode conhecer mais sobre o Zurich Driver e todas as suas vantagens acessando nosso site por meio deste link!')
            Comum.new.texto_existe('Ainda não é um cliente among usuro de automóvel clicando aqui https://www.zurich.com.br/pt-br/seguros-para-voce/automovel ou procure o corretor mais próximo de você por aqui.')
        elsif opcao_msg == "Seguro de vida"
            Comum.new.texto_existe('Conheça mais sobre nosso produto de vida acessando nosso site! Para Seguros Individuais acesse clicando aqui.')
            Comum.new.texto_existe('Para Seguros Empresariais clique aqui ou procure o corretor mais próximo de você acessando esse link.')
        elsif opcao_msg == "Quanto custa minha franquia"
            Comum.new.texto_existe('O valor da franquia reflete a parcela da indenização que fica a cargo do cliente, isto é, quanto o cliente tem que pagar para ter direito a indenização.')
            Comum.new.texto_existe('Para mais informações, consulte a sua apólice - voltando ao meu principal - e em seguida, o seu corretor.')
        elsif opcao_msg == "Posso ligar para Zurich para contratar seguro"
            Comum.new.texto_existe('Para contratar o seu seguro você pode encontrar um corretor mais próximo da sua localização por meio do nosso site.')
            Comum.new.texto_existe('Em contratação de seguros para equipamentos eletrônicos e portatéis você pode contratar por meio dos nossos parceiros clicando aqui')
        elsif opcao_msg == "O que preciso para vender seguros"
            Comum.new.texto_existe('Para vender seguros, você deve ser um corretor registrado na SUSEP. Para isso, você pode acessar o site da SUSEP e obter mais informações.')
            Comum.new.texto_existe('Caso você já seja um corretor e queira fazer parte dos nossos corretores parceiros, pode realizar o seu cadastro por meio do link')
        elsif opcao_msg == "Por que contratar seguro"
            Comum.new.texto_existe('A contratação de um seguro é uma maneira de proteger um patrimônio ou um bem. O seguro surge da necessidade de segurança das pessoas diante das incertezas e riscos que corremos no nosso cotidiano.')
            Comum.new.texto_existe('Possuímos várias opções de seguro hoje em dia: automóvel, residencial, vida, acidentes pessoais, educacional... Saiba mais sobre todos os nossos seguros por meio do nosso site:')
            Comum.new.texto_existe('Seguros para você')
            Comum.new.texto_existe('Seguros empresariais')
            Comum.new.texto_existe('Você também pode entrar em contato com o seu corretor.')
        elsif opcao_msg == "Para quais produtos posso ter seguro"
            Comum.new.texto_existe('A Zurich possui mais de 40 produtos de seguros para você relacionados a automóvel, residencial, vida, acidentes pessoais a educacional.')
            Comum.new.texto_existe('Saiba mais sobre todos os nossos seguros por meio do nosso site')
        elsif opcao_msg == "Qual preço de cada seguro"
            Comum.new.texto_existe('O custo do seguro varia de acordo com diversos fatores:perfil, risco, qual o bem o segurado, condições em que o produto é utilizado, entre outros.')
            Comum.new.texto_existe('Para entender melhor quanto que vai custar o seu seguro, entre em contato direto com o seu corretor ou, se ainda não possui um, encontre já o seu clicando aqui.')
        elsif opcao_msg == "O que e negativa de cobertura"
            Comum.new.texto_existe('É quando a seguradora, por algum motivo relacionado ao risco, identifica que não irá realizar o pagamento da franquia.')
            Comum.new.texto_existe('Caso isso ocorra, por favor, entre em contato com o seu corretor ou então acesse nossa página de atendimento clicando aqui.')
        elsif opcao_msg == "Como encontro oficina"
            Comum.new.texto_existe('Você pode identificar a rede relacionada a Zurich por meio deste link.')
        elsif opcao_msg == "Pagamento notas fiscais automovel"
            Comum.new.texto_existe('Acesse nosso espaço fornecedor por este link e obtenha todas as informações.')
        elsif opcao_msg == "Alteracao forma de pagamento"
            Comum.new.texto_existe('Para alterar suas formas de pagamento com a Zurich, entre em contato com o seu corretor!')
        elsif opcao_msg == "Acabou meu seguro"
            Comum.new.texto_existe('Para renovar o seu seguro, procure o seu corretor ou vá até um de nossos parceiros. Saiba mais acessando o nosso site clicando aqui.')
        elsif opcao_msg == "O que meu seguro cobre"
            Comum.new.texto_existe('Cobertura é o que a seguradora é capaz de cobrir ao seu cliente diante de um seguro acionado.')
            Comum.new.texto_existe('As coberturas são esclarecidas na apólice e no certificado!')
        elsif opcao_msg == "Como precificar o seguro"
            Comum.new.texto_existe('Dentro de uma seguradora a área atuária é responsável por ter profissionais que são especialistas em avaliar, calcular e administrar riscos.')
            Comum.new.texto_existe('O trabalho desenvolvido é fundamental na precificação do seguro.')
        elsif opcao_msg == "O que e parceiro"
            Comum.new.texto_existe('Parceiros são as empresas que possuem contrato com a Zurich e podem comercializar nossos produtos.')
            Comum.new.texto_existe('Assim, eles são responsáveis pela oferta e venda desses produtos dentro dos seus meios de distribuição diretamente para você.')
        elsif opcao_msg == "Como funciona garantia estendida"
            Comum.new.texto_existe('A Garantia Estendida é um seguro que garante ao cliente a extensão da garantia original de fábrica para produtos')
            Comum.new.texto_existe('(eletrodomésticos, eletroportáteis, equipamentos eletrônicos, móveis, celulares, equipamentos de fitness, entre outros).')
        elsif opcao_msg == "O que e endosso"
            Comum.new.texto_existe('Qualquer tipo de alteração realizada nas condições de um contrato de seguro gera um endosso.')
            Comum.new.texto_existe('O endosso é calculado baseando-se nas condições e prêmios vigentes à data de alteração do contrato de seguro.')
            Comum.new.texto_existe('Por ser uma alteração na apólice ou certificado, o endosso quase sempre resulta em um preço diferente para o seguro, bem como para as coberturas e franquias.')
            Comum.new.texto_existe('Como exemplos, podemos ter a inclusão de uma garantia adicional; substituição do veículo que consta na apólice; alteração no endereço residencial e mudança nas condições de uma viagem.')
        elsif opcao_msg == "O que e indenizacao"
            Comum.new.texto_existe('É o máximo que a Zurich suportará, ou seja, pagará diante de um seguro acionado, ou sinistro.')
            Comum.new.texto_existe('Esse valor varia de produto para produto e você pode achar mais informações na sua apólice.')
        elsif opcao_msg == "Quero reclamar"
            Comum.new.texto_existe('A ouvidoria é um serviço aberto ao consumidor (ou cidadão) para escutar suas reivindicações, denúncias, sugestões e também elogios, embora sejam mais comumente utilizados para reclamações e reivindicações.')
            Comum.new.texto_existe('Você pode entrar em contato com nossa ouvidoria e conhecer os principais números disponíveis para atendimento clicando aqui. ')
        elsif opcao_msg == "Quero cancelar minha apolice"
            Comum.new.texto_existe('Caso o seu seguro seja de garantia estendida, danos, roubo e furto o cancelamento pode ser feito diretamente no estabelecimento onde você contratou o serviço.')
            Comum.new.texto_existe('Além disso, você também pode entrar em contato com a nossa Central por aqui.')
            Comum.new.texto_existe('Em caso de outros tipos de seguro - como automóvel, vida e demais seguros - você poderá solicitar o cancelamento contatando o seu corretor ou a nossa central.')
        elsif opcao_msg == "Quero saber investimentos"
            Comum.new.texto_existe('Invista conosco! Conheça nossos produtos de investimento acessando nosso site! Clique aqui e planeje seu futuro conosco!')
        elsif opcao_msg == "Central nao funciona"
            Comum.new.titulo_existe('Você gostaria de saber informações sobre Status de Sinistros de seguros de Automóvel ou de equipamentos de móveis e portáteis?') #tt
        elsif opcao_msg == "Central nao funciona - Nao"
            Comum.new.texto_existe('Acesse nossa página de atendimento e veja como contatar nossos canais www.zurich.com.br/atendimento ')
        elsif opcao_msg == "Qual numero telefone"
            Comum.new.texto_existe('Você pode entrar em contato conosco por meio dos nossos números, acesse aqui para mais informações.')
        elsif opcao_msg == "O que e sinistro de terceiro"
            Comum.new.texto_existe('O sinistro, ou acionamento de seguro, de terceiros ocorre quando o cliente Zurich causa ou se envolve em um acidente com uma terceira pessoa que não é cliente Zurich.')
            Comum.new.texto_existe('Nesse caso, dependendo das condições de apólices, a Zurich poderá arcar com a indenização.')
            Comum.new.texto_existe('Para mais informações, entre em contato com seu corretor ou acesse as condições de sua apólice.')
        elsif opcao_msg == "O que e certificado"
            Comum.new.texto_existe('Apólice é o contrato firmado entre a Zurich e o cliente para a maioria dos produtos oferecidos pela Zurich.')
            Comum.new.texto_existe('Certificado é contrato estabelecido entre o cliente e a Zurich para equipamentos eletrônicos e portáteis.')
        elsif opcao_msg == "O que e risco em seguros"
            Comum.new.texto_existe('Risco para o mundo de seguros é a probabilidade de um determinado evento ocorrer e deteriorar o bem segurado.')
            Comum.new.texto_existe('O contrato estabelecido com a Zurich, por meio de uma apólice ou certificado, formaliza a transferência do risco do cliente para a Zurich.')
            elsif opcao_msg == "Posso contratar um resseguro"
            Comum.new.texto_existe('O resseguro é um contrato que a Zurich estabelece com outra seguradora, que pode indenizar a Zurich diante de algum dano em uma de suas apólices de seguro.')
        elsif opcao_msg == "O que e cosseguro"
            Comum.new.texto_existe('Um cosseguro é um seguro realizado por duas ou mais seguradoras referente ao mesmo risco.')
            Comum.new.texto_existe('Assim, reduz-se um perigo de grandes dimensões em responsabilidades menores, de modo que cada seguradora assuma a responsabilidade por uma parte do montante.')
        elsif opcao_msg == "Problemas com meus aparelhos"
            Comum.new.texto_existe('Quando o seu produto quebra, avaria ou sofre algum tipo de acidente, significa que o bem segurado sofreu um sinistro e que precisará acionar o seguro para que o reparo seja feito.')
            Comum.new.texto_existe('Como ainda estou aprendendo a abrir sinistro para cada um dos produtos, você poderá acessar todas as informações por meio de nossa página de atendimento clicando aqui.')
        elsif opcao_msg == "Como eu encontro o meu IMEI"
            Comum.new.texto_existe('IMEI é um código único e global que identifica celulares internacionalmente.')
            Comum.new.texto_existe('Esse código é formado por quatro grupos de números (000000-00-000000-0) e equivale, por exemplo, ao número de chassis de um carro.')
            Comum.new.texto_existe('Isso significa que não existem IMEIs iguais, eles são exclusivos para cada aparelho de celular.')
            Comum.new.texto_existe('Você pode achar o IMEI no próprio aparelho, nas especificações de funções, na caixa, na nota fiscal ou no cadastro do revendedor.')
        elsif opcao_msg == "Como pagar parcela seguro Vivo"
            Comum.new.texto_existe('Você poderá acessar as parcelas e outras informações pelo site do nosso parceiro, clicando aqui.')
        elsif opcao_msg == "proximo passo sinistro q acionei"
            Comum.new.texto_existe('O que você precisa fazer após acionar o seguro depende do tipo de sinistro que foi acionado.')
            Comum.new.texto_existe('Tentarei ajudar, mas caso não fique claro, você poderá falar com um dos nossos atendentes do chat, pode ser?')
            Comum.new.texto_existe('Em casos de garantia estendida, após acionar o seguro, você deverá apresentar o bem material em uma assistência.')
            Comum.new.texto_existe('A forma como isso será feito depende de como foi combinado com você no momento da abertura, certo?')
            Comum.new.texto_existe('No caso de roubo e furto, o próximo passo é mandar a documentação necessária: boletim de ocorrência')
            Comum.new.texto_existe('(e nesse caso, não aceitamos o protocolo) e nota fiscal do produto.')
            Comum.new.texto_existe('Se você possui uma ocorrência com seu automóvel, sua próxima atividade será ir para a vistoria do seu carro.')
            Comum.new.texto_existe('Em caso de seguros de vida e ramos elementares, o melhor caminho seria falar com um dos nossos atendentes via chat.')
            Comum.new.titulo_existe('Como deseja seguir?') #tt
            elsif opcao_msg == "avisam quando indenizacao esta disponivel"
            Comum.new.texto_existe('Quando sua indenização (que também pode ser voucher e troca) está disponível, nossa equipe mandará um e-mail com aviso.')
        elsif opcao_msg == "Vagas Zurich"
            Comum.new.texto_existe('Você poderá ter mais informações sobre carreiras na Zurich através deste link para o nosso canal,')
            Comum.new.texto_existe('que traz uma área exclusiva para aqueles que possuem interesse para trabalhar conosco.')
            Comum.new.texto_existe('Você também pode se tornar um corretor Zurich e realizar o cadastro em  nosso portal.')
        elsif opcao_msg == "NF meu produto"
            Comum.new.texto_existe('A nota fiscal do seu produto indenizado deve vir juntamente com o produto no momento em que foi feita a indenização.')
            Comum.new.texto_existe('Caso você não tenha recebido o documento, volte ao parceiro e certifique-se de que ele te dê a nota fiscal.')
        elsif opcao_msg == "Confirmar seguro cancelado"
            Comum.new.texto_existe('Você pode utilizar o nosso chat para confirmar se sua apólice de automóvel ou de garantia estendida, danos, roubo e furto foi cancelada.')
            Comum.new.texto_existe('Caso tenha interesse em outro produto poderá falar com o nosso atendente que trará todas as informações.')
        elsif opcao_msg == "saber quantos dias devolvem meu aparelho"
            Comum.new.texto_existe('Se o seu celular sofreu um dano ou um acidente a assistência técnica, que realizará o conserto, terá até 5 dias úteis para devolver seu celular.')
            Comum.new.texto_existe('Caso o seu celular tenha sido roubado ou furtado, o novo produto poderá ser retirado até no mesmo dia, assim que aprovado o processo.')
        elsif opcao_msg == "Como sei status do meu sinistro"
            Comum.new.titulo_existe('Para seguir, por favor, informe qual seguro possui.') #tt
        elsif opcao_msg == "Como sei status do meu sinistro - Outro"
            Comum.new.texto_existe('Você poderá ter mais informações sobre o seu seguro acionado na área exclusiva para clientes, clicando aqui, ou você poderá entrar em contato diretamente com a nossa central.')
        elsif opcao_msg == "eu serei guinchado"
            Comum.new.texto_existe('Se o carro ficar sem bateria, o procedimento dependerá da sua cobertura estabelecida com a Zurich.')
            Comum.new.texto_existe('Você pode conferir se possui ou não a cobertura em nosso chatbot.')
            Comum.new.texto_existe('Quando o seu seguro possui todas as coberturas,  analisaremos qual o parceiro mais próximo para ajudar!')
            Comum.new.texto_existe('Ou seja, ou mandaremos algum profissional para fazer a troca no local ou então disponibilizaremos um guincho.')
            Comum.new.titulo_existe('Como deseja seguir?') #tt
        elsif opcao_msg == "Quero falar com o SAC"
                Comum.new.texto_existe('O SAC tem como objetivo oferecer  atendimento de qualidade ao consumidor para o esclarecimento de dúvidas, reclamações e solicitação de serviços.')
                Comum.new.texto_existe('Ele é o último passo dentro do processo de atendimento Zurich.')
        elsif opcao_msg == "Como contrato um seguro"
            Comum.new.texto_existe('Para realizar uma cotação, solicite apoio para um corretor.')
            Comum.new.texto_existe('Caso não tenha a indicação de um profissional de confiança, acesse o nosso site clicando aqui e encontre um profissional mais próximo de você.')
        elsif opcao_msg == "0800 atende celular"
            Comum.new.texto_existe('Sim! Você pode ligar de qualquer aparelho para o nosso 0800.')
        elsif opcao_msg == "saber andamento reembolso do seguro"
            Comum.new.titulo_existe('Para apresentar orientações, por favor, preciso saber qual é o seu seguro? Por favor, escolha uma das opções apresentadas.') #tt
        elsif opcao_msg == "Nao tenho NF do aparelho"
            Comum.new.texto_existe('Caso você não encontre a nota fiscal do seu produto recomendamos que entre em contato com o vendedor e solicite ao mesmo.')
            Comum.new.texto_existe('Eles possuem acesso a essas informações e com certeza poderão te fornecer uma nova via do documento.')
        elsif opcao_msg == "fazer apos codigo de postagem"
            Comum.new.texto_existe('Depois de receber o código de postagem, você deve procurar uma agência do correio mais próxima de você!')
        elsif opcao_msg == "Oq e codigo postagem"
            Comum.new.texto_existe('O código de postagem é um serviço que a Zurich oferece gratuitamente para que você possa enviar o produto segurado para assistência sem custo adicional.')
            Comum.new.texto_existe('O código já vem com todas as informações de endereços para entrega e remetente.')
        elsif opcao_msg == "Oq fazer apos receber codigo"
            Comum.new.texto_existe('Antes de embrulhar, certifique-se que de que você está preparando apenas o produto para a postagem.')
            Comum.new.texto_existe('É imprescindível que os acessórios (controle, fones de ouvido, cartão SIM, capinhas, fios, entre outros) não sejam enviados junto ao produto.')
            Comum.new.texto_existe('Após separar o artigo, coloque-o em uma caixa de papelão (que não seja o próprio produto)')
            Comum.new.texto_existe('e adicione uma cópia da primeira página do bilhete do seguro, uma cópia do comprovante de endereço e uma cópia da nota fiscal (lembre-se de escrever em todas as folhas o número de sua solicitação/sinistro).')
            Comum.new.texto_existe('Embale a caixa em papel pardo e o leve para o correio junto com Nota Fiscal do produto.')
        elsif opcao_msg == "postar e acompanhar"
            Comum.new.texto_existe('Apresente nos correios uma cópia da nota fiscal, para declaração de conteúdo, que será colocado em um envelope plástico do lado externo da caixa.')
            Comum.new.texto_existe('Além disso, leve o número de coleta/autorização de postagem, para que o correio saiba as informações de envio do produto.')
            Comum.new.texto_existe('A agência do correio fornecerá um número chamado "código de rastreio ou número do objeto", que possibilitará o acompanhamento da trajetória do seu produto até a chegada na assistência.')
            Comum.new.texto_existe('Para isso, basta acessar o site: http://www.correios.com.br e digitar o número do objeto no campo "rastreamento de objetos". ')
        elsif opcao_msg == "Quando levar celular danificado"
            Comum.new.titulo_existe('Você já acionou um seguro com a Zurich?') #tt
        elsif opcao_msg == "Quando levar celular danificado - Sim"
            Comum.new.texto_existe('Por ser uma informação exclusiva do seu seguro acionado, você poderá ter mais informações acessando o portal do segurado, clique aqui para ser redirecionado.')
        else
            raise "Opção de mensagem não existe."
        end
    end

    def clica_opcao(opcao)
        assert_selector(EL['opcao_autocomplete'], visible: true, text: opcao, maximum: 1)
        find(EL['opcao_autocomplete'], text: opcao).click
    end
end