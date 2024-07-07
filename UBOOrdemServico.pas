unit UBOOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon, DateUtils, System.Math ;

  function fBOOrdemServico_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
  function fBOOrdemServico_CancelaOS(dsRegistros : TDataSet; sParam : string ) : string;
  function fBOOrdemServico_CalcVlTotal(iCodOS : integer) : Real;
  function fBOOrdemServico_CalcParcelasDuplc(dsRegistros : TDataSet; sParam : string; var mtDuplic : TFDMemTable) : string;
  function fBOOrdemServico_EfetivarOS(dsRegistros : TDataSet; sParam : string; mtDuplic : TFDMemTable) : string;

implementation

uses Main, MainModule;

function fBOOrdemServico_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
var
  fqFKTab : TFDQuery;
begin
  Result := '';
  try

    fqFKTab := TFDQuery.Create(nil);
    fqFKTab.Connection := UniMainModule.conexaoDB;
    fqFKTab.Close;

    try

      if dsRegistros.IsEmpty then begin
        Result := Result + 'N�o foram encontrados registros para manuten��o! |';
        Exit;
      end;

      if sAcao = 'EFETIVAR' then begin

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codPortador from gcPortador ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codPortador   = ' + IntToStr(dsRegistros.FieldByName('codPortador').AsInteger)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Portador deve ser informado para Efetiva��o da OS! |';
        end;

      end
      else
      if sAcao = 'DELETE' then begin

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codOrdemServico, codItem from gcOrdemServItem ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codOrdemServico   = ' + IntToStr(dsRegistros.FieldByName('codOrdemServico').AsInteger)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
          Result := Result + 'Existem itens cadastrados para a OS, n�o pode ser eliminada! |';
        end;



      end
      else begin

        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codOrdemServico').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codOrdemServico').IsNull)         then begin
            Result := Result + 'N�mero da Ordem de Servi�o deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codOrdemServico from gcOrdemServico ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codOrdemServico   = ' + IntToStr(dsRegistros.FieldByName('codOrdemServico').AsInteger)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'C�digo ' + dsRegistros.FieldByName('codOrdemServico').AsString + ' j� est� cadastrado! |';
          end;
        end;
        if (dsRegistros.FieldByName('descricao').AsString = '' ) or
           (dsRegistros.FieldByName('descricao').IsNull)         then begin
          Result := Result + 'Descri��o deve ser informado! |';
        end;

        if (dsRegistros.FieldByName('dataImplantacao').IsNull)         then begin
          Result := Result + 'Data Implanta��o deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('tipoOrdem').AsInteger = 0 ) or
           (dsRegistros.FieldByName('tipoOrdem').IsNull)         then begin
          Result := Result + 'Tipo da Ordem deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('situacao').AsInteger = 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situa��o deve ser informada! |';
        end;

        if (dsRegistros.FieldByName('tipoPreco').AsInteger = 0 ) or
           (dsRegistros.FieldByName('tipoPreco').IsNull)         then begin
          Result := Result + 'Tipo Pre�o deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('codUsuarImplant').AsString = '' ) or
           (dsRegistros.FieldByName('codUsuarImplant').IsNull)         then begin
          Result := Result + 'Usu�rio deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('codOperador').AsInteger = 0 ) or
           (dsRegistros.FieldByName('codOperador').IsNull)         then begin
          Result := Result + 'Operador deve ser informado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codOperador from gcOperadorMaqEquip ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codOperador   = ' + IntToStr(dsRegistros.FieldByName('codOperador').AsInteger)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Operador informado ' + dsRegistros.FieldByName('codOperador').AsString + ' n�o encontrado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codEmitente from gcEmitente ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codEmitente   = ' + IntToStr(dsRegistros.FieldByName('codEmitente').AsInteger)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Emitente informado ' + dsRegistros.FieldByName('codEmitente').AsString + ' n�o encontrado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codEmitente, codLocal from gcEmitenteEndereco ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codEmitente   = ' + IntToStr(dsRegistros.FieldByName('codEmitente').AsInteger)   +
                        '   and codLocal   = ' + QuotedStr(dsRegistros.FieldByName('codLocal').AsString)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Emitente/Local informado ' + dsRegistros.FieldByName('codEmitente').AsString + '/' + dsRegistros.FieldByName('codLocal').AsString + ' n�o encontrado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codMaqEquip from gcMaquinaEquipamento ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codMaqEquip   = ' + IntToStr(dsRegistros.FieldByName('codMaqEquip').AsInteger)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'M�quina/Equip informado ' + dsRegistros.FieldByName('codMaqEquip').AsString + ' n�o encontrado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codCondPagto from gcCondicaoPagamento ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codCondPagto   = ' + IntToStr(dsRegistros.FieldByName('codCondPagto').AsInteger)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Condi��o Pagto informada ' + dsRegistros.FieldByName('codCondPagto').AsString + ' n�o encontrado! |';
        end;


        if dsRegistros.FieldByName('tipoPreco').AsInteger = 1  then begin  //tab preco
          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codTabPreco from gcTabelaPreco ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codTabPreco   = ' + IntToStr(dsRegistros.FieldByName('codTabPreco').AsInteger)
                          );
          fqFKTab.Active := True;
          if fqFKTab.IsEmpty then begin
            Result := Result + 'Tabela de Pre�o informado ' + dsRegistros.FieldByName('codTabPreco').AsString + ' n�o encontrado! |';
          end;
        end;

        if (dsRegistros.FieldByName('codFormaPagto').AsInteger > 0 )    and
           (not dsRegistros.FieldByName('codFormaPagto').IsNull)        then begin

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codFormaPagto from gcFormaPagamento ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codFormaPagto   = ' + IntToStr(dsRegistros.FieldByName('codFormaPagto').AsInteger)
                          );
          fqFKTab.Active := True;
          if fqFKTab.IsEmpty then begin
            Result := Result + 'Forma Pagto informada ' + dsRegistros.FieldByName('codFormaPagto').AsString + ' n�o encontrado! |';
          end;
        end;


      end;

      if Result = '' then
        Result := 'OK';

    except
      on e : exception do begin
        Result := 'Erro ao gravar registro: ' + e.message;
      end;
    end;
  finally
    FreeAndNil(fqFKTab);
  end;

