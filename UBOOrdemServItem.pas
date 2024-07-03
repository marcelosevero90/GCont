unit UBOOrdemServItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOOrdemServItem_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;


function fBOOrdemServItem_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
var
  fqFKTab : TFDQuery;
  iTpPreco, iCodTabPreco : integer;
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

        iTpPreco      := 0;
        iCodTabPreco  := 0;
        fqFKTab.Close;
        fqFKTab.SQL.Clear;
        fqFKTab.SQL.Add(' select * from gcOrdemServico ' +
                        ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                        '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                        '   and codOrdemServico   = ' + IntToStr(dsRegistros.FieldByName('codOrdemServico').AsInteger)
                        );
        fqFKTab.Active := True;
        if not fqFKTab.IsEmpty then begin
          iTpPreco      :=  fqFKTab.FieldByName('tipoPreco').AsInteger;
          iCodTabPreco  :=  fqFKTab.FieldByName('codTabPreco').AsInteger;
        end
        else begin
          Result := Result + 'OS ' + dsRegistros.FieldByName('codOrdemServico').AsString + ' não encontrada! |';
        end;


        if dsRegistros.State = dsInsert then begin

          if (dsRegistros.FieldByName('codOrdemServico').AsInteger = 0 ) or
             (dsRegistros.FieldByName('codOrdemServico').IsNull)         then begin
            Result := Result + 'Número da Ordem de Serviço deve ser informado! |';
          end;
          if (dsRegistros.FieldByName('codItem').AsString = '' ) or
             (dsRegistros.FieldByName('codItem').IsNull)         then begin
            Result := Result + 'Item deve ser informado! |';
          end;

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codOrdemServico, codItem from gcOrdemServItem ' +
                          ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codOrdemServico   = ' + IntToStr(dsRegistros.FieldByName('codOrdemServico').AsInteger) +
                          '   and codItem           = ' + QuotedStr(dsRegistros.FieldByName('codItem').AsString)
                          );
          fqFKTab.Active := True;
          if not fqFKTab.IsEmpty then begin
            Result := Result + 'Item ' + dsRegistros.FieldByName('codItem').AsString + ' já está cadastrado na OS! |';
          end;
        end;


        if iTpPreco = 1 then begin   //tab preco

          fqFKTab.Close;
          fqFKTab.SQL.Clear;
          fqFKTab.SQL.Add(' select codItem from gcTabPrecoItem ' +
                          ' where codEmpresa    = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel    = ' + IntToStr(MainForm.iCodEstabel) +
                          '   and codTabPreco   = ' + IntToStr(iCodTabPreco) +
                          '   and codItem       = ' + QuotedStr(dsRegistros.FieldByName('codItem').AsString) +
                          '   and situacao      = 1 '
                          );
          fqFKTab.Active := True;
          if fqFKTab.IsEmpty then begin
            Result := Result + 'Item ' + dsRegistros.FieldByName('codItem').AsString + ' não encontrado na tabela de preço ou está inativo! |';
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
