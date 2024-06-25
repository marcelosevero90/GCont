unit UBOOperadorMaqEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOOperadorMaqEquip_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;


function fBOOperadorMaqEquip_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('codOperador').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codOperador').IsNull)         then begin
            Result := Result + 'Código do Operador deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codOperador from gcOperadorMaqEquip ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codOperador   = ' + IntToStr(dsRegistros.FieldByName('codOperador').AsInteger)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'Código ' + dsRegistros.FieldByName('codOperador').AsString + ' já está cadastrado! |';
          end;
        end;
        if (dsRegistros.FieldByName('nomeOperador').AsString = '' ) or
           (dsRegistros.FieldByName('nomeOperador').IsNull)         then begin
          Result := Result + 'Nome do Operador deve ser informado! |';
        end;

        if (dsRegistros.FieldByName('situacao').AsInteger <= 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situação deve ser informado! |';
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
