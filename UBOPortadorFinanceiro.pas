unit UBOPortadorFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOPortador_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;


implementation

uses Main, MainModule;

function fBOPortador_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('codPortador').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codPortador').IsNull)         then begin
            Result := Result + 'C�digo do Portador deve ser informado! |';
          end
          else begin
            fqFKTab.Close;
            fqFKTab.SQL.Clear;
            fqFKTab.SQL.Add(' select codPortador from gcPortador ' +
                            ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                            '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                            '   and codPortador = ' + IntToStr(dsRegistros.FieldByName('codPortador').AsInteger)
                            );
            fqFKTab.Active := True;
            if not fqFKTab.IsEmpty then begin
              Result := Result + 'C�digo ' + dsRegistros.FieldByName('codPortador').AsString + ' j� est� cadastrado! |';
            end;
          end;
        end;
        if (dsRegistros.FieldByName('nomePortador').AsString = '' ) or
           (dsRegistros.FieldByName('nomePortador').IsNull)         then begin
          Result := Result + 'Nome do portador deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('tipoPortador').AsInteger = 0 ) or
           (dsRegistros.FieldByName('nomePortador').IsNull)         then begin
          Result := Result + 'Tipo deve ser informado! |';
        end;

        if (dsRegistros.FieldByName('tipoPortador').AsInteger = 2 ) then begin //banco

          if (dsRegistros.FieldByName('agencia').AsString       = '') or
             (dsRegistros.FieldByName('contaCorrente').AsString = '') or
             (dsRegistros.FieldByName('codBanco').AsInteger     > 0)  then begin
             Result := Result + 'Para tipo Banco, C�d banco, Agencia e CC devem ser informadas! |';
          end;
        end;

        if (dsRegistros.FieldByName('codBanco').AsInteger > 0 ) then begin

          if (dsRegistros.FieldByName('agencia').AsString       = '') or
             (dsRegistros.FieldByName('contaCorrente').AsString = '') then begin
             Result := Result + 'Agencia e CC devem ser informados! |';
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
