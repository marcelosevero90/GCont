object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  ServerMessages.UnavailableErrMsg = 'Erro de Comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">Ocorreu uma Excess'#227'o ' +
      'na Aplica'#231#227'o:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Aplica'#231#227'o Reiniciada</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Aplica'#231#227'o Reiniciada</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Aplica'#231#227'o Reiniciada</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o Inv'#225'lida ou Timeout.'
  ServerMessages.TerminateMessage = 'Sess'#227'o Web Terminada.'
  Height = 150
  Width = 215
  object conexaoDB: TFDConnection
    ConnectionName = 'sql10573275'
    Params.Strings = (
      'DriverID=MySQL'
      'Server=sql10.freemysqlhosting.net'
      'User_Name=sql10573275'
      'Password=NImipu9AU2'
      'Database=sql10573275')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 48
  end
end