end;

function fBOOrdemServico_CancelaOS(dsRegistros : TDataSet; sParam : string ) : string;
var
i,j : integer;
begin

  Result := '';
  try
    if dsRegistros.FieldByName('situacao').AsInteger = 1 then begin

      dsRegistros.Edit;
      dsRegistros.FieldByName('motivoCancelamento').AsString := sParam;
      dsRegistros.FieldByName('situacao').AsInteger := 3;
      dsRegistros.FieldByName('codUsuarCancelamento').AsString  := MainForm.sCodUsuario;
      dsRegistros.FieldByName('dataCancelamento').AsDateTime    := Now;
      dsRegistros.Post;

    end
    else begin

      UniMainModule.fdTitulosAReceber.Close;
      UniMainModule.fdTitulosAReceber.SQL.Clear;
      UniMainModule.fdTitulosAReceber.SQL.Add( ' select * from gcTitulosAReceber ' +
                                               ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                                               '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel) +
                                               '   and codOrdemServico = ' + IntToStr(dsRegistros.FieldByName('codOrdemServico').AsInteger)
                                               );
      UniMainModule.fdTitulosAReceber.Active := True;

      UniMainModule.fdTitulosAReceber.First;
      for I := 0 to UniMainModule.fdTitulosAReceber.RecordCount - 1 do begin

        UniMainModule.fdTitulosMovtoAReceber.Close;
        UniMainModule.fdTitulosMovtoAReceber.SQL.Clear;
        UniMainModule.fdTitulosMovtoAReceber.SQL.Add( ' select * from gcTitulosMovtoAReceber ' +
                                                     ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                                                     '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel) +
                                                     '   and codTituloAReceber = ' + IntToStr(UniMainModule.fdTitulosAReceber.FieldByName('codTituloAReceber').AsInteger)
                                                     );
        UniMainModule.fdTitulosMovtoAReceber.Active := True;
        UniMainModule.fdTitulosMovtoAReceber.First;
        for j := 0 to UniMainModule.fdTitulosMovtoAReceber.RecordCount - 1 do begin
          UniMainModule.fdTitulosMovtoAReceber.Delete;
          UniMainModule.fdTitulosMovtoAReceber.Next;
        end;

        UniMainModule.fdTitulosAReceber.Delete;
        UniMainModule.fdTitulosAReceber.Next;
      end;



      UniMainModule.fdPortador.Close;
      UniMainModule.fdPortador.SQL.Clear;
      UniMainModule.fdPortador.SQL.Add(' select * from gcPortador ' +
                                        ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                                        '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel) +
                                        '   and codPortador      = ' + IntToStr(dsRegistros.FieldByName('codPortador').AsInteger)
                                        );
      UniMainModule.fdPortador.Active := True;
      UniMainModule.fdPortador.Edit;
      UniMainModule.fdPortadorvlSaldoAtual.AsFloat := UniMainModule.fdPortadorvlSaldoAtual.AsFloat - dsRegistros.FieldByName('valorTotal').AsFloat;
      UniMainModule.fdPortador.Post;

      dsRegistros.Edit;
      dsRegistros.FieldByName('motivoCancelamento').AsString := sParam;
      dsRegistros.FieldByName('situacao').AsInteger := 3;
      dsRegistros.FieldByName('codUsuarCancelamento').AsString  := MainForm.sCodUsuario;
      dsRegistros.FieldByName('dataCancelamento').AsDateTime    := Now;
      dsRegistros.Post;

    end;

    Result := 'OK';
  except
    on e : exception do begin
      Result := 'Erro ao cancelar registro: ' + e.message;
    end;
  end;

