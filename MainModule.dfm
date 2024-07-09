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
      '>Reiniciar Aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar Aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar Aplica'#231#227'o</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o Inv'#225'lida ou Timeout.'
  ServerMessages.TerminateMessage = 'Sess'#227'o Web Terminada.'
  Height = 371
  Width = 449
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
  object fdTitulosAReceber: TFDQuery
    Connection = conexaoDB
    SQL.Strings = (
      'select * from gcTitulosAReceber')
    Left = 72
    Top = 123
    object fdTitulosARecebercodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosARecebercodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosARecebercodTituloAReceber: TIntegerField
      FieldName = 'codTituloAReceber'
      Origin = 'codTituloAReceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAReceberdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object fdTitulosARecebercodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
      Required = True
    end
    object fdTitulosARecebercodFormaPagto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codFormaPagto'
      Origin = 'codFormaPagto'
    end
    object fdTitulosARecebersituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object fdTitulosAReceberdtVencimento: TDateField
      FieldName = 'dtVencimento'
      Origin = 'dtVencimento'
      Required = True
    end
    object fdTitulosAReceberdtEmissao: TDateField
      FieldName = 'dtEmissao'
      Origin = 'dtEmissao'
      Required = True
    end
    object fdTitulosAReceberdtTransacao: TDateField
      FieldName = 'dtTransacao'
      Origin = 'dtTransacao'
      Required = True
    end
    object fdTitulosARecebercodUsuarImplant: TStringField
      FieldName = 'codUsuarImplant'
      Origin = 'codUsuarImplant'
      Required = True
    end
    object fdTitulosAReceberobservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 500
    end
    object fdTitulosARecebervalorOriginal: TBCDField
      FieldName = 'valorOriginal'
      Origin = 'valorOriginal'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosARecebervalorTituloReceber: TBCDField
      FieldName = 'valorTituloReceber'
      Origin = 'valorTituloReceber'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosARecebervalorDesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorDesconto'
      Origin = 'valorDesconto'
      Precision = 15
      Size = 2
    end
    object fdTitulosARecebervalorJuros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorJuros'
      Origin = 'valorJuros'
      Precision = 15
      Size = 2
    end
    object fdTitulosARecebervalorMulta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorMulta'
      Origin = 'valorMulta'
      Precision = 15
      Size = 2
    end
    object fdTitulosARecebercodPortador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codPortador'
      Origin = 'codPortador'
    end
    object fdTitulosAReceberdoctoReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doctoReferencia'
      Origin = 'doctoReferencia'
      Size = 100
    end
    object fdTitulosAReceberindOrigem: TIntegerField
      FieldName = 'indOrigem'
      Origin = 'indOrigem'
      Required = True
    end
    object fdTitulosARecebercodOrdemServico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codOrdemServico'
      Origin = 'codOrdemServico'
    end
    object fdTitulosARecebercodUsuarLiquid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUsuarLiquid'
      Origin = 'codUsuarLiquid'
    end
    object fdTitulosAReceberdtCancelamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtCancelamento'
      Origin = 'dtCancelamento'
    end
    object fdTitulosAReceberdtLiquidacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtLiquidacao'
      Origin = 'dtLiquidacao'
    end
    object fdTitulosARecebercodUsuarCancela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUsuarCancela'
      Origin = 'codUsuarCancela'
    end
    object fdTitulosAReceberparcela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parcela'
      Origin = 'parcela'
    end
    object fdTitulosAReceberpercMultaAtraso: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percMultaAtraso'
      Origin = 'percMultaAtraso'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberpercJuroDia: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percJuroDia'
      Origin = 'percJuroDia'
      Precision = 15
      Size = 2
    end
    object fdTitulosAReceberpercDesctoAntecip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percDesctoAntecip'
      Origin = 'percDesctoAntecip'
      Precision = 15
      Size = 2
    end
  end
  object fdPortador: TFDQuery
    Connection = conexaoDB
    SQL.Strings = (
      'select * from gcPortador')
    Left = 151
    Top = 124
    object fdPortadorcodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadorcodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadorcodPortador: TIntegerField
      FieldName = 'codPortador'
      Origin = 'codPortador'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdPortadornomePortador: TStringField
      FieldName = 'nomePortador'
      Origin = 'nomePortador'
      Required = True
      Size = 50
    end
    object fdPortadorcodBanco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codBanco'
      Origin = 'codBanco'
    end
    object fdPortadoragencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object fdPortadorcontaCorrente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contaCorrente'
      Origin = 'contaCorrente'
    end
    object fdPortadortipoPortador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tipoPortador'
      Origin = 'tipoPortador'
    end
    object fdPortadorvlSaldoInicial: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlSaldoInicial'
      Origin = 'vlSaldoInicial'
      Precision = 15
      Size = 2
    end
    object fdPortadorvlSaldoAtual: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'vlSaldoAtual'
      Origin = 'vlSaldoAtual'
      Precision = 15
      Size = 2
    end
    object fdPortadorpercMultaAtraso: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percMultaAtraso'
      Origin = 'percMultaAtraso'
      Precision = 15
      Size = 2
    end
    object fdPortadorpercJuroDia: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percJuroDia'
      Origin = 'percJuroDia'
      Precision = 15
      Size = 2
    end
    object fdPortadorpercDesctoAntecip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percDesctoAntecip'
      Origin = 'percDesctoAntecip'
      Precision = 15
      Size = 2
    end
  end
  object fdTitulosMovtoAReceber: TFDQuery
    Connection = conexaoDB
    SQL.Strings = (
      'select * from gcTitulosMovtoAReceber')
    Left = 72
    Top = 176
    object fdTitulosMovtoARecebercodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebercodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebercodTituloAReceber: TIntegerField
      FieldName = 'codTituloAReceber'
      Origin = 'codTituloAReceber'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebersequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoARecebertipoMovto: TIntegerField
      FieldName = 'tipoMovto'
      Origin = 'tipoMovto'
      Required = True
    end
    object fdTitulosMovtoAReceberdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 200
    end
    object fdTitulosMovtoAReceberdtMovto: TDateField
      FieldName = 'dtMovto'
      Origin = 'dtMovto'
      Required = True
    end
    object fdTitulosMovtoARecebercodUsuarMovto: TStringField
      FieldName = 'codUsuarMovto'
      Origin = 'codUsuarMovto'
      Required = True
    end
    object fdTitulosMovtoARecebervalorMovto: TBCDField
      FieldName = 'valorMovto'
      Origin = 'valorMovto'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosMovtoAReceberdescHistorico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descHistorico'
      Origin = 'descHistorico'
      Size = 500
    end
  end
  object fdTitulosMovtoAPagar: TFDQuery
    Connection = conexaoDB
    SQL.Strings = (
      'select * from gcTitulosMovtoAPagar')
    Left = 257
    Top = 179
    object fdTitulosMovtoAPagarcodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoAPagarcodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoAPagarsequencia: TIntegerField
      FieldName = 'sequencia'
      Origin = 'sequencia'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosMovtoAPagartipoMovto: TIntegerField
      FieldName = 'tipoMovto'
      Origin = 'tipoMovto'
      Required = True
    end
    object fdTitulosMovtoAPagardescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 200
    end
    object fdTitulosMovtoAPagardtMovto: TDateField
      FieldName = 'dtMovto'
      Origin = 'dtMovto'
      Required = True
    end
    object fdTitulosMovtoAPagarcodUsuarMovto: TStringField
      FieldName = 'codUsuarMovto'
      Origin = 'codUsuarMovto'
      Required = True
    end
    object fdTitulosMovtoAPagarvalorMovto: TBCDField
      FieldName = 'valorMovto'
      Origin = 'valorMovto'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosMovtoAPagardescHistorico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descHistorico'
      Origin = 'descHistorico'
      Size = 500
    end
    object fdTitulosMovtoAPagarcodTituloAPagar: TIntegerField
      FieldName = 'codTituloAPagar'
      Origin = 'codTituloAPagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object fdTitulosAPagar: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'idxOrdCodAsc'
        Fields = 'codTituloAPagar'
      end>
    IndexName = 'idxOrdCodAsc'
    Connection = conexaoDB
    SQL.Strings = (
      'select * from gcTitulosAPagar')
    Left = 257
    Top = 104
    object fdTitulosAPagarFC_IMG_EDIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_EDIT'
      Size = 50
    end
    object fdTitulosAPagarFC_IMG_VIS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_VIS'
      Size = 50
    end
    object fdTitulosAPagarFC_IMG_DEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_DEL'
      Size = 50
    end
    object fdTitulosAPagarFC_NOME_EMIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_NOME_EMIT'
      Size = 100
    end
    object fdTitulosAPagarFC_NOME_PORTADOR: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_NOME_PORTADOR'
      Size = 100
    end
    object fdTitulosAPagarFC_FORMA_PAGTO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_FORMA_PAGTO'
      Size = 100
    end
    object fdTitulosAPagarFC_DSC_SIT: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_DSC_SIT'
      Size = 30
    end
    object fdTitulosAPagarFC_IMG_CANCEL: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_CANCEL'
      Size = 100
    end
    object fdTitulosAPagarFC_IMG_ESTORNO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'FC_IMG_ESTORNO'
      Size = 100
    end
    object fdTitulosAPagarcodEmpresa: TIntegerField
      FieldName = 'codEmpresa'
      Origin = 'codEmpresa'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAPagarcodEstabel: TIntegerField
      FieldName = 'codEstabel'
      Origin = 'codEstabel'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAPagarcodTituloAPagar: TIntegerField
      FieldName = 'codTituloAPagar'
      Origin = 'codTituloAPagar'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdTitulosAPagardescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 100
    end
    object fdTitulosAPagarcodEmitente: TIntegerField
      FieldName = 'codEmitente'
      Origin = 'codEmitente'
      Required = True
    end
    object fdTitulosAPagarcodFormaPagto: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codFormaPagto'
      Origin = 'codFormaPagto'
    end
    object fdTitulosAPagarsituacao: TIntegerField
      FieldName = 'situacao'
      Origin = 'situacao'
      Required = True
    end
    object fdTitulosAPagardtVencimento: TDateField
      FieldName = 'dtVencimento'
      Origin = 'dtVencimento'
      Required = True
    end
    object fdTitulosAPagardtEmissao: TDateField
      FieldName = 'dtEmissao'
      Origin = 'dtEmissao'
      Required = True
    end
    object fdTitulosAPagardtTransacao: TDateField
      FieldName = 'dtTransacao'
      Origin = 'dtTransacao'
      Required = True
    end
    object fdTitulosAPagarcodUsuarImplant: TStringField
      FieldName = 'codUsuarImplant'
      Origin = 'codUsuarImplant'
      Required = True
    end
    object fdTitulosAPagarobservacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      Size = 500
    end
    object fdTitulosAPagarvalorOriginal: TBCDField
      FieldName = 'valorOriginal'
      Origin = 'valorOriginal'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarvalorTituloPagar: TBCDField
      FieldName = 'valorTituloPagar'
      Origin = 'valorTituloPagar'
      Required = True
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarvalorDesconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorDesconto'
      Origin = 'valorDesconto'
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarvalorJuros: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorJuros'
      Origin = 'valorJuros'
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarvalorMulta: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valorMulta'
      Origin = 'valorMulta'
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarcodPortador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codPortador'
      Origin = 'codPortador'
    end
    object fdTitulosAPagardoctoReferencia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'doctoReferencia'
      Origin = 'doctoReferencia'
      Size = 100
    end
    object fdTitulosAPagarindOrigem: TIntegerField
      FieldName = 'indOrigem'
      Origin = 'indOrigem'
      Required = True
    end
    object fdTitulosAPagarcodUsuarLiquid: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUsuarLiquid'
      Origin = 'codUsuarLiquid'
    end
    object fdTitulosAPagardtCancelamento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtCancelamento'
      Origin = 'dtCancelamento'
    end
    object fdTitulosAPagardtLiquidacao: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'dtLiquidacao'
      Origin = 'dtLiquidacao'
    end
    object fdTitulosAPagarcodUsuarCancela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codUsuarCancela'
      Origin = 'codUsuarCancela'
    end
    object fdTitulosAPagarparcela: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'parcela'
      Origin = 'parcela'
    end
    object fdTitulosAPagarpercMultaAtraso: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percMultaAtraso'
      Origin = 'percMultaAtraso'
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarpercJuroDia: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percJuroDia'
      Origin = 'percJuroDia'
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarpercDesctoAntecip: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'percDesctoAntecip'
      Origin = 'percDesctoAntecip'
      Precision = 15
      Size = 2
    end
    object fdTitulosAPagarmotivoCancela: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'motivoCancela'
      Origin = 'motivoCancela'
      Size = 500
    end
    object fdTitulosAPagarcodBanco: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codBanco'
      Origin = 'codBanco'
    end
    object fdTitulosAPagaragencia: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'agencia'
      Origin = 'agencia'
    end
    object fdTitulosAPagarcontaCorrente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contaCorrente'
      Origin = 'contaCorrente'
      Size = 15
    end
    object fdTitulosAPagarcodOrdemManutencao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codOrdemManutencao'
      Origin = 'codOrdemManutencao'
    end
  end
end
