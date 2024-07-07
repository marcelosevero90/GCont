unit UBOTitulosAPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon, DateUtils, System.Math ;

  function fBOTitulosAPagar_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;

function fBOTitulosAPagar_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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
        Result := Result + 'Não foram encontrados registros para manutenção! |';
        Exit;
      end;


      if sAcao = 'DELETE' then begin


      end
      else begin

        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codTituloAPagar').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codTituloAPagar').IsNull)         then begin
            Result := Result + 'Número do Título deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codTituloAPagar from gcTitulosAPagar ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codTituloAPagar   = ' + IntToStr(dsRegistros.FieldByName('codTituloAPagar').AsInteger)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'Código ' + dsRegistros.FieldByName('codTituloAPagar').AsString + ' já está cadastrado! |';
          end;
        end;
        {if (dsRegistros.FieldByName('descricao').AsString = '' ) or
           (dsRegistros.FieldByName('descricao').IsNull)         then begin
          Result := Result + 'Descrição deve ser informado! |';
        end;}

        if (dsRegistros.FieldByName('dtVencimento').IsNull)         then begin
          Result := Result + 'Data Vencimento deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('dtEmissao').IsNull)         then begin
          Result := Result + 'Data Emissão deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('dtTransacao').IsNull)         then begin
          Result := Result + 'Data Transação deve ser informado! |';
        end;


        if (dsRegistros.FieldByName('situacao').AsInteger = 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situação deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('indOrigem').AsInteger = 0 ) or
           (dsRegistros.FieldByName('indOrigem').IsNull)         then begin
          Result := Result + 'Origem deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('valorOriginal').AsFloat = 0 ) or
           (dsRegistros.FieldByName('valorOriginal').IsNull)         then begin
          Result := Result + 'Valor Título deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('valorTituloPagar').AsFloat <= 0 ) or
           (dsRegistros.FieldByName('valorTituloPagar').IsNull)         then begin
          Result := Result + 'Valor Total deve ser maior que zero! |';
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
          Result := Result + 'Emitente informado ' + dsRegistros.FieldByName('codEmitente').AsString + ' não encontrado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codPortador from gcPortador ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codPortador   = ' + IntToStr(dsRegistros.FieldByName('codPortador').AsInteger)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Portador informado ' + dsRegistros.FieldByName('codPortador').AsString + ' não encontrado! |';
        end;


        if (dsRegistros.FieldByName('codFormaPagto').AsInteger > 0 ) and
           (not dsRegistros.FieldByName('codFormaPagto').IsNull)         then begin

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codFormaPagto from gcFormaPagamento ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codFormaPagto   = ' + IntToStr(dsRegistros.FieldByName('codFormaPagto').AsInteger)
                          );
          fqFKTab.Active := True;
          if fqFKTab.IsEmpty then begin
            Result := Result + 'Forma Pagto informado ' + dsRegistros.FieldByName('codFormaPagto').AsString + ' não encontrado! |';
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


end.
