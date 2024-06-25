unit UBOUsuario;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOUsuario_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;


implementation

uses MainModule, Main;

function fBOUsuario_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('codUsuario').AsString = '' ) or
             (dsRegistros.FieldByName('codUsuario').IsNull)         then begin
            Result := Result + 'Código do usuário deve ser informado! |';
          end
          else begin

            fqFKTab.Close;
            fqFKTab.SQL.Clear;
            fqFKTab.SQL.Add(' select codUsuario from gcUsuarioMestre ' +
                            ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                            '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                            '   and codUsuario = ' + QuotedStr(dsRegistros.FieldByName('codUsuario').AsString)
                            );
            fqFKTab.Active := True;
            if not fqFKTab.IsEmpty then begin
              Result := Result + 'Código ' + dsRegistros.FieldByName('codUsuario').AsString + ' já está cadastrado! |';
            end;
          end;
        end;
        if (dsRegistros.FieldByName('nomeUsuario').AsString = '' ) or
           (dsRegistros.FieldByName('nomeUsuario').IsNull)         then begin
          Result := Result + 'Nome do usuário deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('situacao').AsInteger = 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situação deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('tipoUsuario').AsInteger = 0 ) or
           (dsRegistros.FieldByName('tipoUsuario').IsNull)         then begin
          Result := Result + 'Tipo do usuário deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('senhaUsuario').AsString = '' ) or
           (dsRegistros.FieldByName('senhaUsuario').IsNull)         then begin
          Result := Result + 'Senha do usuário deve ser informada! |';
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
