class Comum
  include Capybara::DSL
  
  def opcao_existe(opcao)
    assert_selector(EL['label_option'], visible: true)
    qnt_opcoes = all(EL['label_option']).length
    cont = 0
    while cont < qnt_opcoes
      text = all(EL['label_option'], visible: true)[cont].text
      if text.include?(opcao)
        contem_texto = true
        break
      else
        cont +=1
        
      end
    end
    if contem_texto == true
    else
      raise "texto nao esta sendo apresentado"
    end
  end

  def selecionar_opcao(opcao)
    opcao_existe(opcao)
    find(EL['label_option'], text: opcao).click
  end

  def clicar_pesquisa(opcao)
    assert_selector(EL['btn_pesquisa'], visible: true, text: opcao)
    find(EL['btn_pesquisa'], text: opcao).click
  end

  def texto_existe(texto)
    assert_selector(EL['txt_whats'], visible: true, text: texto)
  end

  def titulo_existe(texto)
    assert_selector(EL['title_text'], visible: true, text: texto)
  end
  
  def preenche_campo(texto)
    assert_selector(EL['box_text'], visible: true)
    all(EL['box_text'])[0].set(texto)
  end

  def clica_enviar
    all(EL['btn_enviar'])[0].click
  end

  def clica_enviar_menu
    all(EL['btn_enviar_menu'])[0].click
  end

  def primeira_opcao
    all(EL['label_option'])[0].click
  end

  def segunda_opcao
    all(EL['label_option'])[1].click
  end

  def contem_texto(texto)
    sleep(10)
    qtd = ((all(EL['txt_whats']).length) -1)
    text = all(EL['txt_whats'])[qtd].text
      if text.include?(texto)
      else
        raise "texto nao esta sendo apresendado"
      end
  end

  def contem_texto_2(texto)
    sleep(10)
    qtd = ((all(EL['txt_whats']).length))[0]
    text = all(EL['txt_whats'])[qtd].text
      if text.include?(texto)
      else
        raise "texto nao esta sendo apresendado"
      end
  end

  def gera_info
    nome =  Faker::Name.name
    nome = nome.tr('ÂÁÉÍÓÚàáäâãèéëẽêìíïîĩòóöôõùúüûũñç', 'AAEIOUaaaaaeeeeeiiiiiooooouuuuunc')
    nome.gsub! '.','ars'
    cpf = Faker::IDNumber.brazilian_citizen_number(formatted: true)
    email = Faker::Internet.email
    Faker::Config.locale = 'pt-BR'
    celular = Faker::PhoneNumber.cell_phone
    cep = '01301-000'
    return nome, email, cpf, celular, cep
  end

  def foco_browser
    sleep(2)
    result = page.driver.browser.window_handles.last
    page.driver.browser.switch_to.window(result)
  end
    
  def texto_pergunta(texto)
    assert_selector(EL['title_pergunta'], visible: true, text: texto)
  end

  def clica_enviar_questionario
    all(EL['btn_quest'])[0].click
  end
    
  def pergunta_random(opcao)
    if has_selector?(EL['txt_whats'], visible:true, wait:5, text: 'Qual a sua data de nascimento?') == true
      Comum.new.preenche_campo(MASSA[opcao]['data_nascimento'])
    elsif has_selector?(EL['txt_whats'], visible:true, wait:5, text: 'Qual a placa do carro?') == true
      Comum.new.preenche_campo(MASSA[opcao]['placa'])
    elsif has_selector?(EL['txt_whats'], visible:true, wait:5, text: 'Qual é o seu nome completo?') == true
      Comum.new.preenche_campo(MASSA[opcao]['nome'])
    else
    end
  end

  def screenshot(nome) 
    sleep(1)
    nome.gsub! '/','_'
    save_screenshot("data/reports/screenshots/evidencias/#{nome}}.png")
  end

  def screen_recorder(cenario)
    advanced = {
      input:    {
        framerate:  30,
      #  pix_fmt: 'yuv420p',
        video_size: '1366x768'
      },
      output:   {
        r:       15 # Framerate
      #  pix_fmt: 'yuv420p'
      },
      log:      'recorder.log',
      loglevel: 'level+debug', # For FFmpeg
    },
    ScreenRecorder::Desktop.new(output: 'teste.mp4', advanced: advanced)
  end

  ################ WHATS ###############

  def preenche_campo_whats(texto)
    assert_selector(EL['txt_whats1'], visible: true)
    all(EL['txt_whats1'])[0].set(texto)
  end

  def texto_existe_whats(texto)
    assert_selector(EL['conversa_whats'], visible: true, text: texto)
  end
    
  def clica_enviar_whats
    all(EL['btn_enviar1'])[0].click
  end

  def limpar_chat
    all(EL['menu_whats'])[5].click
    assert_selector(EL['limpar_chat'], visible: true)
    all(EL['limpar_chat'])[0].click
    assert_selector(EL['btn_clear'], visible: true)
    all(EL['btn_clear'])[0].click
    sleep(2)
  end

  def login_whats(numero_whats)
    visit('https://web.whatsapp.com/')
    local = JSON.parse(LOCAL['local_storage'])
    cont = 0 
    qnt = local.length
    sleep(2)
    while cont < qnt
        execute_script("return localStorage.setItem(\'#{local[cont].keys[0]}\', \'#{local[cont].values[0]}\')")
        cont +=1
    end
    sleep(0.5)
    visit("https://web.whatsapp.com/send?phone=#{numero_whats}&text&source&data")
    sleep(3)
  end
end
    