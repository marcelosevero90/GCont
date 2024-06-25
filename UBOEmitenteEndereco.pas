unit UBOEmitenteEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOEmitenteEndereco_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;

function fBOEmitenteEndereco_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('codLocal').AsString = '' ) or
             (dsRegistros.FieldByName('codLocal').IsNull)         then begin
            Result := Result + 'Local deve ser informado! |';
          end
          else begin
            fqFKTab.Close;
            fqFKTab.SQL.Clear;
            fqFKTab.SQL.Add(' select codLocal from gcEmitenteEndereco ' +
                            ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                            '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                            '   and codLocal  = ' + QuotedStr(dsRegistros.FieldByName('codLocal').AsString)
                            );
            fqFKTab.Active := True;
            if not fqFKTab.IsEmpty then begin
              Result := Result + 'Código ' + dsRegistros.FieldByName('codLocal').AsString + ' já está cadastrado! |';
            end;
          end;
        end;
        if (dsRegistros.FieldByName('codEmitente').AsInteger = 0 ) or
           (dsRegistros.FieldByName('codEmitente').IsNull)         then begin
          Result := Result + 'Emitente deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('endereco').AsString = '' ) or
           (dsRegistros.FieldByName('endereco').IsNull)         then begin
          Result := Result + 'Endereco deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('codCidade').AsInteger = 0 ) or
           (dsRegistros.FieldByName('codCidade').IsNull)         then begin
          Result := Result + 'Cidade deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('padrao').IsNull)         then begin
          Result := Result + 'Padrão deve ser informado! |';
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
