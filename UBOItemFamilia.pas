unit UBOItemFamilia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOItemFamilia_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;

function fBOItemFamilia_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codItemFamilia from gcItem ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codItemFamilia   = ' + IntToStr(dsRegistros.FieldByName('codItemFamilia').AsInteger)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
          Result := Result + 'Família ' + dsRegistros.FieldByName('codItemFamilia').AsString + ' vinculado a um item, não pode ser eliminado! |';
        end;

      end
      else begin

        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codItemFamilia').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codItemFamilia').IsNull)         then begin
            Result := Result + 'Código da Família deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codItemFamilia from gcItemFamilia ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codItemFamilia   = ' + IntToStr(dsRegistros.FieldByName('codItemFamilia').AsInteger)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'Código ' + dsRegistros.FieldByName('codItemFamilia').AsString + ' já está cadastrado! |';
          end;
        end;
        if (dsRegistros.FieldByName('descricao').AsString = '' ) or
           (dsRegistros.FieldByName('descricao').IsNull)         then begin
          Result := Result + 'Descrição deve ser informado! |';
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
