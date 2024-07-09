unit UBOOrdemManutItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOOrdemManutItem_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;


function fBOOrdemManutItem_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select * from gcOrdemManutencao ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codOrdemManutencao   = ' + IntToStr(dsRegistros.FieldByName('codOrdemManutencao').AsInteger)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
        end
        else begin
          Result := Result + 'OS ' + dsRegistros.FieldByName('codOrdemManutencao').AsString + ' não encontrada! |';
        end;


        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codOrdemManutencao').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codOrdemManutencao').IsNull)         then begin
            Result := Result + 'Número da Ordem de Serviço deve ser informado! |';
          end;
          if (dsRegistros.FieldByName('codItem').AsString = '' ) or
             (dsRegistros.FieldByName('codItem').IsNull)         then begin
            Result := Result + 'Item deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codOrdemManutencao, codItem from gcOrdemManutItem ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codOrdemManutencao   = ' + IntToStr(dsRegistros.FieldByName('codOrdemManutencao').AsInteger) +
                          '   and codItem           = ' + QuotedStr(dsRegistros.FieldByName('codItem').AsString)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'Item ' + dsRegistros.FieldByName('codItem').AsString + ' já está cadastrado na OS! |';
          end;
        end;


        if (dsRegistros.FieldByName('preco').AsFloat = 0 ) or
           (dsRegistros.FieldByName('preco').IsNull)         then begin
          Result := Result + 'Preço deve ser informado! |';
        end;

        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select codItem from gcItem ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codItem   = ' + QuotedStr(dsRegistros.FieldByName('codItem').AsString)
                        );
        fqFKTab.Active := True;
        if fqFKTab.IsEmpty then begin
          Result := Result + 'Item informado ' + dsRegistros.FieldByName('codItem').AsString + ' não encontrado! |';
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
