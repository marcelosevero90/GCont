unit UBOUnidadeMedida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOUn_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;

function fBOUn_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('un').AsString = '' ) or
             (dsRegistros.FieldByName('un').IsNull)         then begin
            Result := Result + 'C�digo da UN deve ser informado! |';
          end
          else begin
            fqFKTab.Close;
            fqFKTab.SQL.Clear;
            fqFKTab.SQL.Add(' select un from gcUnidMedida ' +
                            ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                            '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                            '   and un         = ' + QuotedStr(dsRegistros.FieldByName('un').AsString)
                            );
            fqFKTab.Active := True;
            if not fqFKTab.IsEmpty then begin
              Result := Result + 'C�digo ' + dsRegistros.FieldByName('un').AsString + ' j� est� cadastrado! |';
            end;
          end;
        end;
        if (dsRegistros.FieldByName('descricao').AsString = '' ) or
           (dsRegistros.FieldByName('descricao').IsNull)         then begin
          Result := Result + 'Descria��o da UN deve ser informado! |';
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
