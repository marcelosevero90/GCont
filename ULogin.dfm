object FLogin: TFLogin
  Left = 0
  Top = 0
  ClientHeight = 508
  ClientWidth = 623
  Caption = 'FLogin'
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  ActiveControl = edt_login
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 128
    Top = 56
    Width = 345
    Height = 369
    Hint = ''
    TabOrder = 0
    Caption = ''
    Color = clWhite
    object edt_login: TUniEdit
      Left = 80
      Top = 167
      Width = 193
      Height = 25
      Hint = ''
      CharCase = ecUpperCase
      Text = 'ADMIN'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -16
      Font.Name = 'Calibri'
      TabOrder = 1
      Color = clBtnFace
    end
    object edt_senha: TUniEdit
      Left = 79
      Top = 207
      Width = 193
      Height = 25
      Hint = ''
      PasswordChar = '*'
      Text = '123'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Height = -16
      Font.Name = 'Calibri'
      TabOrder = 2
      Color = clBtnFace
    end
    object UniLabel1: TUniLabel
      Left = 29
      Top = 170
      Width = 45
      Height = 19
      Hint = ''
      Caption = 'Login:'
      ParentFont = False
      Font.Height = -16
      TabOrder = 3
    end
    object UniLabel2: TUniLabel
      Left = 24
      Top = 210
      Width = 49
      Height = 19
      Hint = ''
      Caption = 'Senha:'
      ParentFont = False
      Font.Height = -16
      TabOrder = 4
    end
    object img_empresa: TUniImage
      Left = 16
      Top = 10
      Width = 313
      Height = 113
      Hint = ''
      Stretch = True
    end
    object bt_acessar: TUniSpeedButton
      Left = 80
      Top = 249
      Width = 193
      Height = 49
      Hint = ''
      Caption = 'Acessar'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -24
      ParentColor = False
      Color = 8404992
      ScreenMask.Enabled = True
      ScreenMask.Message = 'Acessando... Aguarde!'
      TabOrder = 6
      OnClick = bt_acessarClick
    end
    object UniLabel3: TUniLabel
      Left = 112
      Top = 129
      Width = 113
      Height = 19
      Hint = ''
      Caption = 'Seja Bem-Vindo'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      TabOrder = 7
    end
    object gb_alt_senha: TUniGroupBox
      Left = 61
      Top = 4
      Width = 313
      Height = 144
      Hint = ''
      Visible = False
      Caption = 'Nova Senha no Primeiro Acesso'
      TabOrder = 8
      object edt_nova_senha: TUniEdit
        Left = 74
        Top = 20
        Width = 191
        Hint = ''
        PasswordChar = '*'
        Text = ''
        ParentFont = False
        Font.Charset = ANSI_CHARSET
        Font.Height = -16
        Font.Name = 'Calibri'
        TabOrder = 1
        Color = clBtnFace
      end
      object edt_nova_senha_rep: TUniEdit
        Left = 74
        Top = 48
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
      object UniLabel4: TUniLabel
        Left = 8
        Top = 25
        Width = 62
        Height = 13
        Hint = ''
        Caption = 'Nova Senha:'
        TabOrder = 3
      end
      object btConfNovaSenha: TUniSpeedButton
        Left = 74
        Top = 76
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
        ScreenMask.Enabled = True
        ScreenMask.Message = 'Acessando... Aguarde!'
        TabOrder = 4
        OnClick = btConfNovaSenhaClick
      end
    end
  end
  object UniLabel5: TUniLabel
    Left = 224
    Top = 442
    Width = 151
    Height = 13
    Hint = ''
    Caption = 'Desenvolvido por FMS Sistemas'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    TabOrder = 1
  end
  object UniLabel6: TUniLabel
    Left = 177
    Top = 461
    Width = 248
    Height = 13
    Hint = ''
    Caption = 'Distribuido por GCont Gest'#227'o Cont'#225'bil e Empresarial'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    TabOrder = 2
  end
  object fdAux: TFDQuery
    Connection = UniMainModule.conexaoDB
    Left = 504
    Top = 168
  end
end
