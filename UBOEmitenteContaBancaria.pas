unit UBOEmitenteContaBancaria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOEmitenteContaBanco_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;


implementation

uses Main, MainModule;

function fBOEmitenteContaBanco_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('codEmitente').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codEmitente').IsNull)         then begin
            Result := Result + 'C�digo do Emitente deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codEmitente from gcEmitenteContasBancaria ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codEmitente   = ' + IntToStr(dsRegistros.FieldByName('codEmitente').AsInteger) +
                          '   and codBanco = ' + IntToStr(dsRegistros.FieldByName('codBanco').AsInteger) +
                          '   and agencia = ' + QuotedStr(dsRegistros.FieldByName('agencia').AsString) +
                          '   and contaCorrente = ' + QuotedStr(dsRegistros.FieldByName('contaCorrente').AsString)

                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'Registro j� est� cadastrado! |';
          end;
        end;
        if (dsRegistros.FieldByName('agencia').AsString = '' ) or
           (dsRegistros.FieldByName('agencia').IsNull)         then begin
          Result := Result + 'Ag�ncia deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('contaCorrente').AsString = '' ) or
           (dsRegistros.FieldByName('contaCorrente').IsNull)         then begin
          Result := Result + 'Conta Corrente deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('codBanco').AsInteger = 0 ) or
           (dsRegistros.FieldByName('codBanco').IsNull)         then begin
          Result := Result + 'Banco deve ser informada! |';
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
