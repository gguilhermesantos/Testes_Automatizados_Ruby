class Header

  def cria_header
    header = "
    {
      'Content-Type': 'application/json',
      'Authorization': 'ZDIwNTQ4N2UtMDdiNS0zZmY3LTllMTkt'
    }
    "
    eval(header)
  end
end
