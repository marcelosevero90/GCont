object FUsuarioProfile: TFUsuarioProfile
  Left = 0
  Top = 0
  ClientHeight = 466
  ClientWidth = 569
  Caption = 'Usu'#225'rio - Profile - Minha Conta'
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object gbInfoConta: TUniGroupBox
    Left = 24
    Top = 24
    Width = 521
    Height = 361
    Hint = ''
    Caption = 'Informa'#231#245'es da Conta'
    TabOrder = 0
    object UniLabel1: TUniLabel
      Left = 34
      Top = 66
      Width = 76
      Height = 13
      Hint = ''
      Caption = 'C'#243'digo Usu'#225'rio:'
      TabOrder = 1
    end
    object UniDBEdit1: TUniDBEdit
      Left = 116
      Top = 64
      Width = 189
      Height = 22
      Hint = ''
      DataField = 'codUsuario'
      DataSource = dsUsuario
      TabOrder = 2
      TabStop = False
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 40
      Top = 93
      Width = 70
      Height = 13
      Hint = ''
      Caption = 'Nome Usu'#225'rio:'
      TabOrder = 3
    end
    object UniDBEdit2: TUniDBEdit
      Left = 116
      Top = 92
      Width = 373
      Height = 22
      Hint = ''
      DataField = 'nomeUsuario'
      DataSource = dsUsuario
      TabOrder = 4
    end
    object rgTipoUsuario: TUniRadioGroup
      Left = 116
      Top = 184
      Width = 185
      Height = 73
      Hint = ''
      Enabled = False
      Items.Strings = (
        'Normal'
        'Administrador')
      ItemIndex = 0
      Caption = 'Tipo do Usu'#225'rio'
      TabOrder = 5
    end
    object btAltSenha: TUniBitBtn
      Left = 116
      Top = 288
      Width = 141
      Height = 33
      Hint = ''
      Caption = 'Alterar Senha'
      ParentFont = False
      Font.Color = clNavy
      TabOrder = 6
      OnClick = btAltSenhaClick
    end
    object UniLabel3: TUniLabel
      Left = 78
      Top = 124
      Width = 32
      Height = 13
      Hint = ''
      Caption = 'E-Mail:'
      TabOrder = 7
    end
    object UniDBEdit3: TUniDBEdit
      Left = 116
      Top = 120
      Width = 373
      Height = 22
      Hint = ''
      DataField = 'email'
      DataSource = dsUsuario
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 64
      Top = 150
      Width = 46
      Height = 13
      Hint = ''
      Caption = 'Telefone:'
      TabOrder = 9
    end
    object UniDBEdit4: TUniDBEdit
      Left = 116
      Top = 148
      Width = 373
      Height = 22
      Hint = ''
      DataField = 'telefone'
      DataSource = dsUsuario
      TabOrder = 10
    end
    object lbAltSenha: TUniLabel
      Left = 116
      Top = 269
      Width = 77
      Height = 13
      Hint = ''
      Visible = False
      Caption = 'Senha alterada!'
      ParentFont = False
      Font.Color = clNavy
      Font.Style = [fsUnderline]
      TabOrder = 11
    end
  end
  object UniPanel1: TUniPanel
    Left = 0
    Top = 419
    Width = 569
    Height = 47
    Hint = ''
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 1
    Caption = ''
    object btConf: TUniBitBtn
      Left = 16
      Top = 6
      Width = 113
      Height = 30
      Hint = ''
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFF5F5F5DADADACCCCCCCCCCCCCCCCCCCCCCCCDADADAF5F5F5FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDA3C0B3369D6E008C4B00
        8B4A008B4A008C4B369D6EA3C0B3E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E1E1E144A27700905001A16901AB7601AC7901AC7901AB7601A16900905055A8
        82E1E1E1FFFFFFFFFFFFFFFFFFF5F5F555A88200915202AC7700C38C00D79B00
        DA9C00DA9C00D79C01C38C01AB7600925355A882F5F5F5FFFFFFFFFFFFAECABE
        0090510FB48300D29800D59800D19200CF9000D09100D39600D69B00D19801AB
        76009050AECBBEFFFFFFFFFFFF369D6C16AB7810C99600D39700CD8CFFFFFFFF
        FFFFFFFFFF00CC8C00D19500D59B01C18C01A169369E6EFFFFFFFFFFFF008A48
        39C49D00D19800CB8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00CA8C00CF9600D2
        9B01AB76008C4BFFFFFFFFFFFF00894652D2B000CC92FFFFFFFFFFFFFFFFFF00
        C484FFFFFFFFFFFFFFFFFF00C88D00D09A00AD79008B4AFFFFFFFFFFFF008845
        68DDBE00C991FFFFFFFFFFFF00C68C00C89100C58BFFFFFFFFFFFFFFFFFF00CC
        9600AD78008B4AFFFFFFFFFFFF00884676E0C600CB9800C59000C69100C89500
        C99700C89400C38CFFFFFFFFFFFF00C79200AB75008C4BFFFFFFFFFFFF41A675
        59C9A449DEBC00C79400C89700C99800C99900C99800C79400C38EFFFFFF00BD
        8A00A06740A878FFFFFFFFFFFFCCE8DB0A9458ADF8E918D0A700C49500C69700
        C69800C79800C79800C69700C59612B585008F50CCE8DBFFFFFFFFFFFFFFFFFF
        55B185199C63BCFFF75EE4C900C59A00C39600C49700C59A22CAA22FC1960293
        556ABC96FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6ABB940E965974D5B6A0F4E194
        EFDC7CE6CC5ED6B52EB58703915255B288FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCCE8DB44A87700874400874300874400894644AA7ACCE8DBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'CONFIRMAR'
      TabOrder = 1
      OnClick = btConfClick
    end
    object btCancel: TUniBitBtn
      Left = 135
      Top = 6
      Width = 114
      Height = 30
      Hint = ''
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFEDEDEDCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCEDEDEDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDED9499C82C3CC02B3BBE2B3ABE2B
        3ABE2B3ABE2B3BBE2C3CC09499C8EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFEDEDED
        969BC92F3EC35F71F9697DFF697CFF697CFF697CFF697DFF5F71F92F3EC3969B
        C9EDEDEDFFFFFFFFFFFFEDEDED969BC92F3EC2586BF65F74FF5D72FE5E72FD5E
        73FD5E72FD5D72FE5F74FF586BF62F3EC2969BC9EDEDEDFFFFFF9499C8303FC2
        5568F3586CFC4E64F94D63F85468F9576BF95468F94D63F84E64F9586CFC5568
        F3303FC29499C8FFFFFF2D3DC05367F2556BFA4960F7FFFFFFFFFFFF3E56F647
        5EF63E56F6FFFFFFFFFFFF4960F7556BFA5166F22D3DC0FFFFFF2B3BBF6276FC
        4D64F64259F4FFFFFFFFFFFFFFFFFF2C46F3FFFFFFFFFFFFFFFFFF4259F44E64
        F65F75FC2C3BBFFFFFFF2A3ABF7386FA495FF3435AF36E80F6FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF6E80F6435AF3495FF36E81FA2B3ABFFFFFFF2939BF8696FB
        425AF14259F1354EF05B70F2FFFFFFFFFFFFFFFFFF5B70F2354EF04259F1435B
        F17D90F92A39BFFFFFFF2737BF9AA8FB3A55EF3953EE2844EDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF2844ED3953EE3B55EF8E9DFA2838BFFFFFFF2637BF9FABF1
        314CED2B47EBFFFFFFFFFFFFFFFFFF5369EFFFFFFFFFFFFFFFFFFF2C47EB314C
        ED9FABF12737BFFFFFFF2838C19FABF18091F4213EE8FFFFFFFFFFFF5D72EE23
        40E85D72EEFFFFFFFFFFFF213EE88091F49FABF12838C1FFFFFFB4BAE92E3EC3
        97A5EF778AF25B71EE6074EE2643E62C48E72643E66074EE5B71EE778AF297A5
        EF2E3EC3B4BAE9FFFFFFFFFFFFB6BCEA2E3EC295A2EE7688F01E3BE42340E525
        41E52340E51E3BE47688F095A2EE2E3EC2B6BCEAFFFFFFFFFFFFFFFFFFFFFFFF
        B6BCEA2F3DC394A0EFADB9F8ADB8F7ADB9F7ADB8F7ADB9F894A0EF2F3DC3B6BC
        EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B9E9303FC44555CE4454CD43
        54CD4454CD4555CE303FC4B4B9E9FFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'CANCELAR'
      TabOrder = 2
      OnClick = btCancelClick
    end
  end
  object gbNovaSenha: TUniGroupBox
    Left = 204
    Top = 48
    Width = 479
    Height = 289
    Hint = ''
    Visible = False
    Caption = 'Nova Senha'
    TabOrder = 2
    object UniLabel5: TUniLabel
      Left = 24
      Top = 49
      Width = 62
      Height = 13
      Hint = ''
      Caption = 'Nova Senha:'
      TabOrder = 1
    end
    object edt_nova_senha: TUniEdit
      Left = 90
      Top = 44
      Width = 191
      Hint = ''
      PasswordChar = '*'
      Text = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -16
      Font.Name = 'Calibri'
      TabOrder = 2
      Color = clBtnFace
    end
    object edt_nova_senha_rep: TUniEdit
      Left = 90
      Top = 72
      Width = 191
      Hint = ''
      PasswordChar = '*'
      Text = ''
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -16
      Font.Name = 'Calibri'
      TabOrder = 3
      Color = clBtnFace
    end
    object btConfNovaSenha: TUniSpeedButton
      Left = 90
      Top = 100
      Width = 191
      Height = 49
      Hint = ''
      Caption = 'CONFIRMAR'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      ParentColor = False
      Color = 8404992
      TabOrder = 4
      OnClick = btConfNovaSenhaClick
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 90
      Top = 155
      Width = 191
      Height = 49
      Hint = ''
      Caption = 'CANCELAR'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      ParentColor = False
      Color = clGray
      TabOrder = 5
      OnClick = UniSpeedButton1Click
    end
  end
  object dsUsuario: TDataSource
    DataSet = MainForm.fdUsuario
    Left = 400
    Top = 8
  end
end
