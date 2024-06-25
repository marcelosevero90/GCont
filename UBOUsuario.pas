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
        Result := Result + 'N�o foram encontrados registros para manuten��o! |';
        Exit;
      end;

      if sAcao = 'DELETE' then begin

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codUsuario from gcOperadorMaqEquip ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codUsuario = ' + QuotedStr(dsRegistros.FieldByName('codUsuario').AsString)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
          Result := Result + 'Usu�rio ' + dsRegistros.FieldByName('codUsuario').AsString + ' vinculado a um Operador, n�o pode ser eliminado! |';
        end;

      end
      else begin

        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codUsuario').AsString = '' ) or
             (dsRegistros.FieldByName('codUsuario').IsNull)         then begin
            Result := Result + 'C�digo do usu�rio deve ser informado! |';
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
              Result := Result + 'C�digo ' + dsRegistros.FieldByName('codUsuario').AsString + ' j� est� cadastrado! |';
            end;
          end;
        end;
        if (dsRegistros.FieldByName('nomeUsuario').AsString = '' ) or
           (dsRegistros.FieldByName('nomeUsuario').IsNull)         then begin
          Result := Result + 'Nome do usu�rio deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('situacao').AsInteger = 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situa��o deve ser informada! |';
        end;
        if (dsRegistros.FieldByName('tipoUsuario').AsInteger = 0 ) or
           (dsRegistros.FieldByName('tipoUsuario').IsNull)         then begin
          Result := Result + 'Tipo do usu�rio deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('senhaUsuario').AsString = '' ) or
           (dsRegistros.FieldByName('senhaUsuario').IsNull)         then begin
          Result := Result + 'Senha do usu�rio deve ser informada! |';
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
