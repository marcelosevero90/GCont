unit UBOTabPrecoItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, System.IniFiles, IdHTTP,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,  JSon;

  function fBOTabPreItem_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;

implementation

uses Main, MainModule;

function fBOTabPreItem_ValidaPostDelete(dsRegistros : TDataSet; sAcao : string ) : string;
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

          if (dsRegistros.FieldByName('codTabPreco').AsString = '' ) or
             (dsRegistros.FieldByName('codTabPreco').IsNull)         then begin
            Result := Result + 'C�digo da Tab Pre�o deve ser informado! |';
          end
          else begin
            fqFKTab.Close;
            fqFKTab.SQL.Clear;
            fqFKTab.SQL.Add(' select codItem from gcTabPrecoItem ' +
                            ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                            '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                            '   and codTabPreco  = ' + IntToStr(dsRegistros.FieldByName('codTabPreco').AsInteger) +
                            '   and codItem     = ' + QuotedStr(dsRegistros.FieldByName('codItem').AsString )
                            );
            fqFKTab.Active := True;
            if not fqFKTab.IsEmpty then begin
              Result := Result + 'C�digo Item ' + dsRegistros.FieldByName('codItem').AsString + ' j� est� cadastrado! |';
            end;
          end;
        end;
        if (dsRegistros.FieldByName('codItem').AsString = '' ) or
           (dsRegistros.FieldByName('codItem').IsNull)         then begin
          Result := Result + 'Item deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('situacao').AsInteger = 0 ) or
           (dsRegistros.FieldByName('situacao').IsNull)         then begin
          Result := Result + 'Situa��o deve ser informado! |';
        end;
        if (dsRegistros.FieldByName('preco').AsFloat = 0 ) or
           (dsRegistros.FieldByName('preco').IsNull)         then begin
          Result := Result + 'Pre�o deve ser informado! |';
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
