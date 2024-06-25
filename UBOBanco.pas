unit UBOBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOBanco_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses MainModule, Main;

function fBOBanco_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codBanco from gcPortador ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codBanco   = ' + IntToStr(dsRegistros.FieldByName('codBanco').AsInteger)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
          Result := Result + 'Banco  ' + dsRegistros.FieldByName('codBanco').AsString + ' vinculado a um portador, n�o pode ser eliminado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codBanco from gcEmitenteContasBancaria ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codBanco   = ' + IntToStr(dsRegistros.FieldByName('codBanco').AsInteger)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
          Result := Result + 'Banco  ' + dsRegistros.FieldByName('codBanco').AsString + ' vinculado a um emitente, n�o pode ser eliminado! |';
        end;

      end
      else begin

        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codBanco').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codBanco').IsNull)         then begin
            Result := Result + 'C�digo do banco deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codBanco from gcBanco ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codBanco   = ' + IntToStr(dsRegistros.FieldByName('codBanco').AsInteger)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'C�digo ' + dsRegistros.FieldByName('codBanco').AsString + ' j� est� cadastrado! |';
          end;
        end;
        if (dsRegistros.FieldByName('nomeBanco').AsString = '' ) or
           (dsRegistros.FieldByName('nomeBanco').IsNull)         then begin
          Result := Result + 'Nome do banco deve ser informado! |';
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
