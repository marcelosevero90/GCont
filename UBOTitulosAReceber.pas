unit UBOTitulosAReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon, DateUtils, System.Math ;

  function fBOTitulosAReceber_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;

function fBOTitulosAReceber_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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


      if sAcao = 'DELETE' then begin


      end
      else begin

        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codTituloAReceber').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codTituloAReceber').IsNull)         then begin
            Result := Result + 'N�mero do T�tulo deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codTituloAReceber from gcTitulosAReceber ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codTituloAReceber   = ' + IntToStr(dsRegistros.FieldByName('codTituloAReceber').AsInteger)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'C�digo ' + dsRegistros.FieldByName('codTituloAReceber').AsString + ' j� est� cadastrado! |';
          end;
        end;
        {if (dsRegistros.FieldByName('descricao').AsString = '' ) or
           (dsRegistros.FieldByName('descricao').IsNull)         then begin
          Result := Result + 'Descri��o deve ser informado! |';
        end;}

        if (dsRegistros.FieldByName('dtVencimento').IsNull)         then begin
          Result := Result + 'Data Vencimento deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('dtEmissao').IsNull)         then begin
          Result := Result + 'Data Emiss�o deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('dtTransacao').IsNull)         then begin
          Result := Result + 'Data Transa��o deve ser informado! |';
        end;


        if (dsRegistros.FieldByName('situacao').AsInteger = 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situa��o deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('indOrigem').AsInteger = 0 ) or
           (dsRegistros.FieldByName('indOrigem').IsNull)         then begin
          Result := Result + 'Origem deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('valorOriginal').AsFloat = 0 ) or
           (dsRegistros.FieldByName('valorOriginal').IsNull)         then begin
          Result := Result + 'Valor T�tulo deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('valorTituloReceber').AsFloat <= 0 ) or
           (dsRegistros.FieldByName('valorTituloReceber').IsNull)         then begin
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
          Result := Result + 'Emitente informado ' + dsRegistros.FieldByName('codEmitente').AsString + ' n�o encontrado! |';
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
          Result := Result + 'Portador informado ' + dsRegistros.FieldByName('codPortador').AsString + ' n�o encontrado! |';
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
            Result := Result + 'Forma Pagto informado ' + dsRegistros.FieldByName('codFormaPagto').AsString + ' n�o encontrado! |';
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
