unit UOrdemManutManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, uniGUIBaseClasses, uniImageList,
  uniDBEdit, uniMemo, uniDBMemo, uniDBDateTimePicker, uniDBRadioGroup,
  uniScrollBox, uniCheckBox, uniDBComboBox, uniDBLookupComboBox, uniRadioGroup,
  uniLabel, uniDateTimePicker, Vcl.Imaging.pngimage, uniImage, uniPanel,
  uniMultiItem, uniComboBox, uniEdit, uniGroupBox, uniDBNavigator, uniButton,
  uniBitBtn, uniToolBar, uniBasicGrid, uniDBGrid, uniPageControl, uniFileUpload;

type
  TFOrdemManutManutencao = class(TUniFrame)
    pgMenu: TUniPageControl;
    tsLista: TUniTabSheet;
    dbLista: TUniDBGrid;
    UniToolBar1: TUniToolBar;
    UniToolButton3: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniToolButton1: TUniToolButton;
    UniToolButton5: TUniToolButton;
    UniToolButton7: TUniToolButton;
    btAtualizarDados: TUniBitBtn;
    btFiltro: TUniBitBtn;
    dnNaveg: TUniDBNavigator;
    btNovoReg: TUniBitBtn;
    btRelatCSV: TUniBitBtn;
    UniGroupBox1: TUniGroupBox;
    edtFiltroPesqRapida: TUniEdit;
    cbCampoFiltro: TUniComboBox;
    UniPanel1: TUniPanel;
    gbFiltroParam: TUniGroupBox;
    imgDel: TUniImage;
    dtImplantIni: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    dtImplantFim: TUniDateTimePicker;
    rgSit: TUniRadioGroup;
    lcEmitenteFiltro: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    UniLabel5: TUniLabel;
    lcMaqEquipFiltro: TUniDBLookupComboBox;
    cbCliHabFiltro: TUniCheckBox;
    cbMaqHabFiltro: TUniCheckBox;
    imgEfetiva: TUniImage;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    imgVis: TUniImage;
    imgEdit: TUniImage;
    imgItens: TUniImage;
    imgCancela: TUniImage;
    tsManut: TUniTabSheet;
    UniToolBar2: TUniToolBar;
    UniToolButton4: TUniToolButton;
    UniToolButton6: TUniToolButton;
    btCancelaAlter: TUniBitBtn;
    btConfAlter: TUniBitBtn;
    tsItens: TUniTabSheet;
    UniGroupBox2: TUniGroupBox;
    UniLabel17: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    pgItens: TUniPageControl;
    tsItensLista: TUniTabSheet;
    UniPanel4: TUniPanel;
    btNovoItem: TUniBitBtn;
    btCancelItem: TUniBitBtn;
    edtFiltroItemItens: TUniEdit;
    UniLabel19: TUniLabel;
    dbItens: TUniDBGrid;
    tsItensManut: TUniTabSheet;
    UniLabel20: TUniLabel;
    UniPanel5: TUniPanel;
    UniBitBtn1: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    lcItemOsManut: TUniDBLookupComboBox;
    UniLabel22: TUniLabel;
    edtPreco: TUniDBFormattedNumberEdit;
    UniDBMemo1: TUniDBMemo;
    UniLabel21: TUniLabel;
    tsEfetiva: TUniTabSheet;
    UniGroupBox3: TUniGroupBox;
    UniLabel24: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel25: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniPanel6: TUniPanel;
    btEfetivar: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniGroupBox4: TUniGroupBox;
    UniPanel7: TUniPanel;
    UniLabel30: TUniLabel;
    lcPortador: TUniDBLookupComboBox;
    dgDuplic: TUniDBGrid;
    UniNativeImageList1: TUniNativeImageList;
    fqAuxiliar: TFDQuery;
    dsOrdemManutencao: TDataSource;
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
    fdMaquinaEquipamento: TFDQuery;
    fdMaquinaEquipamentocodEmpresa: TIntegerField;
    fdMaquinaEquipamentocodEstabel: TIntegerField;
    fdMaquinaEquipamentocodMaqEquip: TIntegerField;
    fdMaquinaEquipamentonomeMaqEquip: TStringField;
    dsMaquinaEquipamento: TDataSource;
    fdCidade: TFDQuery;
    fdCidadecodCidade: TIntegerField;
    fdCidadecodIbge: TIntegerField;
    fdCidadenomeCidade: TStringField;
    fdCidadeuf: TStringField;
    fdCidadepais: TStringField;
    fdCidadecidadeEstado: TStringField;
    dsCidade: TDataSource;
    fdEmitEndereco: TFDQuery;
    fdEmitEnderecocodEmpresa: TIntegerField;
    fdEmitEnderecocodEstabel: TIntegerField;
    fdEmitEnderecocodEmitente: TIntegerField;
    fdEmitEnderecocodLocal: TStringField;
    fdEmitEnderecocodCidade: TIntegerField;
    fdEmitEnderecoendereco: TStringField;
    fdEmitEnderecobairro: TStringField;
    fdEmitEnderecocep: TStringField;
    fdEmitEndereconumEndereco: TStringField;
    fdEmitEnderecocomplemento: TStringField;
    fdEmitEnderecopadrao: TIntegerField;
    fdEmitEnderecodescLocal: TStringField;
    dsEmitEndereco: TDataSource;
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
    dsOrdemManutItem: TDataSource;
    fdItem: TFDQuery;
    fdItemcodEmpresa: TIntegerField;
    fdItemcodEstabel: TIntegerField;
    fdItemcodItem: TStringField;
    fdItemdescricao: TStringField;
    fdItemcodItemFamilia: TIntegerField;
    fdItemdataImplantacao: TDateField;
    fdItemtipoControle: TIntegerField;
    fdItemsituacao: TIntegerField;
    fdItemun: TStringField;
    fdItemitemDesc: TStringField;
    dsItem: TDataSource;
    mtDuplic: TFDMemTable;
    mtDuplicparcela: TIntegerField;
    mtDuplicvalor: TFloatField;
    mtDuplicdtVencto: TDateField;
    mtDuplicavista: TIntegerField;
    dsDuplic: TDataSource;
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
    fdOrdemManutencao: TFDQuery;
    fdOrdemManutItem: TFDQuery;
    fdOrdemManutItemcodEmpresa: TIntegerField;
    fdOrdemManutItemcodEstabel: TIntegerField;
    fdOrdemManutItemcodOrdemManutencao: TIntegerField;
    fdOrdemManutItemcodItem: TStringField;
    fdOrdemManutItempreco: TBCDField;
    fdOrdemManutItemobservacao: TStringField;
    fdOrdemManutencaoFC_DSC_SIT: TStringField;
    fdOrdemManutencaoFC_DSC_TIPO_ORDEM: TStringField;
    fdOrdemManutencaoFC_IMG_EDIT: TStringField;
    fdOrdemManutencaoFC_IMG_VIS: TStringField;
    fdOrdemManutencaoFC_IMG_DEL: TStringField;
    fdOrdemManutencaoFC_NOME_EMITENTE: TStringField;
    fdOrdemManutencaoFC_NOME_CIDADE: TStringField;
    fdOrdemManutencaoFC_NOME_FORMA_PAG: TStringField;
    fdOrdemManutencaoFC_NOME_COND_PAG: TStringField;
    fdOrdemManutencaoFC_NOME_MAQ_EQUIP: TStringField;
    fdOrdemManutencaoFC_IMG_ITENS: TStringField;
    fdOrdemManutencaoFC_IMG_EFETIVA: TStringField;
    fdOrdemManutencaoFC_IMG_CANCELAOS: TStringField;
    fdEmitenteContasBancaria: TFDQuery;
    fdEmitenteContasBancariacodEmpresa: TIntegerField;
    fdEmitenteContasBancariacodEstabel: TIntegerField;
    fdEmitenteContasBancariacodEmitente: TIntegerField;
    fdEmitenteContasBancariacodBanco: TIntegerField;
    fdEmitenteContasBancariaagencia: TStringField;
    fdEmitenteContasBancariacontaCorrente: TStringField;
    fdEmitenteContasBancariabancoConta: TStringField;
    dsEmitenteContasBancaria: TDataSource;
    fdOrdemManutencaocodEmpresa: TIntegerField;
    fdOrdemManutencaocodEstabel: TIntegerField;
    fdOrdemManutencaocodOrdemManutencao: TIntegerField;
    fdOrdemManutencaodescricao: TStringField;
    fdOrdemManutencaoobservacao: TStringField;
    fdOrdemManutencaotipoOrdem: TIntegerField;
    fdOrdemManutencaodataImplantacao: TDateField;
    fdOrdemManutencaovalorTotal: TBCDField;
    fdOrdemManutencaosituacao: TIntegerField;
    fdOrdemManutencaodataConclusao: TDateField;
    fdOrdemManutencaocodEmitente: TIntegerField;
    fdOrdemManutencaocodFormaPagto: TIntegerField;
    fdOrdemManutencaocodCondPagto: TIntegerField;
    fdOrdemManutencaocodMaqEquip: TIntegerField;
    fdOrdemManutencaomotivoCancelamento: TStringField;
    fdOrdemManutencaodataCancelamento: TDateField;
    fdOrdemManutencaocodUsuarImplant: TStringField;
    fdOrdemManutencaocodUsuarCancelamento: TStringField;
    fdOrdemManutencaocodPortador: TIntegerField;
    fdOrdemManutencaocodUsuarConclusao: TStringField;
    fdOrdemManutencaocodBanco: TIntegerField;
    fdOrdemManutencaoagencia: TStringField;
    fdOrdemManutencaocontaCorrente: TStringField;
    fdOrdemManutencaodthrPrevManutencao: TSQLTimeStampField;
    fdOrdemManutencaonomeTecnicos: TStringField;
    fdOrdemManutencaodescAtividadesExecutadas: TStringField;
    fdOrdemManutencaonomeSolicitante: TStringField;
    fdOrdemManutencaodescricaoSolicitacaoManut: TStringField;
    fdOrdemManutencaolocalManutencao: TStringField;
    UniLabel31: TUniLabel;
    UniDBMemo3: TUniDBMemo;
    UniScrollBox1: TUniScrollBox;
    sbManut: TUniScrollBox;
    edtDesc: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    edtCod: TUniDBEdit;
    dtImplant: TUniDBDateTimePicker;
    UniLabel1: TUniLabel;
    lcCliente: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel11: TUniLabel;
    lcMaqEquip: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;
    lcFormaPag: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    lcCondPag: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    lcBanco: TUniDBLookupComboBox;
    UniDBMemo2: TUniDBMemo;
    UniLabel8: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel16: TUniLabel;
    pgMnManut: TUniPageControl;
    tsMnDadosGerais: TUniTabSheet;
    UniLabel6: TUniLabel;
    mmObs: TUniDBMemo;
    UniLabel15: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel23: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    rgTipoOrdem: TUniDBRadioGroup;
    fdOrdemManutItemFC_IMG_EDIT: TStringField;
    fdOrdemManutItemFC_IMG_DEL: TStringField;
    fdOrdemManutItemFC_DESC_ITEM: TStringField;
    fdOrdemManutItemnrNotaFiscal: TStringField;
    fdOrdemManutItemserieNF: TStringField;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit9: TUniDBEdit;
    UniLabel26: TUniLabel;
    UniLabel29: TUniLabel;
    btXML: TUniBitBtn;
    UniFileUpload1: TUniFileUpload;
    mtItensXML: TFDMemTable;
    mtItensXMLFC_EAN: TStringField;
    mtItensXMLFC_C_PROD: TStringField;
    mtItensXMLFC_V_PROD: TFloatField;
    mtItensXMLFC_ITEM_EXISTE: TBooleanField;
    fdItXML: TFDQuery;
    fdItXMLcodEAN: TStringField;
    fdItXMLcodEmpresa: TIntegerField;
    fdItXMLcodEstabel: TIntegerField;
    fdItXMLcodItem: TStringField;
    fdItXMLdescricao: TStringField;
    fdItXMLcodItemFamilia: TIntegerField;
    fdItXMLdataImplantacao: TDateField;
    fdItXMLtipoControle: TIntegerField;
    fdItXMLsituacao: TIntegerField;
    fdItXMLun: TStringField;
    fdItXMLitemDesc: TStringField;
    mtItensXMLcodItem: TStringField;
    mtItensXMLFC_NF: TStringField;
    mtItensXMLFC_SERIE: TStringField;
    procedure UniFrameCreate(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure btNovoRegClick(Sender: TObject);
    procedure cbCliHabFiltroClick(Sender: TObject);
    procedure cbMaqHabFiltroClick(Sender: TObject);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure edtFiltroPesqRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtFiltroPesqRapidaChange(Sender: TObject);
    procedure dbListaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure btConfAlterClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure btNovoItemClick(Sender: TObject);
    procedure btCancelItemClick(Sender: TObject);
    procedure edtFiltroItemItensKeyPress(Sender: TObject; var Key: Char);
    procedure edtFiltroItemItensChange(Sender: TObject);
    procedure btEfetivarClick(Sender: TObject);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure dbItensCellClick(Column: TUniDBGridColumn);
    procedure dbItensColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbItensFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure fdOrdemManutencaoCalcFields(DataSet: TDataSet);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure fdOrdemManutItemCalcFields(DataSet: TDataSet);
    procedure dbListaColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure btXMLClick(Sender: TObject);
    procedure UniFileUpload1Completed(Sender: TObject; AStream: TFileStream);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure pDeleteConfirmar(Sender: TComponent; AResult:Integer);
    procedure SortColumn(const FieldName: string; Dir: Boolean);
    procedure pFiltroRapido;
    procedure pConfirmaRegKeyPress(Sender: TObject; var Key: Char);
    procedure pLocalEmitAtualiza;

    procedure SortColumnItens(const FieldName: string; Dir: Boolean);
    procedure pFiltroRapItens;

    procedure pDeleteItemConfirmar(Sender: TComponent; AResult:Integer);
    procedure pCancelarOMConfirmar(Sender: TComponent; AResult:Integer);
    procedure pCancelarOMRetMensagem(Sender: TComponent; AResult:Integer);
    procedure pEfetivarOMConfirmar(Sender: TComponent; AResult:Integer);
    procedure pConfirmaIncItXML(Sender: TComponent; AResult:Integer);
  end;

implementation

{$R *.dfm}

uses MainModule, Main, UCaixaTextoGlobal, UBOOrdemManutencao, UBOOrdemManutItem
, XMLIntf, XMLDoc;



procedure TFOrdemManutManutencao.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdOrdemManutencao.Active := True;

    sSQL := ' select * from gcOrdemManutencao '
          + ' where codEmpresa = '    + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = '    + IntToStr(MainForm.iCodEstabel)
          + '   and dataImplantacao >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantIni.DateTime))
          + '   and dataImplantacao <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantFim.DateTime))
          ;

    if cbCliHabFiltro.Checked  then
      sSQL := sSQL + ' and codEmitente = ' + IntToStr(fdEmitentecodEmitente.AsInteger);
    if cbMaqHabFiltro.Checked then
      sSQL := sSQL + ' and codMaqEquip = ' + IntToStr(fdMaquinaEquipamentocodMaqEquip.AsInteger);
    if rgSit.ItemIndex > 0 then
      sSQL := sSQL + ' and situacao = ' + IntToStr(rgSit.ItemIndex) ;



    fdOrdemManutencao.Close;
    fdOrdemManutencao.SQL.Clear;
    fdOrdemManutencao.SQL.Add(sSQL);
    fdOrdemManutencao.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

end;

procedure TFOrdemManutManutencao.btCancelaAlterClick(Sender: TObject);
begin
  if fdOrdemManutencao.State in [dsEdit,dsInsert] then
    fdOrdemManutencao.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFOrdemManutManutencao.btCancelItemClick(Sender: TObject);
begin
  fdOrdemManutItem.Cancel;

  tsItens.TabVisible := False;
  tsLista.TabVisible := True ;
  pgMenu.TabIndex     := 0;
end;

procedure TFOrdemManutManutencao.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin


  sRespValid := fBOOrdemManutencao_ValidaPostDelete(fdOrdemManutencao,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    if fdOrdemManutencao.State in [dsEdit,dsInsert] then begin
      fdOrdemManutencaoagencia.AsString := fdEmitenteContasBancariaagencia.AsString;
      fdOrdemManutencaocontaCorrente.AsString := fdEmitenteContasBancariacontaCorrente.AsString;
    end;

    fdOrdemManutencao.Post;

  except
    on e : exception do begin
      MessageDlg('Erro ao gravar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;

end;

procedure TFOrdemManutManutencao.btEfetivarClick(Sender: TObject);
var
sRespValid : string;
begin

  try
    sRespValid := fBOOrdemManutencao_ValidaPostDelete(fdOrdemManutencao,'EFETIVAR');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao efetivar OM: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;
  except
    on e : exception do begin
      MessageDlg('Erro ao efetivar OM: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

  MessageDlg('Tem certeza que deseja Efetivar a OM abaixo?' + chr(10) + fdOrdemManutencaodescricao.AsString  ,mtConfirmation,mbYesNo, pEfetivarOMConfirmar);

end;

procedure TFOrdemManutManutencao.btFiltroClick(Sender: TObject);
begin
  if btFiltro.ImageIndex = 10 then begin
    gbFiltroParam.Visible := True;
    btFiltro.ImageIndex := 11;
  end
  else begin
    gbFiltroParam.Visible := False;
    btFiltro.ImageIndex := 10;
  end;
end;

procedure TFOrdemManutManutencao.btNovoItemClick(Sender: TObject);
begin
  if fdOrdemManutencaosituacao.AsInteger > 1 then begin
    MessageDlg('Situa��o da OM n�o permite manuten��o!',mtError,[mbOK],nil);
    Exit;
  end;

  fdOrdemManutItem.Insert;
  fdOrdemManutItemcodEmpresa.AsInteger  := MainForm.iCodEmpresa;
  fdOrdemManutItemcodEstabel.AsInteger  := MainForm.iCodEstabel;
  fdOrdemManutItemcodOrdemManutencao.AsInteger := fdOrdemManutencaocodOrdemManutencao.AsInteger;
  fdOrdemManutItempreco.AsFloat         := 0;

  lcItemOsManut .Enabled  := True;
  tsItensLista.TabVisible := False;
  tsItensManut.TabVisible := True ;
  pgItens.TabIndex        := 1;


  lcItemOsManut.SetFocus;
end;

procedure TFOrdemManutManutencao.btNovoRegClick(Sender: TObject);
begin
  fdOrdemManutencao.Insert;
  fdOrdemManutencaocodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdOrdemManutencaocodEstabel.AsInteger   := MainForm.iCodEstabel;
  fdOrdemManutencaotipoOrdem.AsInteger    := 1;
  fdOrdemManutencaosituacao.AsInteger     := 1;
  fdOrdemManutencaodataImplantacao.AsDateTime := Now;
  fdOrdemManutencaovalorTotal.AsFloat     := 0;
  fdOrdemManutencaodthrPrevManutencao.AsDateTime := Now;
  fdOrdemManutencaodescricaoSolicitacaoManut.AsString := '';
  fdOrdemManutencaocodUsuarImplant.AsString := MainForm.sCodUsuario;


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codOrdemManutencao) as seqReg from gcOrdemManutencao ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdOrdemManutencaocodOrdemManutencao.AsInteger := 1
  else
    fdOrdemManutencaocodOrdemManutencao.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;

  sbManut.Enabled       := True;
  edtCod.Enabled       := True;
  tsManut.Caption      := 'Manuten��o (Inclus�o)';
  tsManut.TabVisible   := True;
  btConfAlter.Enabled    := True;
  edtCod.SetFocus;
  tsLista.TabVisible   := False ;

  edtDesc.SetFocus;

  pgMenu.TabIndex := 1;
end;

procedure TFOrdemManutManutencao.btXMLClick(Sender: TObject);
begin
 UniFileUpload1.Execute;
end;

procedure TFOrdemManutManutencao.cbCliHabFiltroClick(Sender: TObject);
begin
  if cbCliHabFiltro.Checked then begin
    lcEmitenteFiltro.Enabled := True;
  end
  else
    lcEmitenteFiltro.Enabled := False;
end;

procedure TFOrdemManutManutencao.cbMaqHabFiltroClick(Sender: TObject);
begin
  if cbMaqHabFiltro.Checked then begin
    lcMaqEquipFiltro.Enabled := True;
  end
  else
    lcMaqEquipFiltro.Enabled := False;
end;

procedure TFOrdemManutManutencao.dbItensCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    if fdOrdemManutItem.IsEmpty then
      Exit;

    if fdOrdemManutencaosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OM n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

    fdOrdemManutItem.Edit;

    lcItemOsManut .Enabled  := False;
    tsItensLista.TabVisible := False;
    tsItensManut.TabVisible := True ;
    pgItens.TabIndex        := 1;


    edtPreco.SetFocus;

  end
  else
  if Column.FieldName = 'FC_IMG_DEL' then begin
    if fdOrdemManutItem.IsEmpty then
      Exit;

    if fdOrdemManutencaosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OM n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

    sRespValid := fBOOrdemManutItem_ValidaPostDelete(fdOrdemManutItem,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Item abaixo?' + chr(10) +  fdOrdemManutItemcodItem.AsString  ,mtConfirmation,mbYesNo, pDeleteItemConfirmar);


  end;

end;

procedure TFOrdemManutManutencao.dbItensColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  SortColumnItens(Column.FieldName, Direction);
end;

procedure TFOrdemManutManutencao.dbItensFieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'FC_IMG_EDIT') then
  begin
    DoNotDispose := True;
    OutImage := imgEdit.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_DEL') then
  begin
    DoNotDispose := True;
    OutImage := imgDel.Picture.Graphic;
  end;
end;

procedure TFOrdemManutManutencao.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid, sMsgAux : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdOrdemManutencao.IsEmpty then
      Exit;

    if fdOrdemManutencaosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OM n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

    fdOrdemManutencao.Edit;
    pLocalEmitAtualiza;

    sbManut.Enabled          := True;
    edtCod.Enabled    := False;
    tsManut.Caption          := 'Manuten��o (Edi��o)';
    tsManut.TabVisible       := True;
    btConfAlter.Enabled      := True;
    tsLista.TabVisible       := False ;
    edtDesc.SetFocus;

    pgMenu.TabIndex := 1;

  end
  else
  if Column.FieldName = 'FC_IMG_VIS' then begin
    //ShowMessageN('VISUALIZA');
    if fdOrdemManutencao.IsEmpty then
      Exit;



  end
  else
  if Column.FieldName = 'FC_IMG_DEL' then begin
    //ShowMessageN('DELETE');
    if fdOrdemManutencao.IsEmpty then
      Exit;

    if fdOrdemManutencaosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OM n�o permite exclus�o!',mtError,[mbOK],nil);
      Exit;
    end;

    sRespValid := fBOOrdemManutencao_ValidaPostDelete(fdOrdemManutencao,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar a OM abaixo?' + chr(10) + fdOrdemManutencaodescricao.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);


  end
  else
  if Column.FieldName = 'FC_IMG_ITENS' then begin
    if fdOrdemManutencao.IsEmpty then
      Exit;

    tsLista.TabVisible := False;
    tsManut.TabVisible := False;
    tsItens.TabVisible := True;
    pgMenu.TabIndex    := 2;

    pgItens.TabIndex := 0;
    tsItensLista.TabVisible := True;
    tsItensManut.TabVisible := False;

    fdOrdemManutItem.Close;
    fdOrdemManutItem.SQL.Clear;
    fdOrdemManutItem.SQL.Add (' select * from gcOrdemManutItem ' +
                             ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                             '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) +
                             '   and codOrdemManutencao  = ' + IntToStr(fdOrdemManutencaocodOrdemManutencao.AsInteger)
    );
    fdOrdemManutItem.Active := True;

  end
  else
  if Column.FieldName = 'FC_IMG_CANCELAOS' then begin
    if fdOrdemManutencao.IsEmpty then
      Exit;

    fqAuxiliar.Close;
    fqAuxiliar.SQL.Clear;
    fqAuxiliar.SQL.Add( ' select * from gcUsuarioPermisPrograma ' +
                       ' where codEmpresa   = ' + IntToStr(MainForm.iCodEmpresa) +
                       '   and codEstabel   = ' + IntToStr(MainForm.iCodEstabel) +
                       '   and codUsuario   = ' + QuotedStr(MainForm.sCodUsuario) +
                       '   and codPrograma  = ' + QuotedStr('EFETIVA CANCELA OM')
    );
    fqAuxiliar.Active := True;
    if fqAuxiliar.IsEmpty then begin
      MessageDlg('Usu�rio n�o possu� permiss�o para Cancelar OM!' ,mtError,[mbOK],nil);
      Exit;
    end;


    if fdOrdemManutencaosituacao.AsInteger < 3 then begin

      sMsgAux := '';
      if fdOrdemManutencaosituacao.AsInteger = 2 then begin

        fqAuxiliar.Close;
        fqAuxiliar.SQL.Clear;
        fqAuxiliar.SQL.Add( ' select situacao from gcTitulosAPagar ' +
                             ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                             '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) +
                             '   and codOrdemManutencao  = ' + IntToStr(fdOrdemManutencaocodOrdemManutencao.AsInteger) +
                             '   and situacao         > 1 '
                             );
        fqAuxiliar.Active := True;
        if not fqAuxiliar.IsEmpty then begin
          MessageDlg('J� existem movimentos financeiros para os t�tulos da OM, n�o pode ser cancelada!',mtError,[mbOK],nil);
          Exit;
        end;
        sMsgAux := chr(10)+  'Aten��o - T�tulos financeiros ser�o eliminados!';
      end;

      MessageDlg('Tem certeza que deseja Cancelar a OM abaixo?' + chr(10) + fdOrdemManutencaodescricao.AsString + sMsgAux
        ,mtConfirmation,mbYesNo, pCancelarOMConfirmar);
    end
    else begin
      MessageDlg('Situa��o da OM n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

  end
  else
  if Column.FieldName = 'FC_IMG_EFETIVA' then begin
    if fdOrdemManutencao.IsEmpty then
      Exit;

    fqAuxiliar.Close;
    fqAuxiliar.SQL.Clear;
    fqAuxiliar.SQL.Add( ' select * from gcUsuarioPermisPrograma ' +
                       ' where codEmpresa   = ' + IntToStr(MainForm.iCodEmpresa) +
                       '   and codEstabel   = ' + IntToStr(MainForm.iCodEstabel) +
                       '   and codUsuario   = ' + QuotedStr(MainForm.sCodUsuario) +
                       '   and codPrograma  = ' + QuotedStr('EFETIVA CANCELA OM')
    );
    fqAuxiliar.Active := True;
    if fqAuxiliar.IsEmpty then begin
      MessageDlg('Usu�rio n�o possu� permiss�o para Efetivar OM!' ,mtError,[mbOK],nil);
      Exit;
    end;

    if fdOrdemManutencaosituacao.AsInteger = 1 then begin

      if fdOrdemManutencaovalorTotal.AsFloat <= 0 then begin
        MessageDlg('Valor da OM deve ser maior que zero!' ,mtError,[mbOK],nil);
        Exit;
      end;

      fdPortador.Close;
      fdPortador.SQL.Clear;
      fdPortador.SQL.Add( ' select * from gcPortador ' +
                          ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) );
      fdPortador.Active := True;

      fBOOrdemManutencao_CalcParcelasDuplc(fdOrdemManutencao,'',mtDuplic);

      fdOrdemManutencao.Edit; //editar para gravar o portador

      tsLista.TabVisible := False;
      tsManut.TabVisible := False;
      tsEfetiva.TabVisible := True;
      pgMenu.TabIndex    := 3;

      lcPortador.SetFocus;

    end
    else begin
      MessageDlg('Situa��o da OM n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

  end
end;

procedure TFOrdemManutManutencao.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  SortColumn(Column.FieldName, Direction);
end;

procedure TFOrdemManutManutencao.dbListaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  case fdOrdemManutencaosituacao.AsInteger of
    2:Attribs.Color := clLime;
    3:Attribs.Color := clRed;
  end;
end;

procedure TFOrdemManutManutencao.dbListaFieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'FC_IMG_EDIT') then
  begin
    DoNotDispose := True;
    OutImage := imgEdit.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_VIS') then
  begin
    DoNotDispose := True;
    OutImage := imgVis.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_DEL') then
  begin
    DoNotDispose := True;
    OutImage := imgDel.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_ITENS') then
  begin
    DoNotDispose := True;
    OutImage := imgItens.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_EFETIVA') then
  begin
    DoNotDispose := True;
    OutImage := imgEfetiva.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_CANCELAOS') then
  begin
    DoNotDispose := True;
    OutImage := imgCancela.Picture.Graphic;
  end;
end;

procedure TFOrdemManutManutencao.edtFiltroItemItensChange(Sender: TObject);
begin
  if Trim(edtFiltroItemItens.Text) = '' then begin
    fdOrdemManutItem.Filtered  := False;
    fdOrdemManutItem.filter    := '';
  end;
end;

procedure TFOrdemManutManutencao.edtFiltroItemItensKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroItemItens.Text) = '' then begin
    fdOrdemManutItem.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapItens;
  end;
end;

procedure TFOrdemManutManutencao.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdOrdemManutencao.Filtered  := False;
    fdOrdemManutencao.filter    := '';
  end;
end;

procedure TFOrdemManutManutencao.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdOrdemManutencao.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFOrdemManutManutencao.fdOrdemManutencaoCalcFields(DataSet: TDataSet);
begin
  case DataSet.FieldByName('situacao').AsInteger of
  1: DataSet.FieldByName('FC_DSC_SIT').AsString := 'Aberta';
  2: DataSet.FieldByName('FC_DSC_SIT').AsString := 'Conclu�da';
  3: DataSet.FieldByName('FC_DSC_SIT').AsString := 'Cancelada';
  end;
  case DataSet.FieldByName('tipoOrdem').AsInteger of
  1: DataSet.FieldByName('FC_DSC_TIPO_ORDEM').AsString := 'Preventiva';
  2: DataSet.FieldByName('FC_DSC_TIPO_ORDEM').AsString := 'Preditiva';
  3: DataSet.FieldByName('FC_DSC_TIPO_ORDEM').AsString := 'Planejada';
  4: DataSet.FieldByName('FC_DSC_TIPO_ORDEM').AsString := 'Corretiva';
  end;
  if fdEmitente.Locate('codEmitente',DataSet.FieldByName('codEmitente').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_EMITENTE').AsString := fdEmitentenomeEmitente.AsString;
  if fdMaquinaEquipamento.Locate('codMaqEquip',DataSet.FieldByName('codMaqEquip').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_MAQ_EQUIP').AsString := fdMaquinaEquipamentonomeMaqEquip.AsString;
  if fdFormaPagto.Locate('codFormaPagto',DataSet.FieldByName('codFormaPagto').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_FORMA_PAG').AsString := fdFormaPagtonomeFormaPagto.AsString;
  if fdCondPagto.Locate('codCondPagto',DataSet.FieldByName('codCondPagto').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_COND_PAG').AsString := fdCondPagtonomeCondPagto.AsString;

end;

procedure TFOrdemManutManutencao.fdOrdemManutItemCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('FC_DESC_ITEM').AsString := '';
  if fdItem.Locate('codItem',DataSet.FieldByName('codItem').AsString,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_DESC_ITEM').AsString := fdItemdescricao.AsString;
end;

procedure TFOrdemManutManutencao.pCancelarOMRetMensagem(Sender: TComponent;
  AResult: Integer);
var
  sRespValid : string;
begin
  if AResult = mrYes then begin
    try
      sRespValid := fBOOrdemManutencao_CancelaOM(fdOrdemManutencao, TFCaixaTextoGlobal(Sender).mmMsg.Lines.Text );
      if sRespValid <> 'OK' then begin
        sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
        MessageDlg('Erro ao Cancelar OM: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
        Exit;
      end;
      dbLista.Refresh;
    except
      on e : exception do begin
        MessageDlg('Erro ao Cancelar OM: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;

  end;
end;

procedure TFOrdemManutManutencao.pCancelarOMConfirmar(Sender: TComponent;
  AResult: Integer);
var
sRespValid : string;
begin
  if AResult = mrYes then begin


    FCaixaTextoGlobal.Caption := 'Cancelamento OM';
    FCaixaTextoGlobal.gbMensagem.Caption := 'Motivo Cancelamento';
    FCaixaTextoGlobal.gbMensagem.SetFocus;
    FCaixaTextoGlobal.ShowModal(pCancelarOMRetMensagem);

    {try

      sRespValid := fBOOrdemServico_CancelaOS(fdOrdemManutItem, '');
      if sRespValid <> 'OK' then begin

        sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
        MessageDlg('Erro ao Cancelar OS: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
        Exit;
      end;

    except
      on e : exception do begin
        MessageDlg('Erro ao Cancelar OS com mensagem: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;}
  end;
end;

procedure TFOrdemManutManutencao.pConfirmaIncItXML(Sender: TComponent;
  AResult: Integer);
var
i : integer;
begin

  if AResult = mrYes then begin

    if not mtItensXML.IsEmpty then begin

      mtItensXML.First;
      for I := 0 to mtItensXML.RecordCount - 1 do begin

        if fdOrdemManutItem.Locate('codItem',mtItensXMLcodItem.AsString,[loCaseInsensitive]) then begin
          mtItensXML.Next;
          Continue;
        end;
        if not fdItem.Locate('codItem',mtItensXMLcodItem.AsString,[loCaseInsensitive]) then begin
          mtItensXML.Next;
          Continue;
        end;
        if mtItensXMLcodItem.AsString = '' then begin
          mtItensXML.Next;
          Continue;
        end;

        fdOrdemManutItem.Insert;
        fdOrdemManutItemcodEmpresa.AsInteger            := MainForm.iCodEmpresa;
        fdOrdemManutItemcodEstabel.AsInteger            := MainForm.iCodEstabel;
        fdOrdemManutItemcodOrdemManutencao.AsInteger    := fdOrdemManutencaocodOrdemManutencao.AsInteger;
        fdOrdemManutItemcodItem.AsString                := mtItensXMLcodItem.AsString;
        fdOrdemManutItempreco.AsFloat                   := mtItensXMLFC_V_PROD.AsFloat;
        fdOrdemManutItemnrNotaFiscal.AsString           := mtItensXMLFC_NF.AsString;
        fdOrdemManutItemserieNF.AsString                := mtItensXMLFC_SERIE.AsString;
        fdOrdemManutItem.Post;

        mtItensXML.Next;
      end;
    end;

    MessageDlg('Processo conclu�do com sucesso!' ,mtInformation,[mbOK],nil);
  end;

end;

procedure TFOrdemManutManutencao.pConfirmaRegKeyPress(Sender: TObject;
  var Key: Char);
begin
//
end;

procedure TFOrdemManutManutencao.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdOrdemManutencao.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFOrdemManutManutencao.pDeleteItemConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdOrdemManutItem.Delete;

      fdOrdemManutencao.Edit;
      fdOrdemManutencaovalorTotal.AsFloat := fBOOrdemManutencao_CalcVlTotal(fdOrdemManutencaocodOrdemManutencao.AsInteger);
      fdOrdemManutencao.Post;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFOrdemManutManutencao.pEfetivarOMConfirmar(Sender: TComponent;
  AResult: Integer);
var
sRespValid : string;
begin

  if AResult = mrYes then begin
    try

      btEfetivar.ShowMask('Efetivando OM...');
      UniSession.Synchronize();

      try

        fdOrdemManutencao.Post;

        sRespValid := fBOOrdemManutencao_EfetivarOM(fdOrdemManutencao,'',mtDuplic);
        if sRespValid <> 'OK' then begin

          sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
          MessageDlg('Erro ao efetivar OM: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
          Exit;
        end;

        fdOrdemManutencao.Cancel;
        dbLista.Refresh;

        tsEfetiva.TabVisible := False;
        tsLista.TabVisible := True ;
        pgMenu.TabIndex     := 0;

      except
        on e : exception do begin
          MessageDlg('Erro ao efetivar OM: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
          Exit;
        end;
      end;
    finally
      btEfetivar.HideMask;
      UniSession.Synchronize();
    end;
  end;
end;

procedure TFOrdemManutManutencao.pFiltroRapido;
begin
  fdOrdemManutencao.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdOrdemManutencao.Filter    := '    (upper(codOrdemManutencao)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdOrdemManutencao.Filter    := '    (upper(codOrdemManutencao)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdOrdemManutencao.Filter    := ' (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdOrdemManutencao.Filtered  := True;
  end;
end;

procedure TFOrdemManutManutencao.pFiltroRapItens;
begin
  fdOrdemManutItem.Filtered  := False;
  if Trim(edtFiltroItemItens.Text) <> '' then begin

    fdOrdemManutItem.Filter    := '    (upper(codItem)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroItemItens.Text) + '%') + ') '
                               + ' or (upper(FC_DESC_ITEM) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroItemItens.Text) + '%') + ') '
    ;
    fdOrdemManutItem.Filtered  := True;
  end;
end;

procedure TFOrdemManutManutencao.pLocalEmitAtualiza;
begin
  fdEmitEndereco.Close;
  fdEmitEndereco.SQL.Clear;
  fdEmitEndereco.SQL.Add( ' select gcEmitenteEndereco.*, ' +
                          ' concat(gcEmitenteEndereco.codLocal,''-'',gcEmitenteEndereco.endereco,''-'',gcCidade.nomeCidade,''-'',gcCidade.uf) as descLocal ' +
                          ' from gcEmitenteEndereco ' +
                          ' inner join gcCidade on (gcEmitenteEndereco.codCidade = gcCidade.codCidade) '
                          + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                          + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                          + '   and codEmitente  = ' + IntToStr(fdEmitentecodEmitente.AsInteger));
  fdEmitEndereco.Active := True;
end;

procedure TFOrdemManutManutencao.SortColumn(const FieldName: string;
  Dir: Boolean);
begin
  if Dir then
    fdOrdemManutencao.IndexName := FieldName+'_index_asc'
  else
    fdOrdemManutencao.IndexName := FieldName+'_index_des';
end;

procedure TFOrdemManutManutencao.SortColumnItens(const FieldName: string;
  Dir: Boolean);
begin
  if Dir then
    fdOrdemManutItem.IndexName := FieldName+'_index_asc'
  else
    fdOrdemManutItem.IndexName := FieldName+'_index_des';
end;

procedure TFOrdemManutManutencao.UniBitBtn1Click(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOOrdemManutItem_ValidaPostDelete(fdOrdemManutItem, 'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdOrdemManutItem.Post;

    fdOrdemManutencao.Edit;
    fdOrdemManutencaovalorTotal.AsFloat := fBOOrdemManutencao_CalcVlTotal(fdOrdemManutencaocodOrdemManutencao.AsInteger);
    fdOrdemManutencao.Post;

    tsItensLista.TabVisible := True;
    tsItensManut.TabVisible := False ;
    pgItens.TabIndex     := 0;

  except
    on e : exception do begin
      MessageDlg('Erro ao gravar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;



end;

procedure TFOrdemManutManutencao.UniBitBtn2Click(Sender: TObject);
begin
  fdOrdemManutItem.Cancel;

  tsItensLista.TabVisible := True;
  tsItensManut.TabVisible := False ;
  pgItens.TabIndex     := 0;
end;

procedure TFOrdemManutManutencao.UniBitBtn4Click(Sender: TObject);
begin
  fdOrdemManutencao.Cancel;

  tsEfetiva.TabVisible := False;
  tsLista.TabVisible := True ;
  pgMenu.TabIndex     := 0;
end;

procedure TFOrdemManutManutencao.UniFileUpload1Completed(Sender: TObject;
  AStream: TFileStream);
var
  Doc: IXMLDocument;
  Data: IXMLNode;
  Node, infNFE, det, prod, prodNode, ide: IXMLNode;
  I,j,l,k,e,g: Integer;
  sNode, sItensCarrega, scNF, sSerie : string;
  rVlXML : Real;
begin

  try

    mtItensXML.EmptyDataSet;
    sItensCarrega := '';
    scNF    := '';
    sSerie  := '';

    try

      if not fdItXML.Active then begin
        fdItXML.Close;
        fdItXML.SQL.Clear;
        fdItXML.SQL.Add('select gcItem.*, ' +
                       'concat(codItem,'' - '', descricao) as itemDesc ' +
                       'from gcItem '
                       + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                       + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                      );
        fdItXML.Active := True;
      end;

      Doc := LoadXMLDocument(AStream.FileName);
      Data := Doc.DocumentElement;
      for I := 0 to Data.ChildNodes.Count-1 do
      begin
        Node := Data.ChildNodes[I];

        for j := 0 to Node.ChildNodes.Count - 1 do begin
          infNFE := Node.ChildNodes[j];
          if infNFE.LocalName = 'infNFe' then begin
            for l := 0 to infNFE.ChildNodes.Count - 1 do begin
              det :=  infNFE.ChildNodes[l];

              if det.LocalName = 'ide' then begin
                for k := 0 to det.ChildNodes.Count - 1 do begin
                  ide := det.ChildNodes[k];
                  if ide.LocalName = 'cNF' then begin
                    scNF := ide.Text;
                  end
                  else
                  if ide.LocalName = 'serie' then begin
                    sSerie := ide.Text;
                    Break;
                  end;
                end;
              end;


              if det.LocalName = 'det' then begin
                for k := 0 to det.ChildNodes.Count - 1 do begin
                  prod := det.ChildNodes[k];
                  if prod.LocalName = 'prod' then begin

                    mtItensXML.Insert;
                    mtItensXMLFC_ITEM_EXISTE.AsBoolean  := False;
                    mtItensXMLFC_NF.AsString            := scNF;
                    mtItensXMLFC_SERIE.AsString         := sSerie;

                    for e := 0 to prod.ChildNodes.Count - 1 do begin
                      prodNode := prod.ChildNodes[e];
                      if prodNode.LocalName = 'cEAN' then begin
                        //sNode := prodNode.Text ;
                        mtItensXMLFC_EAN.AsString     := prodNode.Text;

                        if fdItXML.Locate('codEan',prodNode.Text,[loCaseInsensitive]) then begin
                          sItensCarrega := sItensCarrega + fdItXMLcodItem.AsString + chr(10);
                          mtItensXMLFC_ITEM_EXISTE.AsBoolean  := True;
                          mtItensXMLcodItem.AsString          := fdItXMLcodItem.AsString;
                        end;
                      end
                      else
                      if prodNode.LocalName = 'cProd' then begin
                        mtItensXMLFC_C_PROD.AsString  := prodNode.Text;
                      end
                      else
                      if prodNode.LocalName = 'vProd' then begin
                        rVlXML := StrToFloatDef(StringReplace(prodNode.Text,'.',',',[rfReplaceAll]),0);
                        mtItensXMLFC_V_PROD.AsFloat  := rVlXML;
                      end;
                    end;

                    if fdOrdemManutItem.Locate('codItem',mtItensXMLcodItem.AsString,[loCaseInsensitive]) then begin
                      mtItensXML.Cancel;
                    end
                    else begin
                      mtItensXML.Post;
                    end;
                  end;
                end;
              end;
            end;
          end;
        end;
      end;

      if sItensCarrega <> '' then begin
        MessageDlg('Confirma inclus�o do(s) item(s) abaixo?' + chr(10) + sItensCarrega ,mtConfirmation,mbYesNo,pConfirmaIncItXML);
      end
      else begin
        MessageDlg('N�o foram localizados itens, verifique se o EAN est� devidamente cadastro no item e tente novamente!' ,mtInformation,[mbOK],nil);

      end;

    except
      on e : exception do begin
        MessageDlg('Erro ao carregar arquivos XML: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  finally
    //FreeAndNil(Doc);
    //FreeAndNil(Data);
  end;

end;

procedure TFOrdemManutManutencao.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  mtItensXML.CreateDataSet;
  mtItensXML.EmptyDataSet;

  tsManut.TabVisible  := False;
  tsItens.TabVisible  := False;
  pgMenu.TabIndex  := 0;

  dtImplantIni.DateTime := Date - 30;
  dtImplantFim.DateTime := Date;


  with fdOrdemManutencao do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdOrdemManutencao.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdOrdemManutencao.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;
  with fdOrdemManutItem do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdOrdemManutItem.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdOrdemManutItem.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;

  fdOrdemManutencao.IndexName := 'idxOrdCodAsc';
  fdOrdemManutItem.IndexName := 'idxOrdCodAsc';

  mtDuplic.CreateDataSet;
  mtDuplic.EmptyDataSet;

  fdEmitente.Close;
  fdEmitente.SQL.Clear;
  fdEmitente.SQL.Add( ' select * from gcEmitente '
                      + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                      + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));
  fdEmitente.Active := True;


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

  fdItem.Close;
  fdItem.SQL.Clear;
  fdItem.SQL.Add('select gcItem.*, ' +
                 'concat(codItem,'' - '', descricao) as itemDesc ' +
                 'from gcItem '
                 + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                 + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                );
  fdItem.Active := True;

  fdEmitenteContasBancaria.Close;
  fdEmitenteContasBancaria.SQL.Clear;
  fdEmitenteContasBancaria.SQL.Add(
    ' select gcEmitenteContasBancaria.*, ' +
    ' concat(gcBanco.nomeBanco,''-'',gcEmitenteContasBancaria.agencia,''-'',gcEmitenteContasBancaria.contaCorrente) as bancoConta ' +
    ' from gcEmitenteContasBancaria ' +
    ' inner join gcBanco on (gcEmitenteContasBancaria.codEmpresa = gcBanco.codEmpresa ' +
    ' and gcEmitenteContasBancaria.codEstabel = gcBanco.codEstabel ' +
    ' and gcEmitenteContasBancaria.codBanco = gcBanco.codBanco) ' +
    ' where gcEmitenteContasBancaria.codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
    '   and gcEmitenteContasBancaria.codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fdEmitenteContasBancaria.Active := True;

  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFOrdemManutManutencao);

end.
