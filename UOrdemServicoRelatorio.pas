unit UOrdemServicoRelatorio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniPanel, uniEdit, uniLabel, uniMultiItem,
  uniComboBox, uniGroupBox, uniButton, uniBitBtn, uniToolBar, uniPageControl,
  uniGUIBaseClasses, uniImageList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniDateTimePicker, uniRadioGroup,
  uniCheckBox, uniDBComboBox, uniDBLookupComboBox;

type
  TFOrdemServicoRelatorio = class(TUniFrame)
    pgMenu: TUniPageControl;
    tsLista: TUniTabSheet;
    UniToolBar1: TUniToolBar;
    UniToolButton3: TUniToolButton;
    UniToolButton1: TUniToolButton;
    btAtualizarDados: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    UniLabel2: TUniLabel;
    UniLabel4: TUniLabel;
    edtCodIniFiltro: TUniNumberEdit;
    edtCodFimFiltro: TUniNumberEdit;
    edtDescFimFiltro: TUniEdit;
    edtDescIniFiltro: TUniEdit;
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    tsManut: TUniTabSheet;
    UniNativeImageList1: TUniNativeImageList;
    fdOrdServDetalhe: TFDQuery;
    fdOrdServDetalhecodEmpresa: TIntegerField;
    fdOrdServDetalhecodEstabel: TIntegerField;
    fdOrdServDetalhecodOrdemServico: TIntegerField;
    fdOrdServDetalhedescricao: TStringField;
    fdOrdServDetalheobservacao: TStringField;
    fdOrdServDetalhetipoOrdem: TIntegerField;
    fdOrdServDetalhedataImplantacao: TDateField;
    fdOrdServDetalhevalorTotal: TBCDField;
    fdOrdServDetalhesituacao: TIntegerField;
    fdOrdServDetalhedataConclusao: TDateField;
    fdOrdServDetalhecodOperador: TIntegerField;
    fdOrdServDetalhecodEmitente: TIntegerField;
    fdOrdServDetalhecodLocal: TStringField;
    fdOrdServDetalhecodFormaPagto: TIntegerField;
    fdOrdServDetalhecodCondPagto: TIntegerField;
    fdOrdServDetalhetipoPreco: TIntegerField;
    fdOrdServDetalhecodTabPreco: TIntegerField;
    fdOrdServDetalhecodMaqEquip: TIntegerField;
    fdOrdServDetalhemotivoCancelamento: TStringField;
    fdOrdServDetalhedataCancelamento: TDateField;
    fdOrdServDetalhemsgAlerta: TStringField;
    fdOrdServDetalhecodUsuarImplant: TStringField;
    fdOrdServDetalhecodUsuarCancelamento: TStringField;
    fdOrdServDetalhecodNomeEmit: TStringField;
    fdOrdServDetalhecodNomeOperador: TStringField;
    fdOrdServDetalhecodNomeFormaPag: TStringField;
    fdOrdServDetalhecodNomeCondPag: TStringField;
    fdOrdServDetalhecodNomeTabPre: TStringField;
    fdOrdServDetalhecodNomeMaqEquip: TStringField;
    fdOrdServDetalhenomeCidade: TStringField;
    fdOrdServDetalhecodPortador: TIntegerField;
    fdOrdServDetalhecodUsuarConclusao: TStringField;
    fdOrdServDetalhenomePortador: TStringField;
    dtImplIni: TUniDateTimePicker;
    dtImplFim: TUniDateTimePicker;
    dtConcIni: TUniDateTimePicker;
    dtConcFim: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel5: TUniLabel;
    lcMaqEquipFiltro: TUniDBLookupComboBox;
    lcOperadorFiltro: TUniDBLookupComboBox;
    lcEmitenteFiltro: TUniDBLookupComboBox;
    cbCliHabFiltro: TUniCheckBox;
    cbOperHabFiltro: TUniCheckBox;
    cbMaqHabFiltro: TUniCheckBox;
    rgSit: TUniRadioGroup;
    UniLabel6: TUniLabel;
    lcCondPag: TUniDBLookupComboBox;
    cbCondPag: TUniCheckBox;
    UniLabel7: TUniLabel;
    lcFormaPag: TUniDBLookupComboBox;
    cbFormaPag: TUniCheckBox;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
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
    dsEmitente: TDataSource;
    fdOperadorMaqEquip: TFDQuery;
    fdOperadorMaqEquipcodEmpresa: TIntegerField;
    fdOperadorMaqEquipcodEstabel: TIntegerField;
    fdOperadorMaqEquipcodOperador: TIntegerField;
    fdOperadorMaqEquipnomeOperador: TStringField;
    fdOperadorMaqEquipsituacao: TIntegerField;
    fdOperadorMaqEquipcodUsuario: TStringField;
    dsOperadorMaqEquip: TDataSource;
    fdMaquinaEquipamento: TFDQuery;
    fdMaquinaEquipamentocodEmpresa: TIntegerField;
    fdMaquinaEquipamentocodEstabel: TIntegerField;
    fdMaquinaEquipamentocodMaqEquip: TIntegerField;
    fdMaquinaEquipamentonomeMaqEquip: TStringField;
    dsMaquinaEquipamento: TDataSource;
    fdTabPreco: TFDQuery;
    fdTabPrecocodEmpresa: TIntegerField;
    fdTabPrecocodEstabel: TIntegerField;
    fdTabPrecocodTabPreco: TIntegerField;
    fdTabPreconomeTabPreco: TStringField;
    fdTabPrecodtIniValidade: TDateField;
    fdTabPrecodtFimValidade: TDateField;
    fdTabPrecosituacao: TIntegerField;
    dsTabPreco: TDataSource;
    fdFormaPagto: TFDQuery;
    fdFormaPagtocodEmpresa: TIntegerField;
    fdFormaPagtocodEstabel: TIntegerField;
    fdFormaPagtocodFormaPagto: TIntegerField;
    fdFormaPagtonomeFormaPagto: TStringField;
    dsFormaPagto: TDataSource;
    fdCondPagto: TFDQuery;
    fdCondPagtocodEmpresa: TIntegerField;
    fdCondPagtocodEstabel: TIntegerField;
    fdCondPagtocodCondPagto: TIntegerField;
    fdCondPagtonomeCondPagto: TStringField;
    fdCondPagtonumParcelas: TIntegerField;
    fdCondPagtotipoVencimento: TIntegerField;
    fdCondPagtonrDias: TIntegerField;
    dsCondPagto: TDataSource;
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
    fdPortadorpercMultaAtraso: TBCDField;
    fdPortadorpercJuroDia: TBCDField;
    fdPortadorpercDesctoAntecip: TBCDField;
    dsPortador: TDataSource;
    UniLabel10: TUniLabel;
    lcPortad: TUniDBLookupComboBox;
    cbPortad: TUniCheckBox;
    procedure UniFrameCreate(Sender: TObject);
    procedure cbCliHabFiltroClick(Sender: TObject);
    procedure cbMaqHabFiltroClick(Sender: TObject);
    procedure cbOperHabFiltroClick(Sender: TObject);
    procedure cbCondPagClick(Sender: TObject);
    procedure cbFormaPagClick(Sender: TObject);
    procedure cbPortadClick(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule, Main, ServerModule;

const SQLOS =
' select gcOrdemServico.*,                                                                                  ' +
' concat(gcEmitente.codEmitente,'' - '',gcEmitente.nomeEmitente) as codNomeEmit,                              ' +
' concat(gcOperadorMaqEquip.codOperador,'' - '',gcOperadorMaqEquip.nomeOperador) as codNomeOperador,          ' +
' concat(gcFormaPagamento.codFormaPagto,'' - '',gcFormaPagamento.nomeFormaPagto) as codNomeFormaPag,          ' +
' concat(gcCondicaoPagamento.codCondPagto,'' - '',gcCondicaoPagamento.nomeCondPagto) as codNomeCondPag,       ' +
' concat(gcTabelaPreco.codTabPreco,'' - '',gcTabelaPreco.nomeTabPreco) as codNomeTabPre,                      ' +
' concat(gcMaquinaEquipamento.codMaqEquip,'' - '',gcMaquinaEquipamento.nomeMaqEquip) as codNomeMaqEquip,      ' +
' concat(gcCidade.nomeCidade,'' - '',gcCidade.uf) as nomeCidade,                                              ' +
' gcPortador.nomePortador                                                                                   ' +
' from gcOrdemServico                                                                                       ' +
' inner join gcEmitente on (gcEmitente.codEmpresa = gcOrdemServico.codEmpresa and                           ' +
' 						  gcEmitente.codEstabel = gcOrdemServico.codEstabel and                             ' +
' 						  gcEmitente.codEmitente = gcOrdemServico.codEmitente)                              ' +
' inner join gcOperadorMaqEquip on (gcOperadorMaqEquip.codEmpresa = gcOrdemServico.codEmpresa and           ' +
' 						  gcOperadorMaqEquip.codEstabel = gcOrdemServico.codEstabel and                     ' +
' 						  gcOperadorMaqEquip.codOperador = gcOrdemServico.codOperador)                      ' +
' left outer join gcFormaPagamento on (gcFormaPagamento.codEmpresa = gcOrdemServico.codEmpresa and          ' +
' 						  gcFormaPagamento.codEstabel = gcOrdemServico.codEstabel and                       ' +
' 						  gcFormaPagamento.codFormaPagto = gcOrdemServico.codFormaPagto)                    ' +
' inner join gcCondicaoPagamento on (gcCondicaoPagamento.codEmpresa = gcOrdemServico.codEmpresa and         ' +
' 						  gcCondicaoPagamento.codEstabel = gcOrdemServico.codEstabel and                    ' +
' 						  gcCondicaoPagamento.codCondPagto = gcOrdemServico.codCondPagto)                   ' +
' left outer join gcTabelaPreco on (gcTabelaPreco.codEmpresa = gcOrdemServico.codEmpresa and                ' +
' 						  gcTabelaPreco.codEstabel = gcOrdemServico.codEstabel and                          ' +
' 						  gcTabelaPreco.codTabPreco = gcOrdemServico.codTabPreco)                           ' +
' inner join gcMaquinaEquipamento on (gcMaquinaEquipamento.codEmpresa = gcOrdemServico.codEmpresa and       ' +
' 						  gcMaquinaEquipamento.codEstabel = gcOrdemServico.codEstabel and                   ' +
' 						  gcMaquinaEquipamento.codMaqEquip = gcOrdemServico.codMaqEquip)                    ' +
' left outer join gcEmitenteEndereco on (gcEmitenteEndereco.codEmpresa = gcOrdemServico.codEmpresa and      ' +
' 						  gcEmitenteEndereco.codEstabel = gcOrdemServico.codEstabel and                     ' +
' 						  gcEmitenteEndereco.codEmitente = gcOrdemServico.codEmitente and                   ' +
'                           gcEmitenteEndereco.codLocal = gcOrdemServico.codLocal)                          ' +
' left outer join gcCidade on (gcCidade.codCidade = gcEmitenteEndereco.codCidade )                          ' +
' left outer join gcPortador on (gcPortador.codEmpresa = gcOrdemServico.codEmpresa and                      ' +
' gcPortador.codEstabel = gcOrdemServico.codEstabel and                                                     ' +
' gcPortador.codPortador = gcOrdemServico.codPortador)                                                      ';


procedure TFOrdemServicoRelatorio.btAtualizarDadosClick(Sender: TObject);
var
sSql : string;
i,j : integer;
sLinha : string;
slArquivoCSV : TStringList;
sArqCSV, sNomeAux, sRet, sValLinha : string;
begin

  sSql  := SQLOS;
  sSql := sSql +
           ' where gcOrdemServico.codOrdemServico >= ' + IntToStr(Trunc(edtCodIniFiltro.Value))
         + '   and gcOrdemServico.codOrdemServico <= ' + IntToStr(Trunc(edtCodFimFiltro.Value))
         + '   and gcOrdemServico.dataImplantacao >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplIni.DateTime))
         + '   and gcOrdemServico.dataImplantacao <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplFim.DateTime))
         + '   and ((gcOrdemServico.dataConclusao   >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtConcIni.DateTime))
         + '   and   gcOrdemServico.dataConclusao   <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtConcFim.DateTime)) + ') or gcOrdemServico.dataConclusao is null) '
         + '   and gcOrdemServico.descricao       >= ' + QuotedStr(edtDescIniFiltro.Text)
         + '   and gcOrdemServico.descricao       <= ' + QuotedStr(edtDescFimFiltro.Text);

  if cbCliHabFiltro.Checked then
    sSql := sSql + ' and gcOrdemServico.codEmitente = ' + IntToStr(fdEmitentecodEmitente.AsInteger);
  if cbOperHabFiltro.Checked then
    sSql := sSql + ' and gcOrdemServico.codOperador = ' + IntToStr(fdOperadorMaqEquipcodOperador.AsInteger);
  if cbMaqHabFiltro.Checked then
    sSql := sSql + ' and gcOrdemServico.codMaqEquip = ' + IntToStr(fdMaquinaEquipamentocodMaqEquip.AsInteger);
  if cbCondPag.Checked then
    sSql := sSql + ' and gcOrdemServico.codCondPagto = ' + IntToStr(fdCondPagtocodCondPagto.AsInteger);
  if cbFormaPag.Checked then
    sSql := sSql + ' and gcOrdemServico.codFormaPagto = ' + IntToStr(fdFormaPagtocodFormaPagto.AsInteger);
  if cbPortad.Checked then
    sSql := sSql + ' and gcOrdemServico.codPortador = ' + IntToStr(fdPortadorcodPortador.AsInteger);

  if rgSit.ItemIndex > 0 then
    sSql := sSql + ' and gcOrdemServico.situacao = ' + IntToStr(rgSit.ItemIndex);



  fdOrdServDetalhe.Close;
  fdOrdServDetalhe.SQL.Clear;
  fdOrdServDetalhe.SQL.Add(sSql);
  fdOrdServDetalhe.Active := True;

  if fdOrdServDetalhe.IsEmpty then begin
    fdOrdServDetalhe.Close;
    MessageDlg('Nenhum registro de OS encontrado para a sele��o informada!',mtError,[mbOK],nil);
    Exit;
  end;

  try

    slArquivoCSV := TStringList.Create;

    sLinha := '';
    for I := 0 to fdOrdServDetalhe.Fields.Count - 1 do begin
      if fdOrdServDetalhe.Fields[i].FieldKind = fkInternalCalc then
        Continue;
      sLinha := sLinha + fdOrdServDetalhe.Fields[i].DisplayLabel + ';';
    end;

    slArquivoCSV.Add(sLinha);

    fdOrdServDetalhe.First;
    for I := 0 to fdOrdServDetalhe.RecordCount - 1 do begin
      sLinha := '';
      for j := 0 to fdOrdServDetalhe.Fields.Count - 1 do begin
        if fdOrdServDetalhe.Fields[j].FieldKind = fkInternalCalc then
          Continue;

        sValLinha := StringReplace(fdOrdServDetalhe.FieldByName(fdOrdServDetalhe.Fields[j].FieldName).AsString,
                                   chr(10),' ',[rfReplaceAll,rfIgnoreCase]);
        sValLinha := StringReplace(sValLinha,chr(13),' ',[rfReplaceAll,rfIgnoreCase]);
        sValLinha := StringReplace(sValLinha,#13,' ',[rfReplaceAll,rfIgnoreCase]);

        sLinha := sLinha + sValLinha + ';';
      end;
      slArquivoCSV.Add(sLinha);
      fdOrdServDetalhe.Next;
    end;

    try

      Randomize;
      repeat
        sArqCSV   := UniServerModule.FilesFolderPath ;
        sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_' + 'OS' + '_'  +
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

procedure TFOrdemServicoRelatorio.cbCliHabFiltroClick(Sender: TObject);
begin
  if cbCliHabFiltro.Checked then
    lcEmitenteFiltro.Enabled := True
  else
    lcEmitenteFiltro.Enabled := False;
end;

procedure TFOrdemServicoRelatorio.cbCondPagClick(Sender: TObject);
begin
  if cbCondPag.Checked then
    lcCondPag.Enabled := True
  else
    lcCondPag.Enabled := False;
end;

procedure TFOrdemServicoRelatorio.cbFormaPagClick(Sender: TObject);
begin
  if cbFormaPag.Checked then
    lcFormaPag.Enabled := True
  else
    lcFormaPag.Enabled := False;
end;

procedure TFOrdemServicoRelatorio.cbMaqHabFiltroClick(Sender: TObject);
begin
  if cbMaqHabFiltro.Checked then
    lcMaqEquipFiltro.Enabled := True
  else
    lcMaqEquipFiltro.Enabled := False;
end;

procedure TFOrdemServicoRelatorio.cbOperHabFiltroClick(Sender: TObject);
begin
  if cbOperHabFiltro.Checked then
    lcOperadorFiltro.Enabled := True
  else
    lcOperadorFiltro.Enabled := False;
end;

procedure TFOrdemServicoRelatorio.cbPortadClick(Sender: TObject);
begin
  if cbPortad.Checked then
    lcPortad.Enabled := True
  else
    lcPortad.Enabled := False;
end;

procedure TFOrdemServicoRelatorio.UniFrameCreate(Sender: TObject);
begin

  dtImplIni.DateTime := Date - 90;
  dtImplFim.DateTime := Date;
  dtConcIni.DateTime := Date - 90;
  dtConcFim.DateTime := Date;


  fdEmitente.Close;
  fdEmitente.SQL.Clear;
  fdEmitente.SQL.Add( ' select * from gcEmitente '
                      + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                      + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdEmitente.Active := True;


  fdOperadorMaqEquip.Close;
  fdOperadorMaqEquip.SQL.Clear;
  fdOperadorMaqEquip.SQL.Add( ' select * from gcOperadorMaqEquip '
                            + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                            + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdOperadorMaqEquip.Active := True;


  fdMaquinaEquipamento.Close;
  fdMaquinaEquipamento.SQL.Clear;
  fdMaquinaEquipamento.SQL.Add( ' select * from gcMaquinaEquipamento '
                            + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                            + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdMaquinaEquipamento.Active := True;

  fdFormaPagto.Close;
  fdFormaPagto.SQL.Clear;
  fdFormaPagto.SQL.Add( ' select * from  gcFormaPagamento '
                      + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                      + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdFormaPagto.Active := True;

  fdCondPagto.Close;
  fdCondPagto.SQL.Clear;
  fdCondPagto.SQL.Add( ' select * from  gcCondicaoPagamento '
                     + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdCondPagto.Active := True;

  fdTabPreco.Close;
  fdTabPreco.SQL.Clear;
  fdTabPreco.SQL.Add( ' select * from  gcTabelaPreco '
                     + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                     );

  fdTabPreco.Active := True;

  fdPortador.Close;
  fdPortador.SQL.Clear;
  fdPortador.SQL.Add( ' select * from  gcPortador '
                     + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdPortador.Active := True;
end;

initialization
  RegisterClass(TFOrdemServicoRelatorio);


end.