end;

function fBOOrdemServico_CalcVlTotal(iCodOS : integer) : Real;
var
  fqFKTab : TFDQuery;
  dVlTotal : Real;
  i : integer;
begin
  Result := 0;
  try

    fqFKTab := TFDQuery.Create(nil);
    fqFKTab.Connection := UniMainModule.conexaoDB;
    fqFKTab.Close;

    fqFKTab.SQL.Clear;
    fqFKTab.SQL.Add(' select * from gcOrdemServItem ' +
                    ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                    '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                    '   and codOrdemServico   = ' + IntToStr(iCodOS)
                    );
    fqFKTab.Active := True;

    dVlTotal := 0;
    fqFKTab.First;
    for I := 0 to fqFKTab.RecordCount - 1 do begin
      dVlTotal := dVlTotal + fqFKTab.FieldByName('preco').AsFloat;
      fqFKTab.Next;
    end;

    Result := dVlTotal;

  finally
    FreeAndNil(fqFKTab);
  end;

end;

function fBOOrdemServico_CalcParcelasDuplc(dsRegistros : TDataSet; sParam : string; var mtDuplic : TFDMemTable) : string;
var
  fqFKTab : TFDQuery;
  dVlParc, dVlDif, dVlTotParc, dVlTotal : Real;
  dtVenc : TDate;
  i : integer;
begin

  try

    mtDuplic.EmptyDataSet;

    fqFKTab := TFDQuery.Create(nil);
    fqFKTab.Connection := UniMainModule.conexaoDB;
    fqFKTab.Close;

    fqFKTab.SQL.Clear;
    fqFKTab.SQL.Add(' select * from gcCondicaoPagamento ' +
                    ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                    '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel) +
                    '   and codCondPagto    = ' + IntToStr(dsRegistros.FieldByName('codCondPagto').AsInteger)
                    );
    fqFKTab.Active := True;

    if fqFKTab.FieldByName('tipoVencimento').AsInteger = 1 then begin //a vista
        mtDuplic.Insert;
        mtDuplic.FieldByName('parcela').AsInteger  := 1;
        mtDuplic.FieldByName('valor').AsFloat    := dsRegistros.FieldByName('valorTotal').AsFloat;
        mtDuplic.FieldByName('dtVencto').AsDateTime := Now;
        mtDuplic.FieldByName('avista').AsInteger  := 1;
        mtDuplic.Post;
    end
    else begin
      dVlParc := 0;
      dVlTotParc := 0;
      dVlDif := 0;
      dtVenc  := Date;
      fqFKTab.First;
      for I := 1 to fqFKTab.FieldByName('numParcelas').AsInteger do begin

        dtVenc := IncDay(dtVenc,fqFKTab.FieldByName('nrDias').AsInteger);
        dVlTotal := dsRegistros.FieldByName('valorTotal').AsFloat;
        dVlParc := (dVlTotal / fqFKTab.FieldByName('numParcelas').AsInteger);
        dVlParc := RoundTo(dVlParc,-2);
        dVlTotParc := dVlTotParc + dVlParc;


        mtDuplic.Insert;
        mtDuplic.FieldByName('parcela').AsInteger   := i;
        mtDuplic.FieldByName('dtVencto').AsDateTime := dtVenc;
        mtDuplic.FieldByName('avista').AsInteger    := 0;

        if i < fqFKTab.FieldByName('numParcelas').AsInteger  then
          mtDuplic.FieldByName('valor').AsFloat    := dVlParc
        else begin
          if dVlTotParc = dsRegistros.FieldByName('valorTotal').AsFloat then begin
            mtDuplic.FieldByName('valor').AsFloat    := dVlParc;
          end
          else begin
            dVlDif := RoundTo(dsRegistros.FieldByName('valorTotal').AsFloat,-2) - RoundTo(dVlTotParc,-2);
            if dVlDif < 0 then begin
              dVlDif := dVlDif * -1;
              dVlParc := dVlParc - dVlDif;
            end
            else begin
              dVlParc := dVlParc + dVlDif;
            end;
            mtDuplic.FieldByName('valor').AsFloat    := dVlParc;
          end;
        end;

        mtDuplic.Post;

        fqFKTab.Next;
      end;
    end;

  finally
    FreeAndNil(fqFKTab);
  end;

