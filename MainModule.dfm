object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'neptune'
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
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
