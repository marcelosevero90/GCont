unit UTitulosAPagarRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniImageList,
  Vcl.Imaging.pngimage, uniImage, uniCheckBox, uniEdit, uniPanel, uniBasicGrid,
  uniDBGrid, uniDateTimePicker, uniLabel, uniGroupBox, uniButton, uniBitBtn,
  uniToolBar, uniPageControl;

type
  TFTitulosAPagarRelatorio = class(TUniFrame)
    pgMenu: TUniPageControl;
    tsLista: TUniTabSheet;
    UniToolBar1: TUniToolBar;
    btAtualizarDados: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniLabel2: TUniLabel;
    dtImplantIni: TUniDateTimePicker;
    dtImplantFim: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    dtVenctoIni: TUniDateTimePicker;
    dtVenctoFim: TUniDateTimePicker;
    UniGroupBox2: TUniGroupBox;
    dbEmitFiltro: TUniDBGrid;
    UniPanel5: TUniPanel;
    btMarcaTdsEmit: TUniBitBtn;
    btDesmarcaTdsEmit: TUniBitBtn;
    edtPesqEmitRap: TUniEdit;
    UniGroupBox3: TUniGroupBox;
    UniPanel6: TUniPanel;
    UniBitBtn3: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    edtPesqPortRap: TUniEdit;
    dbPortadFiltro: TUniDBGrid;
    UniGroupBox4: TUniGroupBox;
    UniPanel7: TUniPanel;
    UniBitBtn5: TUniBitBtn;
    UniBitBtn6: TUniBitBtn;
    edtPesqFormaPagRap: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    gbSit: TUniGroupBox;
    cbAberta: TUniCheckBox;
    cbCancelada: TUniCheckBox;
    cbLiquid: TUniCheckBox;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    imgVis: TUniImage;
    imgEdit: TUniImage;
    imgCancel: TUniImage;
    tsManut: TUniTabSheet;
    UniNativeImageList1: TUniNativeImageList;
    fdFormaPagto: TFDQuery;
    fdFormaPagtocodEmpresa: TIntegerField;
    fdFormaPagtocodEstabel: TIntegerField;
    fdFormaPagtocodFormaPagto: TIntegerField;
    fdFormaPagtoFC_SELEC: TBooleanField;
    fdFormaPagtonomeFormaPagto: TStringField;
    dsFormaPagto: TDataSource;
    fdEmitente: TFDQuery;
    fdEmitentecodEmpresa: TIntegerField;
    fdEmitentecodEstabel: TIntegerField;
    fdEmitentecodEmitente: TIntegerField;
    fdEmitentenomeEmitente: TStringField;
    fdEmitentecgc: TStringField;
    fdEmitentesituacao: TIntegerField;
    fdEmitenteidentificacao: TIntegerField;
    fdEmitenteemail: TStringField;
    fdEmitentetelefone: TStringField;
    fdEmitentecelular: TStringField;
    fdEmitentedataImplantacao: TDateField;
    fdEmitenteFC_SELEC: TBooleanField;
    dsEmitente: TDataSource;
    fdPortador: TFDQuery;
    fdPortadorcodEmpresa: TIntegerField;
    fdPortadorcodEstabel: TIntegerField;
    fdPortadorcodPortador: TIntegerField;
    fdPortadornomePortador: TStringField;
    fdPortadorcodBanco: TIntegerField;
    fdPortadoragencia: TStringField;
    fdPortadorcontaCorrente: TStringField;
    fdPortadortipoPortador: TIntegerField;
    fdPortadorvlSaldoInicial: TBCDField;
    fdPortadorvlSaldoAtual: TBCDField;
    fdPortadorFC_SELEC: TBooleanField;
    fdPortadorpercMultaAtraso: TBCDField;
    fdPortadorpercJuroDia: TBCDField;
    fdPortadorpercDesctoAntecip: TBCDField;
    dsPortador: TDataSource;
    fdTitulosAPagarLista: TFDQuery;
    dsTitulosAPagarLista: TDataSource;
    fdTitulosMovtoAPagar: TFDQuery;
    fdTitulosMovtoAPagarcodEmpresa: TIntegerField;
    fdTitulosMovtoAPagarcodEstabel: TIntegerField;
    fdTitulosMovtoAPagarsequencia: TIntegerField;
    fdTitulosMovtoAPagartipoMovto: TIntegerField;
    fdTitulosMovtoAPagardescricao: TStringField;
    fdTitulosMovtoAPagardtMovto: TDateField;
    fdTitulosMovtoAPagarcodUsuarMovto: TStringField;
    fdTitulosMovtoAPagarvalorMovto: TBCDField;
    fdTitulosMovtoAPagardescHistorico: TStringField;
    dsTitulosMovtoAPagar: TDataSource;
    fqAuxiliar: TFDQuery;
    fdPortadLiq: TFDQuery;
    fdPortadLiqcodEmpresa: TIntegerField;
    fdPortadLiqcodEstabel: TIntegerField;
    fdPortadLiqcodPortador: TIntegerField;
    fdPortadLiqnomePortador: TStringField;
    fdPortadLiqcodBanco: TIntegerField;
    fdPortadLiqagencia: TStringField;
    fdPortadLiqcontaCorrente: TStringField;
    fdPortadLiqtipoPortador: TIntegerField;
    fdPortadLiqvlSaldoInicial: TBCDField;
    fdPortadLiqvlSaldoAtual: TBCDField;
    fdPortadLiqpercMultaAtraso: TBCDField;
    fdPortadLiqpercJuroDia: TBCDField;
    fdPortadLiqpercDesctoAntecip: TBCDField;
    fdTitulosMovtoAPagarcodTituloAPagar: TIntegerField;
    fdTitulosAPagarListacodEmpresa: TIntegerField;
    fdTitulosAPagarListacodEstabel: TIntegerField;
    fdTitulosAPagarListacodTituloAPagar: TIntegerField;
    fdTitulosAPagarListadescricao: TStringField;
    fdTitulosAPagarListacodEmitente: TIntegerField;
    fdTitulosAPagarListacodFormaPagto: TIntegerField;
    fdTitulosAPagarListasituacao: TIntegerField;
    fdTitulosAPagarListadtVencimento: TDateField;
    fdTitulosAPagarListadtEmissao: TDateField;
    fdTitulosAPagarListadtTransacao: TDateField;
    fdTitulosAPagarListacodUsuarImplant: TStringField;
    fdTitulosAPagarListaobservacao: TStringField;
    fdTitulosAPagarListavalorOriginal: TBCDField;
    fdTitulosAPagarListavalorTituloPagar: TBCDField;
    fdTitulosAPagarListavalorDesconto: TBCDField;
    fdTitulosAPagarListavalorJuros: TBCDField;
    fdTitulosAPagarListavalorMulta: TBCDField;
    fdTitulosAPagarListacodPortador: TIntegerField;
    fdTitulosAPagarListadoctoReferencia: TStringField;
    fdTitulosAPagarListaindOrigem: TIntegerField;
    fdTitulosAPagarListacodUsuarLiquid: TStringField;
    fdTitulosAPagarListadtCancelamento: TDateField;
    fdTitulosAPagarListadtLiquidacao: TDateField;
    fdTitulosAPagarListacodUsuarCancela: TStringField;
    fdTitulosAPagarListaparcela: TIntegerField;
    fdTitulosAPagarListapercMultaAtraso: TBCDField;
    fdTitulosAPagarListapercJuroDia: TBCDField;
    fdTitulosAPagarListapercDesctoAntecip: TBCDField;
    fdTitulosAPagarListamotivoCancela: TStringField;
    fdTitulosAPagarListacodBanco: TIntegerField;
    fdTitulosAPagarListaagencia: TLargeintField;
    fdTitulosAPagarListacontaCorrente: TStringField;
    fdTitulosAPagarListadscSit: TStringField;
    fdTitulosAPagarListanomeEmitente: TStringField;
    fdTitulosAPagarListanomeFormaPagto: TStringField;
    fdTitulosAPagarListanomePortador: TStringField;
    UniLabel5: TUniLabel;
    edtOMIniFiltro: TUniNumberEdit;
    edtOMFimFiltro: TUniNumberEdit;
    procedure btMarcaTdsEmitClick(Sender: TObject);
    procedure btDesmarcaTdsEmitClick(Sender: TObject);
    procedure UniBitBtn3Click(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure UniBitBtn5Click(Sender: TObject);
    procedure UniBitBtn6Click(Sender: TObject);
    procedure edtPesqEmitRapKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesqEmitRapChange(Sender: TObject);
    procedure edtPesqPortRapKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesqPortRapChange(Sender: TObject);
    procedure edtPesqFormaPagRapKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesqFormaPagRapChange(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses Main, ServerModule;

const SQLTitAcrAP = 'select gcTitulosAPagar.*, ' +
' case ' +
' when gcTitulosAPagar.situacao = 1 then ''Aberta''   ' +

' when gcTitulosAPagar.situacao = 2 then ''Cancelada'' ' +

' when gcTitulosAPagar.situacao = 3 then ''Liquidada'' ' +

' else '''' end as dscSit, ' +
' gcEmitente.nomeEmitente, '               +
' gcFormaPagamento.nomeFormaPagto, '         +
' gcPortador.nomePortador '                    +
' from gcTitulosAPagar '                       +
' inner join gcEmitente on '                       +
' (gcEmitente.codEmpresa = gcTitulosAPagar.codEmpresa '  +
' and '                                                      +
' gcEmitente.codEstabel = gcTitulosAPagar.codEstabel and '   +
' gcEmitente.codEmitente = gcTitulosAPagar.codEmitente) '    +
' left outer join gcFormaPagamento on '                          +
' (gcFormaPagamento.codEmpresa = gcTitulosAPagar.codEmpresa and  '  +
' gcFormaPagamento.codEstabel = gcTitulosAPagar.codEstabel and '  +
' gcFormaPagamento.codFormaPagto = gcTitulosAPagar.codFormaPagto) ' +
' inner join gcPortador on '                                           +
' (gcPortador.codEmpresa = gcTitulosAPagar.codEmpresa and  '  +
' gcPortador.codEstabel = gcTitulosAPagar.codEstabel and '  +
' gcPortador.codPortador = gcTitulosAPagar.codPortador) ';


procedure TFTitulosAPagarRelatorio.btAtualizarDadosClick(Sender: TObject);
var
sEmits, sPortads, sFormasPags, SqlExec, sSit : string;
sTab, sSQL, sCod, sDesc, sTpCod, sValLinha : string;
i,j : integer;
sLinha : string;
slArquivoCSV : TStringList;
sArqCSV, sNomeAux, sRet : string;
begin
  if not fdEmitente.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione um ou mais Fornecedores para Liquida��o!',mtError,[mbOK],nil);
    Exit;
  end;
  if not fdPortador.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione um ou mais Portadores!',mtError,[mbOK],nil);
    Exit;
  end;
  if not fdFormaPagto.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione uma ou mais Formas Pagto!',mtError,[mbOK],nil);
    Exit;
  end;
  if (cbAberta.Checked = False) and (cbCancelada.Checked = False) and (cbLiquid.Checked = False) then begin
    MessageDlg('Selecione uma ou mais Situa��es!',mtError,[mbOK],nil);
    Exit;
  end;


  edtPesqEmitRap.Clear;
  edtPesqPortRap.Clear;
  edtPesqFormaPagRap.Clear;

  sEmits        := '';
  sPortads      := '';
  sFormasPags   := '';
  sSit          := '';

  fdEmitente.Filtered := False;
  fdEmitente.Filter   := ' FC_SELEC = true ';
  fdEmitente.Filtered := True;

  fdPortador.Filtered := False;
  fdPortador.Filter   := ' FC_SELEC = true ';
  fdPortador.Filtered := True;

  fdFormaPagto.Filtered := False;
  fdFormaPagto.Filter   := ' FC_SELEC = true ';
  fdFormaPagto.Filtered := True;

  if cbAberta.Checked then
    sSit := sSit + '1,';
  if cbCancelada.Checked then
    sSit := sSit + '2,';
  if cbLiquid.Checked then
    sSit := sSit + '9,';

  fdEmitente.First;
  for I := 0 to fdEmitente.RecordCount - 1 do begin
    sEmits := sEmits + IntToStr(fdEmitentecodEmitente.AsInteger) + ',';
    fdEmitente.Next;
  end;
  fdPortador.First;
  for I := 0 to fdPortador.RecordCount - 1 do begin
    sPortads := sPortads + IntToStr(fdPortadorcodPortador.AsInteger) + ',';
    fdPortador.Next;
  end;
  fdFormaPagto.First;
  for I := 0 to fdFormaPagto.RecordCount - 1 do begin
    sFormasPags := sFormasPags + IntToStr(fdFormaPagtocodFormaPagto.AsInteger) + ',';
    fdFormaPagto.Next;
  end;

  sEmits        := Trim(sEmits);
  sPortads      := Trim(sPortads);
  sFormasPags   := Trim(sFormasPags);
  sSit          := Trim(sSit);

  if sEmits <> '' then begin
    sEmits := Copy(sEmits,1,length(sEmits)- 1);
  end;
  if sPortads <> '' then begin
    sPortads := Copy(sPortads,1,length(sPortads)- 1);
  end;
  if sFormasPags <> '' then begin
    sFormasPags := Copy(sFormasPags,1,length(sFormasPags)- 1);
  end;
  if sSit <> '' then begin
    sSit := Copy(sSit,1,length(sSit)- 1);
  end;

  SqlExec := SQLTitAcrAP
          + ' where gcTitulosAPagar.codEmpresa    = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and gcTitulosAPagar.codEstabel    = ' + IntToStr(MainForm.iCodEstabel)
          + '   and gcTitulosAPagar.dtVencimento >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtVenctoIni.DateTime))
          + '   and gcTitulosAPagar.dtVencimento <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtVenctoFim.DateTime))
          + '   and gcTitulosAPagar.dtEmissao    >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantIni.DateTime))
          + '   and gcTitulosAPagar.dtEmissao    <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantFim.DateTime))
          + '   and ((gcTitulosAPagar.codOrdemManutencao >= ' + IntToStr(Trunc(edtOMIniFiltro.Value))
          + '   and   gcTitulosAPagar.codOrdemManutencao <= ' + IntToStr(Trunc(edtOMFimFiltro.Value)) + ') or gcTitulosAPagar.codOrdemManutencao is null) ' ;


  if sEmits <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.codEmitente in (' + sEmits + ')';
  end;
  if sPortads <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.codPortador in (' + sPortads + ')';
  end;
  if sFormasPags <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.codFormaPagto in (' + sFormasPags + ')';
  end;
  if sSit <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.situacao in (' + sSit + ')';
  end;


  fdTitulosAPagarLista.Close;
  fdTitulosAPagarLista.SQL.Clear;
  fdTitulosAPagarLista.SQL.Add(SqlExec);
  fdTitulosAPagarLista.Active := True;


  fdEmitente.Filtered := False;
  fdPortador.Filtered := False;
  fdFormaPagto.Filtered := False;

  if fdTitulosAPagarLista.IsEmpty then begin
    fdTitulosAPagarLista.Close;
    MessageDlg('Nenhum registro de T�tulo encontrado para a sele��o informada!',mtError,[mbOK],nil);
    Exit;
  end;

  try

      slArquivoCSV := TStringList.Create;

      sLinha := '';
      for I := 0 to fdTitulosAPagarLista.Fields.Count - 1 do begin
        if fdTitulosAPagarLista.Fields[i].FieldKind = fkInternalCalc then
          Continue;
        sLinha := sLinha + fdTitulosAPagarLista.Fields[i].DisplayLabel + ';';
      end;

      slArquivoCSV.Add(sLinha);

      fdTitulosAPagarLista.First;
      for I := 0 to fdTitulosAPagarLista.RecordCount - 1 do begin
        sLinha := '';
        for j := 0 to fdTitulosAPagarLista.Fields.Count - 1 do begin
          if fdTitulosAPagarLista.Fields[j].FieldKind = fkInternalCalc then
            Continue;

          sValLinha := StringReplace(fdTitulosAPagarLista.FieldByName(fdTitulosAPagarLista.Fields[j].FieldName).AsString,
                                     chr(10),' ',[rfReplaceAll,rfIgnoreCase]);
          sValLinha := StringReplace(sValLinha,chr(13),' ',[rfReplaceAll,rfIgnoreCase]);
          sValLinha := StringReplace(sValLinha,#13,' ',[rfReplaceAll,rfIgnoreCase]);

          sLinha := sLinha + sValLinha + ';';

        end;
        slArquivoCSV.Add(sLinha);
        fdTitulosAPagarLista.Next;
      end;

      try

        Randomize;
        repeat
          sArqCSV   := UniServerModule.FilesFolderPath ;
          sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_' + 'TitulosAP' + '_'  +
                       StringReplace(FormatDateTime('dd/mm/yyyy',Now),'/','',[rfReplaceAll]) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '_' +
                       IntToStr(Random(9999)) + '.csv';

          sArqCSV := sArqCSV + sNomeAux;
          if not FileExists(sArqCSV) then
            Break;
        until (not FileExists(sArqCSV));

        slArquivoCSV.SaveToFile(sArqCSV);

        UniSession.SendFile(sArqCSV);
      except
        on e : exception do begin
          MessageDlg('Erro ao imprimir registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
          Exit;
        end;
      end;

    finally
      FreeAndNil(slArquivoCSV);
    end;



end;

procedure TFTitulosAPagarRelatorio.btDesmarcaTdsEmitClick(Sender: TObject);
var
i:integer;
begin
  fdEmitente.First;
  for I := 0 to fdEmitente.RecordCount - 1 do begin
    fdEmitente.Edit;
    fdEmitenteFC_SELEC.AsBoolean := False;
    fdEmitente.Post;
    fdEmitente.Next;
  end;

end;

procedure TFTitulosAPagarRelatorio.btMarcaTdsEmitClick(Sender: TObject);
var
i:integer;
begin
  fdEmitente.First;
  for I := 0 to fdEmitente.RecordCount - 1 do begin
    fdEmitente.Edit;
    fdEmitenteFC_SELEC.AsBoolean := True;
    fdEmitente.Post;
    fdEmitente.Next;
  end;

end;

procedure TFTitulosAPagarRelatorio.edtPesqEmitRapChange(Sender: TObject);
begin
  if Trim(edtPesqEmitRap.Text) = '' then begin
    fdEmitente.Filtered  := False;
    fdEmitente.filter    := '';
  end;
end;

procedure TFTitulosAPagarRelatorio.edtPesqEmitRapKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtPesqEmitRap.Text) = '' then begin
    fdEmitente.Filtered  := False;
  end;
  if Key = #13 then begin
    fdEmitente.Filtered  := False;
    if Trim(edtPesqEmitRap.Text) <> '' then begin


      fdEmitente.Filter    := '    (upper(codEmitente)  like ' + QuotedStr('%' + AnsiUpperCase(edtPesqEmitRap.Text) + '%') + ') '
                                 + ' or (upper(nomeEmitente) like ' + QuotedStr('%' + AnsiUpperCase(edtPesqEmitRap.Text) + '%') + ') '
                                 + ' or (upper(cgc) like ' + QuotedStr('%' + AnsiUpperCase(edtPesqEmitRap.Text) + '%') + ') '
      ;


      fdEmitente.Filtered  := True;
    end;
  end;
end;

procedure TFTitulosAPagarRelatorio.edtPesqFormaPagRapChange(Sender: TObject);
begin
  if Trim(edtPesqFormaPagRap.Text) = '' then begin
    fdFormaPagto.Filtered  := False;
    fdFormaPagto.filter    := '';
  end;
end;

procedure TFTitulosAPagarRelatorio.edtPesqFormaPagRapKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtPesqFormaPagRap.Text) = '' then begin
    fdFormaPagto.Filtered  := False;
  end;
  if Key = #13 then begin
    fdFormaPagto.Filtered  := False;
    if Trim(edtPesqFormaPagRap.Text) <> '' then begin

      fdFormaPagto.Filter    := '    (upper(codFormaPagto)  like ' + QuotedStr('%' + AnsiUpperCase(edtPesqFormaPagRap.Text) + '%') + ') '
                              + ' or (upper(nomeFormaPagto) like ' + QuotedStr('%' + AnsiUpperCase(edtPesqFormaPagRap.Text) + '%') + ') '
      ;

      fdFormaPagto.Filtered  := True;
    end;
  end;
end;

procedure TFTitulosAPagarRelatorio.edtPesqPortRapChange(Sender: TObject);
begin
  if Trim(edtPesqPortRap.Text) = '' then begin
    fdPortador.Filtered  := False;
    fdPortador.filter    := '';
  end;
end;

procedure TFTitulosAPagarRelatorio.edtPesqPortRapKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtPesqPortRap.Text) = '' then begin
    fdPortador.Filtered  := False;
  end;
  if Key = #13 then begin
    fdPortador.Filtered  := False;
    if Trim(edtPesqPortRap.Text) <> '' then begin

      fdPortador.Filter    := '    (upper(codPortador)  like ' + QuotedStr('%' + AnsiUpperCase(edtPesqPortRap.Text) + '%') + ') '
                            + ' or (upper(nomePortador) like ' + QuotedStr('%' + AnsiUpperCase(edtPesqPortRap.Text) + '%') + ') '
      ;

      fdPortador.Filtered  := True;
    end;
  end;
end;

procedure TFTitulosAPagarRelatorio.UniBitBtn3Click(Sender: TObject);
var
i:integer;
begin
  fdPortador.First;
  for I := 0 to fdPortador.RecordCount - 1 do begin
    fdPortador.Edit;
    fdPortadorFC_SELEC.AsBoolean := True;
    fdPortador.Post;
    fdPortador.Next;
  end;

end;

procedure TFTitulosAPagarRelatorio.UniBitBtn4Click(Sender: TObject);
var
i:integer;
begin
  fdPortador.First;
  for I := 0 to fdPortador.RecordCount - 1 do begin
    fdPortador.Edit;
    fdPortadorFC_SELEC.AsBoolean := False;
    fdPortador.Post;
    fdPortador.Next;
  end;

end;

procedure TFTitulosAPagarRelatorio.UniBitBtn5Click(Sender: TObject);
var
i:integer;
begin
  fdFormaPagto.First;
  for I := 0 to fdFormaPagto.RecordCount - 1 do begin
    fdFormaPagto.Edit;
    fdFormaPagtoFC_SELEC.AsBoolean := True;
    fdFormaPagto.Post;
    fdFormaPagto.Next;
  end;

end;

procedure TFTitulosAPagarRelatorio.UniBitBtn6Click(Sender: TObject);
var
i:integer;
begin
  fdFormaPagto.First;
  for I := 0 to fdFormaPagto.RecordCount - 1 do begin
    fdFormaPagto.Edit;
    fdFormaPagtoFC_SELEC.AsBoolean := False;
    fdFormaPagto.Post;
    fdFormaPagto.Next;
  end;

end;

procedure TFTitulosAPagarRelatorio.UniFrameCreate(Sender: TObject);
begin

  fdPortador.Close;
  fdPortador.SQL.Clear;
  fdPortador.SQL.Add( ' select * from gcPortador '
                     + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fdPortador.Active := True;

  fdFormaPagto.Close;
  fdFormaPagto.SQL.Clear;
  fdFormaPagto.SQL.Add( ' select * from gcFormaPagamento '
                     + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fdFormaPagto.Active := True;

  fdEmitente.Close;
  fdEmitente.SQL.Clear;
  fdEmitente.SQL.Add( ' select * from gcEmitente '
                     + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fdEmitente.Active := True;

  dtImplantIni.DateTime := Date - 90;
  dtImplantFim.DateTime := Date;
  dtVenctoIni.DateTime := Date - 180;
  dtVenctoFim.DateTime := Date + 365;

  tsLista.TabVisible := True;
  tsManut.TabVisible := False;
  pgMenu.TabIndex := 0;
end;

initialization
  RegisterClass(TFTitulosAPagarRelatorio);

end.
