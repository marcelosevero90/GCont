unit UBOEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOEmpresa_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;



implementation

uses Main, MainModule;

function fBOEmpresa_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

        if (dsRegistros.FieldByName('razaoSocial').AsString = '' ) or
           (dsRegistros.FieldByName('razaoSocial').IsNull)         then begin
          Result := Result + 'Raz�o Social deve ser informado! |';
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