end;

function fBOOrdemServico_EfetivarOS(dsRegistros : TDataSet; sParam : string; mtDuplic : TFDMemTable) : string;
var
fqFKTab : TFDQuery;
i, iSeqCR, iSeqMov : integer;
begin

  try

    fqFKTab := TFDQuery.Create(nil);
    fqFKTab.Connection := UniMainModule.conexaoDB;
    fqFKTab.Close;

    fqFKTab.SQL.Clear;
    fqFKTab.SQL.Add(' select max(codTituloAReceber) as seqCR from gcTitulosAReceber ' +
                    ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                    '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel)
                    );
    fqFKTab.Active := True;

    iSeqCR := 1;
    if not fqFKTab.IsEmpty then
      iSeqCR := fqFKTab.FieldByName('seqCR').AsInteger + 1;

    try
      Result := '';

      UniMainModule.fdTitulosAReceber.Close;
      UniMainModule.fdTitulosAReceber.SQL.Clear;
      UniMainModule.fdTitulosAReceber.SQL.Add( ' select * from gcTitulosAReceber ' +
                                               ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                                               '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel)
                                               );
      UniMainModule.fdTitulosAReceber.Active := True;

      UniMainModule.fdTitulosMovtoAReceber.Close;
      UniMainModule.fdTitulosMovtoAReceber.SQL.Clear;
      UniMainModule.fdTitulosMovtoAReceber.SQL.Add( ' select * from gcTitulosMovtoAReceber ' +
                                                   ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                                                   '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel)
                                                   );
      UniMainModule.fdTitulosMovtoAReceber.Active := True;

      fqFKTab.Close;
      fqFKTab.SQL.Clear;
      fqFKTab.SQL.Add(' select * from gcPortador ' +
                      ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                      '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel) +
                      '   and codPortador      = ' + IntToStr(dsRegistros.FieldByName('codPortador').AsInteger)
                      );
      fqFKTab.Active := True;

      iSeqMov := 1;

      mtDuplic.First;
      for I := 0 to mtDuplic.RecordCount - 1 do begin

        //with UniMainModule do begin

          UniMainModule.fdTitulosAReceber.Insert;
          UniMainModule.fdTitulosARecebercodEmpresa.AsInteger         := MainForm.iCodEmpresa;
          UniMainModule.fdTitulosARecebercodEstabel.AsInteger         := MainForm.iCodEstabel;
          UniMainModule.fdTitulosARecebercodTituloAReceber.AsInteger  := iSeqCR;
          UniMainModule.fdTitulosAReceberdescricao.AsString           := '';
          UniMainModule.fdTitulosARecebercodEmitente.AsInteger        := dsRegistros.FieldByName('codEmitente').AsInteger;
          UniMainModule.fdTitulosARecebercodFormaPagto.AsInteger      := dsRegistros.FieldByName('codFormaPagto').AsInteger;
          UniMainModule.fdTitulosAReceberdtVencimento.AsDateTime      := mtDuplic.FieldByName('dtVencto').AsDateTime;
          UniMainModule.fdTitulosAReceberdtEmissao.AsDateTime         := Now;
          UniMainModule.fdTitulosAReceberdtTransacao.AsDateTime       := Now;
          UniMainModule.fdTitulosARecebercodUsuarImplant.AsString     := MainForm.sCodUsuario;
          UniMainModule.fdTitulosARecebervalorOriginal.AsFloat        := mtDuplic.FieldByName('valor').AsFloat;
          UniMainModule.fdTitulosARecebervalorTituloReceber.AsFloat   := mtDuplic.FieldByName('valor').AsFloat;
          UniMainModule.fdTitulosARecebercodPortador.AsInteger        := dsRegistros.FieldByName('codPortador').AsInteger;
          UniMainModule.fdTitulosAReceberdoctoReferencia.AsString     := 'OS-' + IntToStr(dsRegistros.FieldByName('codOrdemServico').AsInteger);
          UniMainModule.fdTitulosAReceberindOrigem.AsInteger          := 1; //OS
          UniMainModule.fdTitulosARecebercodOrdemServico.AsInteger    := dsRegistros.FieldByName('codOrdemServico').AsInteger;
          UniMainModule.fdTitulosAReceberparcela.AsInteger            := mtDuplic.FieldByName('parcela').AsInteger;

          UniMainModule.fdTitulosAReceberpercMultaAtraso.AsFloat      := 0;
          UniMainModule.fdTitulosAReceberpercJuroDia.AsFloat          := 0;
          UniMainModule.fdTitulosAReceberpercDesctoAntecip.AsFloat    := 0;

          if mtDuplic.FieldByName('avista').AsInteger = 1 then //sim
            UniMainModule.fdTitulosARecebersituacao.AsInteger := 9 //liquidado
          else
            UniMainModule.fdTitulosARecebersituacao.AsInteger := 1; //aberta


          if not fqFKTab.IsEmpty then begin
            UniMainModule.fdTitulosAReceberpercMultaAtraso.AsFloat      := fqFKTab.FieldByName('percMultaAtraso').AsFloat;
            UniMainModule.fdTitulosAReceberpercJuroDia.AsFloat          := fqFKTab.FieldByName('percJuroDia').AsFloat;
            UniMainModule.fdTitulosAReceberpercDesctoAntecip.AsFloat    := fqFKTab.FieldByName('percDesctoAntecip').AsFloat;
          end;
          UniMainModule.fdTitulosAReceber.Post;

          //movto
          UniMainModule.fdTitulosMovtoAReceber.Insert;
          UniMainModule.fdTitulosMovtoARecebercodEmpresa.AsInteger        := MainForm.iCodEmpresa;
          UniMainModule.fdTitulosMovtoARecebercodEstabel.AsInteger        := MainForm.iCodEstabel;
          UniMainModule.fdTitulosMovtoARecebercodTituloAReceber.AsInteger := iSeqCR;
          UniMainModule.fdTitulosMovtoARecebersequencia.AsInteger         := iSeqMov;
          UniMainModule.fdTitulosMovtoARecebertipoMovto.AsInteger         := 1; //implantacao
          UniMainModule.fdTitulosMovtoAReceberdescricao.AsString          := 'Implanta��o';
          UniMainModule.fdTitulosMovtoAReceberdtMovto.AsDateTime          := Now;
          UniMainModule.fdTitulosMovtoARecebercodUsuarMovto.AsString      := MainForm.sCodUsuario;
          UniMainModule.fdTitulosMovtoARecebervalorMovto.AsFloat          := mtDuplic.FieldByName('valor').AsFloat;
          UniMainModule.fdTitulosMovtoAReceber.Post;


          iSeqCR  := iSeqCR  + 1;
          iSeqMov := iSeqMov + 1;
        //end;

        mtDuplic.Next;
      end;

      UniMainModule.fdPortador.Close;
      UniMainModule.fdPortador.SQL.Clear;
      UniMainModule.fdPortador.SQL.Add(' select * from gcPortador ' +
                                        ' where codEmpresa      = ' + IntToStr(MainForm.iCodEmpresa) +
                                        '   and codEstabel      = ' + IntToStr(MainForm.iCodEstabel) +
                                        '   and codPortador      = ' + IntToStr(dsRegistros.FieldByName('codPortador').AsInteger)
                                        );
      UniMainModule.fdPortador.Active := True;
      UniMainModule.fdPortador.Edit;
      UniMainModule.fdPortadorvlSaldoAtual.AsFloat := UniMainModule.fdPortadorvlSaldoAtual.AsFloat + dsRegistros.FieldByName('valorTotal').AsFloat;
      UniMainModule.fdPortador.Post;

      dsRegistros.Edit;
      dsRegistros.FieldByName('situacao').AsInteger   := 2; //concluida
      dsRegistros.FieldByName('dataConclusao').AsDateTime     := Now;
      dsRegistros.FieldByName('codUsuarConclusao').AsString   := MainForm.sCodUsuario;
      dsRegistros.Post;

      Result := 'OK';

    except
      on e : exception do begin
        Result := e.message;
      end;
    end;
  finally
    FreeAndNil(fqFKTab);
  end;

end;


end.
