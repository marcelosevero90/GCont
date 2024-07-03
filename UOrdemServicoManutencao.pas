unit UOrdemServicoManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniImageList,
  uniRadioGroup, uniDBRadioGroup, uniLabel, uniDBEdit, uniScrollBox,
  Vcl.Imaging.pngimage, uniImage, uniPanel, uniMultiItem, uniComboBox, uniEdit,
  uniGroupBox, uniDBNavigator, uniButton, uniBitBtn, uniToolBar, uniBasicGrid,
  uniDBGrid, uniPageControl, uniDBComboBox, uniDBLookupComboBox,
  uniDateTimePicker, uniCheckBox, uniDBDateTimePicker, uniMemo, uniDBMemo,
  uniDBCheckBox;

type
  TFOrdemServicoManutencao = class(TUniFrame)
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
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    imgVis: TUniImage;
    imgEdit: TUniImage;
    imgItens: TUniImage;
    tsManut: TUniTabSheet;
    UniToolBar2: TUniToolBar;
    UniToolButton4: TUniToolButton;
    btCancelaAlter: TUniBitBtn;
    btConfAlter: TUniBitBtn;
    sbManut: TUniScrollBox;
    edtDesc: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    edtCod: TUniDBEdit;
    UniNativeImageList1: TUniNativeImageList;
    fqAuxiliar: TFDQuery;
    dsOrdemServico: TDataSource;
    fdOrdemServico: TFDQuery;
    fdOrdemServicocodEmpresa: TIntegerField;
    fdOrdemServicocodEstabel: TIntegerField;
    fdOrdemServicocodOrdemServico: TIntegerField;
    fdOrdemServicodescricao: TStringField;
    fdOrdemServicoobservacao: TStringField;
    fdOrdemServicotipoOrdem: TIntegerField;
    fdOrdemServicodataImplantacao: TDateField;
    fdOrdemServicovalorTotal: TBCDField;
    fdOrdemServicosituacao: TIntegerField;
    fdOrdemServicodataConclusao: TDateField;
    fdOrdemServicocodOperador: TIntegerField;
    fdOrdemServicocodEmitente: TIntegerField;
    fdOrdemServicocodLocal: TStringField;
    fdOrdemServicocodFormaPagto: TIntegerField;
    fdOrdemServicocodCondPagto: TIntegerField;
    fdOrdemServicotipoPreco: TIntegerField;
    fdOrdemServicocodTabPreco: TIntegerField;
    dtImplantIni: TUniDateTimePicker;
    UniLabel2: TUniLabel;
    dtImplantFim: TUniDateTimePicker;
    rgSit: TUniRadioGroup;
    lcEmitenteFiltro: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    lcOperadorFiltro: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    lcMaqEquipFiltro: TUniDBLookupComboBox;
    fdEmitente: TFDQuery;
    dsEmitente: TDataSource;
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
    fdOperadorMaqEquip: TFDQuery;
    fdMaquinaEquipamento: TFDQuery;
    dsOperadorMaqEquip: TDataSource;
    dsMaquinaEquipamento: TDataSource;
    fdOperadorMaqEquipcodEmpresa: TIntegerField;
    fdOperadorMaqEquipcodEstabel: TIntegerField;
    fdOperadorMaqEquipcodOperador: TIntegerField;
    fdOperadorMaqEquipnomeOperador: TStringField;
    fdOperadorMaqEquipsituacao: TIntegerField;
    fdOperadorMaqEquipcodUsuario: TStringField;
    fdMaquinaEquipamentocodEmpresa: TIntegerField;
    fdMaquinaEquipamentocodEstabel: TIntegerField;
    fdMaquinaEquipamentocodMaqEquip: TIntegerField;
    fdMaquinaEquipamentonomeMaqEquip: TStringField;
    cbCliHabFiltro: TUniCheckBox;
    cbOperHabFiltro: TUniCheckBox;
    cbMaqHabFiltro: TUniCheckBox;
    fdOrdemServicocodMaqEquip: TIntegerField;
    fdOrdemServicoFC_DSC_SIT: TStringField;
    fdOrdemServicoFC_DSC_TIPO_ORDEM: TStringField;
    fdOrdemServicoFC_DSC_TIPO_PRECO: TStringField;
    fdOrdemServicoFC_NOME_OPERADOR: TStringField;
    fdOrdemServicoFC_NOME_EMITENTE: TStringField;
    fdOrdemServicoFC_NOME_CIDADE: TStringField;
    fdOrdemServicoFC_NOME_FORMA_PAG: TStringField;
    fdOrdemServicoFC_NOME_COND_PAG: TStringField;
    fdOrdemServicoFC_NOME_TAB_PRECO: TStringField;
    fdOrdemServicoFC_NOME_MAQ_EQUIP: TStringField;
    fdOrdemServicomotivoCancelamento: TStringField;
    fdOrdemServicodataCancelamento: TDateField;
    fdOrdemServicomsgAlerta: TStringField;
    fdOrdemServicoFC_IMG_EDIT: TStringField;
    fdOrdemServicoFC_IMG_VIS: TStringField;
    fdOrdemServicoFC_IMG_DEL: TStringField;
    rgTipoPreco: TUniDBRadioGroup;
    dtImplant: TUniDBDateTimePicker;
    UniLabel1: TUniLabel;
    fdOrdemServicocodUsuarImplant: TStringField;
    mmObs: TUniDBMemo;
    UniLabel6: TUniLabel;
    lcCliente: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    lcOperador: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    lcMaqEquip: TUniDBLookupComboBox;
    UniLabel12: TUniLabel;
    lcEmitLocal: TUniDBLookupComboBox;
    fdCidade: TFDQuery;
    dsCidade: TDataSource;
    fdCidadecodCidade: TIntegerField;
    fdCidadecodIbge: TIntegerField;
    fdCidadenomeCidade: TStringField;
    fdCidadeuf: TStringField;
    fdCidadepais: TStringField;
    fdCidadecidadeEstado: TStringField;
    fdEmitEndereco: TFDQuery;
    dsEmitEndereco: TDataSource;
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
    UniLabel13: TUniLabel;
    lcFormaPag: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    lcCondPag: TUniDBLookupComboBox;
    UniLabel15: TUniLabel;
    lcTabPre: TUniDBLookupComboBox;
    fdTabPreco: TFDQuery;
    dsTabPreco: TDataSource;
    fdTabPrecocodEmpresa: TIntegerField;
    fdTabPrecocodEstabel: TIntegerField;
    fdTabPrecocodTabPreco: TIntegerField;
    fdTabPreconomeTabPreco: TStringField;
    fdTabPrecodtIniValidade: TDateField;
    fdTabPrecodtFimValidade: TDateField;
    fdTabPrecosituacao: TIntegerField;
    fdFormaPagto: TFDQuery;
    dsFormaPagto: TDataSource;
    fdCondPagto: TFDQuery;
    dsCondPagto: TDataSource;
    fdFormaPagtocodEmpresa: TIntegerField;
    fdFormaPagtocodEstabel: TIntegerField;
    fdFormaPagtocodFormaPagto: TIntegerField;
    fdFormaPagtonomeFormaPagto: TStringField;
    fdCondPagtocodEmpresa: TIntegerField;
    fdCondPagtocodEstabel: TIntegerField;
    fdCondPagtocodCondPagto: TIntegerField;
    fdCondPagtonomeCondPagto: TStringField;
    fdCondPagtonumParcelas: TIntegerField;
    fdCondPagtotipoVencimento: TIntegerField;
    UniLabel16: TUniLabel;
    fdOrdemServicoFC_IMG_ITENS: TStringField;
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
    fdOrdemServItem: TFDQuery;
    dsOrdemServItem: TDataSource;
    fdOrdemServItemcodEmpresa: TIntegerField;
    fdOrdemServItemcodEstabel: TIntegerField;
    fdOrdemServItemcodOrdemServico: TIntegerField;
    fdOrdemServItemcodItem: TStringField;
    fdOrdemServItempreco: TBCDField;
    fdOrdemServItemobservacao: TStringField;
    fdOrdemServItemFC_IMG_EDIT: TStringField;
    fdOrdemServItemFC_IMG_DEL: TStringField;
    fdOrdemServItemFC_DESC_ITEM: TStringField;
    edtPreco: TUniDBFormattedNumberEdit;
    fdItem: TFDQuery;
    dsItem: TDataSource;
    UniDBMemo1: TUniDBMemo;
    UniLabel21: TUniLabel;
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
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel23: TUniLabel;
    UniToolButton6: TUniToolButton;
    imgEfetiva: TUniImage;
    imgCancela: TUniImage;
    fdOrdemServicoFC_IMG_EFETIVA: TStringField;
    fdOrdemServicoFC_IMG_CANCELAOS: TStringField;
    fdOrdemServicocodUsuarCancelamento: TStringField;
    tsEfetiva: TUniTabSheet;
    UniGroupBox3: TUniGroupBox;
    UniLabel24: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel25: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel27: TUniLabel;
    UniLabel28: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel29: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniPanel6: TUniPanel;
    btEfetivar: TUniBitBtn;
    UniBitBtn4: TUniBitBtn;
    UniGroupBox4: TUniGroupBox;
    UniPanel7: TUniPanel;
    UniLabel30: TUniLabel;
    lcPortador: TUniDBLookupComboBox;
    mtDuplic: TFDMemTable;
    dgDuplic: TUniDBGrid;
    dsDuplic: TDataSource;
    mtDuplicparcela: TIntegerField;
    mtDuplicvalor: TFloatField;
    mtDuplicdtVencto: TDateField;
    UniLabel26: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    fdPortador: TFDQuery;
    dsPortador: TDataSource;
    fdOrdemServicocodPortador: TIntegerField;
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
    fdCondPagtonrDias: TIntegerField;
    fdPortadorpercMultaAtraso: TBCDField;
    fdPortadorpercJuroDia: TBCDField;
    fdPortadorpercDesctoAntecip: TBCDField;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    mtDuplicavista: TIntegerField;
    fdOrdemServicocodUsuarConclusao: TStringField;
    procedure UniFrameCreate(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure cbCliHabFiltroClick(Sender: TObject);
    procedure cbOperHabFiltroClick(Sender: TObject);
    procedure cbMaqHabFiltroClick(Sender: TObject);
    procedure fdOrdemServicoCalcFields(DataSet: TDataSet);
    procedure edtFiltroPesqRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtFiltroPesqRapidaChange(Sender: TObject);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure dbListaColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure btNovoRegClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure lcClienteChange(Sender: TObject);
    procedure btConfAlterClick(Sender: TObject);
    procedure btCancelItemClick(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
    procedure dbItensFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure dbItensColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure edtFiltroItemItensKeyPress(Sender: TObject; var Key: Char);
    procedure btNovoItemClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure edtFiltroItemItensChange(Sender: TObject);
    procedure dbItensCellClick(Column: TUniDBGridColumn);
    procedure fdOrdemServItemCalcFields(DataSet: TDataSet);
    procedure lcItemOsManutChange(Sender: TObject);
    procedure dbListaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure UniBitBtn4Click(Sender: TObject);
    procedure btEfetivarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure pDeleteConfirmar(Sender: TComponent; AResult:Integer);
    procedure SortColumn(const FieldName: string; Dir: Boolean);
    procedure pFiltroRapido;
    procedure pConfirmaRegKeyPress(Sender: TObject; var Key: Char);
    procedure pTpPrecoValida(sAcao : string);
    procedure pLocalEmitAtualiza;

    procedure SortColumnItens(const FieldName: string; Dir: Boolean);
    procedure pFiltroRapItens;

    procedure pTabPrecoItemOSRegra(sAcao : string);
    procedure pDeleteItemConfirmar(Sender: TComponent; AResult:Integer);
    procedure pCancelarOSConfirmar(Sender: TComponent; AResult:Integer);
    procedure pCancelarOSRetMensagem(Sender: TComponent; AResult:Integer);
    procedure pEfetivarOSConfirmar(Sender: TComponent; AResult:Integer);
  end;

implementation

{$R *.dfm}

uses MainModule, Main, UBOOrdemServico, UBOOrdemServItem, UCaixaTextoGlobal,
  UOrdemServicoDetalhes;


procedure TFOrdemServicoManutencao.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdOrdemServico.Active := True;

    sSQL := ' select * from gcOrdemServico '
          + ' where codEmpresa = '    + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = '    + IntToStr(MainForm.iCodEstabel)
          + '   and dataImplantacao >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantIni.DateTime))
          + '   and dataImplantacao <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantFim.DateTime))
          ;

    if cbCliHabFiltro.Checked  then
      sSQL := sSQL + ' and codEmitente = ' + IntToStr(fdEmitentecodEmitente.AsInteger);
    if cbOperHabFiltro.Checked then
      sSQL := sSQL + ' and codOperador = ' + IntToStr(fdOperadorMaqEquipcodOperador.AsInteger);
    if cbMaqHabFiltro.Checked then
      sSQL := sSQL + ' and codMaqEquip = ' + IntToStr(fdMaquinaEquipamentocodMaqEquip.AsInteger);
    if rgSit.ItemIndex > 0 then
      sSQL := sSQL + ' and situacao = ' + IntToStr(rgSit.ItemIndex) ;



    fdOrdemServico.Close;
    fdOrdemServico.SQL.Clear;
    fdOrdemServico.SQL.Add(sSQL);
    fdOrdemServico.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

end;

procedure TFOrdemServicoManutencao.btCancelaAlterClick(Sender: TObject);
begin
  if fdOrdemServico.State in [dsEdit,dsInsert] then
    fdOrdemServico.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFOrdemServicoManutencao.btCancelItemClick(Sender: TObject);
begin
  fdOrdemServItem.Cancel;

  tsItens.TabVisible := False;
  tsLista.TabVisible := True ;
  pgMenu.TabIndex     := 0;
end;

procedure TFOrdemServicoManutencao.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin

  if fdOrdemServicotipoPreco.AsInteger = 2 then begin
    fdOrdemServicocodTabPreco.Clear;
  end;

  sRespValid := fBOOrdemServico_ValidaPostDelete(fdOrdemServico,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdOrdemServico.Post;

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

procedure TFOrdemServicoManutencao.btFiltroClick(Sender: TObject);
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

procedure TFOrdemServicoManutencao.btNovoItemClick(Sender: TObject);
begin

  if fdOrdemServicosituacao.AsInteger > 1 then begin
    MessageDlg('Situa��o da OS n�o permite manuten��o!',mtError,[mbOK],nil);
    Exit;
  end;

  fdOrdemServItem.Insert;
  fdOrdemServItemcodEmpresa.AsInteger  := MainForm.iCodEmpresa;
  fdOrdemServItemcodEstabel.AsInteger  := MainForm.iCodEstabel;
  fdOrdemServItemcodOrdemServico.AsInteger := fdOrdemServicocodOrdemServico.AsInteger;
  fdOrdemServItempreco.AsFloat         := 0;

  lcItemOsManut .Enabled  := True;
  tsItensLista.TabVisible := False;
  tsItensManut.TabVisible := True ;
  pgItens.TabIndex        := 1;

  pTabPrecoItemOSRegra('add');

  lcItemOsManut.SetFocus;
end;

procedure TFOrdemServicoManutencao.btNovoRegClick(Sender: TObject);
begin
  fdOrdemServico.Insert;
  fdOrdemServicocodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdOrdemServicocodEstabel.AsInteger   := MainForm.iCodEstabel;
  fdOrdemServicotipoOrdem.AsInteger    := 1;
  fdOrdemServicotipoPreco.AsInteger    := 1;
  fdOrdemServicosituacao.AsInteger     := 1;
  fdOrdemServicodataImplantacao.AsDateTime := Now;
  fdOrdemServicovalorTotal.AsFloat     := 0;
  fdOrdemServicocodUsuarImplant.AsString := MainForm.sCodUsuario;


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codOrdemServico) as seqReg from gcOrdemServico ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdOrdemServicocodOrdemServico.AsInteger := 1
  else
    fdOrdemServicocodOrdemServico.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;

  pTpPrecoValida('add');


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

procedure TFOrdemServicoManutencao.cbCliHabFiltroClick(Sender: TObject);
begin
  if cbCliHabFiltro.Checked then
    lcEmitenteFiltro.Enabled := True
  else
    lcEmitenteFiltro.Enabled := False;
end;

procedure TFOrdemServicoManutencao.cbMaqHabFiltroClick(Sender: TObject);
begin
  if cbMaqHabFiltro.Checked then
    lcMaqEquipFiltro.Enabled := True
  else
    lcMaqEquipFiltro.Enabled := False;
end;

procedure TFOrdemServicoManutencao.cbOperHabFiltroClick(Sender: TObject);
begin
  if cbOperHabFiltro.Checked then
    lcOperadorFiltro.Enabled := True
  else
    lcOperadorFiltro.Enabled := False;
end;

procedure TFOrdemServicoManutencao.dbItensCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    if fdOrdemServItem.IsEmpty then
      Exit;

    if fdOrdemServicosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OS n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

    fdOrdemServItem.Edit;

    lcItemOsManut .Enabled  := False;
    tsItensLista.TabVisible := False;
    tsItensManut.TabVisible := True ;
    pgItens.TabIndex        := 1;

    pTabPrecoItemOSRegra('upd');

    edtPreco.SetFocus;

  end
  else
  if Column.FieldName = 'FC_IMG_DEL' then begin
    if fdOrdemServItem.IsEmpty then
      Exit;

    if fdOrdemServicosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OS n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

    sRespValid := fBOOrdemServItem_ValidaPostDelete(fdOrdemServItem,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Item abaixo?' + chr(10) +  fdOrdemServItemcodItem.AsString  ,mtConfirmation,mbYesNo, pDeleteItemConfirmar);


  end;

end;

procedure TFOrdemServicoManutencao.dbItensColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  SortColumnItens(Column.FieldName, Direction);
end;

procedure TFOrdemServicoManutencao.dbItensFieldImage(
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

procedure TFOrdemServicoManutencao.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid, sMsgAux : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdOrdemServico.IsEmpty then
      Exit;

    if fdOrdemServicosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OS n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

    pTpPrecoValida('upd');


    fdOrdemServico.Edit;
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
    if fdOrdemServico.IsEmpty then
      Exit;


    FOrdemServicoDetalhes.iCodOS := fdOrdemServicocodOrdemServico.AsInteger;
    FOrdemServicoDetalhes.pAtualizaOS;
    FOrdemServicoDetalhes.ShowModalN;

    {sbManut.Enabled       := False;
    tsManut.Caption      := 'Manuten��o (Visualiza��o)';
    tsManut.TabVisible   := True;
    btConfAlter.Enabled         := False;
    tsLista.TabVisible   := False ;

    pgMenu.TabIndex := 1;}

  end
  else
  if Column.FieldName = 'FC_IMG_DEL' then begin
    //ShowMessageN('DELETE');
    if fdOrdemServico.IsEmpty then
      Exit;

    if fdOrdemServicosituacao.AsInteger > 1 then begin
      MessageDlg('Situa��o da OS n�o permite exclus�o!',mtError,[mbOK],nil);
      Exit;
    end;

    sRespValid := fBOOrdemServico_ValidaPostDelete(fdOrdemServico,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar a OS abaixo?' + chr(10) + fdOrdemServicodescricao.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);


  end
  else
  if Column.FieldName = 'FC_IMG_ITENS' then begin
    if fdOrdemServico.IsEmpty then
      Exit;

    tsLista.TabVisible := False;
    tsManut.TabVisible := False;
    tsItens.TabVisible := True;
    pgMenu.TabIndex    := 2;

    pgItens.TabIndex := 0;
    tsItensLista.TabVisible := True;
    tsItensManut.TabVisible := False;

    fdOrdemServItem.Close;
    fdOrdemServItem.SQL.Clear;
    fdOrdemServItem.SQL.Add (' select * from gcOrdemServItem ' +
                             ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                             '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) +
                             '   and codOrdemServico  = ' + IntToStr(fdOrdemServicocodOrdemServico.AsInteger)
    );
    fdOrdemServItem.Active := True;

  end
  else
  if Column.FieldName = 'FC_IMG_CANCELAOS' then begin
    if fdOrdemServico.IsEmpty then
      Exit;

    if fdOrdemServicosituacao.AsInteger < 3 then begin

      sMsgAux := '';
      if fdOrdemServicosituacao.AsInteger = 2 then begin

        fqAuxiliar.Close;
        fqAuxiliar.SQL.Clear;
        fqAuxiliar.SQL.Add( ' select situacao from gcTitulosAReceber ' +
                             ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                             '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) +
                             '   and codOrdemServico  = ' + IntToStr(fdOrdemServicocodOrdemServico.AsInteger) +
                             '   and situacao         > 1 '
                             );
        fqAuxiliar.Active := True;
        if not fqAuxiliar.IsEmpty then begin
          MessageDlg('J� existem movimentos financeiros para os t�tulos da OS, n�o pode ser cancelada!',mtError,[mbOK],nil);
          Exit;
        end;
        sMsgAux := chr(10)+  'Aten��o - T�tulos financeiros ser�o eliminados!';
      end;

      MessageDlg('Tem certeza que deseja Cancelar a OS abaixo?' + chr(10) + fdOrdemServicodescricao.AsString + sMsgAux
        ,mtConfirmation,mbYesNo, pCancelarOSConfirmar);
    end
    else begin
      MessageDlg('Situa��o da OS n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

  end
  else
  if Column.FieldName = 'FC_IMG_EFETIVA' then begin
    if fdOrdemServico.IsEmpty then
      Exit;

    if fdOrdemServicosituacao.AsInteger = 1 then begin

      if fdOrdemServicovalorTotal.AsFloat <= 0 then begin
        MessageDlg('Valor da OS deve ser maior que zero!' ,mtError,[mbOK],nil);
        Exit;
      end;

      fdPortador.Close;
      fdPortador.SQL.Clear;
      fdPortador.SQL.Add( ' select * from gcPortador ' +
                          ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                          '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) );
      fdPortador.Active := True;

      fBOOrdemServico_CalcParcelasDuplc(fdOrdemServico,'',mtDuplic);

      fdOrdemServico.Edit; //editar para gravar o portador

      tsLista.TabVisible := False;
      tsManut.TabVisible := False;
      tsEfetiva.TabVisible := True;
      pgMenu.TabIndex    := 3;

      lcPortador.SetFocus;

    end
    else begin
      MessageDlg('Situa��o da OS n�o permite manuten��o!',mtError,[mbOK],nil);
      Exit;
    end;

  end

end;

procedure TFOrdemServicoManutencao.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  SortColumn(Column.FieldName, Direction);
end;

procedure TFOrdemServicoManutencao.dbListaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  case fdOrdemServicosituacao.AsInteger of
    2:Attribs.Color := clLime;
    3:Attribs.Color := clRed;
  end;
end;

procedure TFOrdemServicoManutencao.dbListaFieldImage(
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

procedure TFOrdemServicoManutencao.edtFiltroItemItensChange(Sender: TObject);
begin
  if Trim(edtFiltroItemItens.Text) = '' then begin
    fdOrdemServItem.Filtered  := False;
    fdOrdemServItem.filter    := '';
  end;
end;

procedure TFOrdemServicoManutencao.edtFiltroItemItensKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroItemItens.Text) = '' then begin
    fdOrdemServItem.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapItens;
  end;
end;

procedure TFOrdemServicoManutencao.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdOrdemServico.Filtered  := False;
    fdOrdemServico.filter    := '';
  end;
end;

procedure TFOrdemServicoManutencao.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdOrdemServico.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFOrdemServicoManutencao.fdOrdemServicoCalcFields(DataSet: TDataSet);
begin

  case DataSet.FieldByName('situacao').AsInteger of
  1: DataSet.FieldByName('FC_DSC_SIT').AsString := 'Aberta';
  2: DataSet.FieldByName('FC_DSC_SIT').AsString := 'Conclu�da';
  3: DataSet.FieldByName('FC_DSC_SIT').AsString := 'Cancelada';
  end;
  case DataSet.FieldByName('tipoOrdem').AsInteger of
  1: DataSet.FieldByName('FC_DSC_TIPO_ORDEM').AsString := 'Servi�o';
  end;
  case DataSet.FieldByName('tipoPreco').AsInteger of
  1: DataSet.FieldByName('FC_DSC_TIPO_PRECO').AsString := 'Tabela de Pre�o';
  2: DataSet.FieldByName('FC_DSC_TIPO_PRECO').AsString := 'Informado';  
  end;
  if fdEmitente.Locate('codEmitente',DataSet.FieldByName('codEmitente').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_EMITENTE').AsString := fdEmitentenomeEmitente.AsString;
  if fdOperadorMaqEquip.Locate('codOperador',DataSet.FieldByName('codOperador').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_OPERADOR').AsString := fdOperadorMaqEquipnomeOperador.AsString;
  if fdMaquinaEquipamento.Locate('codMaqEquip',DataSet.FieldByName('codMaqEquip').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_MAQ_EQUIP').AsString := fdMaquinaEquipamentonomeMaqEquip.AsString;
  if fdFormaPagto.Locate('codFormaPagto',DataSet.FieldByName('codFormaPagto').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_FORMA_PAG').AsString := fdFormaPagtonomeFormaPagto.AsString;
  if fdCondPagto.Locate('codCondPagto',DataSet.FieldByName('codCondPagto').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_COND_PAG').AsString := fdCondPagtonomeCondPagto.AsString;
  if fdTabPreco.Locate('codTabPreco',DataSet.FieldByName('codTabPreco').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_TAB_PRECO').AsString := fdTabPreconomeTabPreco.AsString;

end;

procedure TFOrdemServicoManutencao.fdOrdemServItemCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('FC_DESC_ITEM').AsString := '';
  if fdItem.Locate('codItem',DataSet.FieldByName('codItem').AsString,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_DESC_ITEM').AsString := fdItemdescricao.AsString;
end;

procedure TFOrdemServicoManutencao.lcClienteChange(Sender: TObject);
begin
  fdOrdemServicocodLocal.Clear;
  pLocalEmitAtualiza;
end;

procedure TFOrdemServicoManutencao.lcItemOsManutChange(Sender: TObject);
begin
  if fdOrdemServicotipoPreco.AsInteger = 1 then begin
    fdOrdemServItempreco.AsFloat := 0;
    if fdItem.Active then begin
      fqAuxiliar.Close;
      fqAuxiliar.SQL.Clear;
      fqAuxiliar.SQL.Add( ' select * from gcTabPrecoItem '
                          + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                          + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                          + '   and codTabPreco  = ' + IntToStr(fdOrdemServicocodTabPreco.AsInteger)
                          + '   and codItem      = ' + QuotedStr(fdItemcodItem.AsString)
                          + '   and situacao     = 1 ' //ativo
                          );
      fqAuxiliar.Active := True;
      if not fqAuxiliar.IsEmpty then begin
        fdOrdemServItempreco.AsFloat := fqAuxiliar.FieldByName('preco').AsFloat;
      end;
    end;
  end;
end;

procedure TFOrdemServicoManutencao.pCancelarOSConfirmar(Sender: TComponent;
  AResult: Integer);
var
sRespValid : string;
begin
  if AResult = mrYes then begin


    FCaixaTextoGlobal.Caption := 'Cancelamento OS';
    FCaixaTextoGlobal.gbMensagem.Caption := 'Motivo Cancelamento';
    FCaixaTextoGlobal.gbMensagem.SetFocus;
    FCaixaTextoGlobal.ShowModal(pCancelarOSRetMensagem);

    {try

      sRespValid := fBOOrdemServico_CancelaOS(fdOrdemServItem, '');
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

procedure TFOrdemServicoManutencao.pCancelarOSRetMensagem(Sender: TComponent;
  AResult: Integer);
var
  sRespValid : string;
begin
  if AResult = mrYes then begin
    try
      sRespValid := fBOOrdemServico_CancelaOS(fdOrdemServico, TFCaixaTextoGlobal(Sender).mmMsg.Lines.Text );
      if sRespValid <> 'OK' then begin
        sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
        MessageDlg('Erro ao Cancelar OS: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
        Exit;
      end;
      dbLista.Refresh;
    except
      on e : exception do begin
        MessageDlg('Erro ao Cancelar OS: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;

  end;
end;

procedure TFOrdemServicoManutencao.pConfirmaRegKeyPress(Sender: TObject;
  var Key: Char);
begin
//
end;

procedure TFOrdemServicoManutencao.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdOrdemServico.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFOrdemServicoManutencao.pDeleteItemConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdOrdemServItem.Delete;

      fdOrdemServico.Edit;
      fdOrdemServicovalorTotal.AsFloat := fBOOrdemServico_CalcVlTotal(fdOrdemServicocodOrdemServico.AsInteger);
      fdOrdemServico.Post;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFOrdemServicoManutencao.pEfetivarOSConfirmar(Sender: TComponent;
  AResult: Integer);
var
sRespValid : string;
begin

  if AResult = mrYes then begin
    try

      btEfetivar.ShowMask('Efetivando OS...');
      UniSession.Synchronize();

      try

        fdOrdemServico.Post;

        sRespValid := fBOOrdemServico_EfetivarOS(fdOrdemServico,'',mtDuplic);
        if sRespValid <> 'OK' then begin

          sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
          MessageDlg('Erro ao efetivar OS: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
          Exit;
        end;

        fdOrdemServico.Cancel;
        dbLista.Refresh;

        tsEfetiva.TabVisible := False;
        tsLista.TabVisible := True ;
        pgMenu.TabIndex     := 0;

      except
        on e : exception do begin
          MessageDlg('Erro ao efetivar OS: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
          Exit;
        end;
      end;
    finally
      btEfetivar.HideMask;
      UniSession.Synchronize();
    end;
  end;
end;

procedure TFOrdemServicoManutencao.pFiltroRapido;
begin
  fdOrdemServico.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdOrdemServico.Filter    := '    (upper(codOrdemServico)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdOrdemServico.Filter    := '    (upper(codOrdemServico)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdOrdemServico.Filter    := ' (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdOrdemServico.Filtered  := True;
  end;
end;

procedure TFOrdemServicoManutencao.pFiltroRapItens;
begin
  fdOrdemServItem.Filtered  := False;
  if Trim(edtFiltroItemItens.Text) <> '' then begin

    fdOrdemServItem.Filter    := '    (upper(codItem)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroItemItens.Text) + '%') + ') '
                               + ' or (upper(FC_DESC_ITEM) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroItemItens.Text) + '%') + ') '
    ;
    fdOrdemServItem.Filtered  := True;
  end;
end;

procedure TFOrdemServicoManutencao.pLocalEmitAtualiza;
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

procedure TFOrdemServicoManutencao.pTabPrecoItemOSRegra(sAcao : string);
begin
  edtPreco.Enabled := True;
  if fdOrdemServicotipoPreco.AsInteger = 1 then begin
    edtPreco.Enabled := False;
  end;
  {if sAcao = 'add' then begin

    fqAuxiliar.Close;
    fqAuxiliar.SQL.Clear;
    fqAuxiliar.SQL.Add( ' select gcEmitenteEndereco.*, ' +
                            ' concat(gcEmitenteEndereco.codLocal,''-'',gcEmitenteEndereco.endereco,''-'',gcCidade.nomeCidade,''-'',gcCidade.uf) as descLocal ' +
                            ' from gcEmitenteEndereco ' +
                            ' inner join gcCidade on (gcEmitenteEndereco.codCidade = gcCidade.codCidade) '
                            + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                            + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                            + '   and codEmitente  = ' + IntToStr(fdEmitentecodEmitente.AsInteger));
    fqAuxiliar.Active := True;

  end;}
end;

procedure TFOrdemServicoManutencao.pTpPrecoValida(sAcao : string);
begin
  rgTipoPreco.Enabled := True;  
  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select * from gcUsuarioPermisPrograma ' +
                     ' where codEmpresa   = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel   = ' + IntToStr(MainForm.iCodEstabel) +
                     '   and codPrograma  = ' + QuotedStr('TIPO PRE�O OS')
                     );
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then begin

    if sAcao = 'add' then begin  
      fdOrdemServicotipoPreco.AsInteger := fqAuxiliar.FieldByName('tpPrecoPadraoOS').AsInteger;
      rgTipoPreco.Enabled := False;  
    end
    else
      rgTipoPreco.Enabled := False;
  end;
end;

procedure TFOrdemServicoManutencao.SortColumn(const FieldName: string;
  Dir: Boolean);
begin
  if Dir then
    fdOrdemServico.IndexName := FieldName+'_index_asc'
  else
    fdOrdemServico.IndexName := FieldName+'_index_des';
end;

procedure TFOrdemServicoManutencao.SortColumnItens(const FieldName: string;
  Dir: Boolean);
begin
  if Dir then
    fdOrdemServItem.IndexName := FieldName+'_index_asc'
  else
    fdOrdemServItem.IndexName := FieldName+'_index_des';
end;

procedure TFOrdemServicoManutencao.UniBitBtn1Click(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOOrdemServItem_ValidaPostDelete(fdOrdemServItem, 'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdOrdemServItem.Post;

    fdOrdemServico.Edit;
    fdOrdemServicovalorTotal.AsFloat := fBOOrdemServico_CalcVlTotal(fdOrdemServicocodOrdemServico.AsInteger);
    fdOrdemServico.Post;

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

procedure TFOrdemServicoManutencao.UniBitBtn2Click(Sender: TObject);
begin
  fdOrdemServItem.Cancel;

  tsItensLista.TabVisible := True;
  tsItensManut.TabVisible := False ;
  pgItens.TabIndex     := 0;
end;

procedure TFOrdemServicoManutencao.btEfetivarClick(Sender: TObject);
var
sRespValid : string;
begin

  try
    sRespValid := fBOOrdemServico_ValidaPostDelete(fdOrdemServico,'EFETIVAR');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao efetivar OS: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;
  except
    on e : exception do begin
      MessageDlg('Erro ao efetivar OS: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

  MessageDlg('Tem certeza que deseja Efetivar a OS abaixo?' + chr(10) + fdOrdemServicodescricao.AsString  ,mtConfirmation,mbYesNo, pEfetivarOSConfirmar);
end;

procedure TFOrdemServicoManutencao.UniBitBtn4Click(Sender: TObject);
begin
  fdOrdemServico.Cancel;

  tsEfetiva.TabVisible := False;
  tsLista.TabVisible := True ;
  pgMenu.TabIndex     := 0;
end;

procedure TFOrdemServicoManutencao.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  tsItens.TabVisible  := False;
  pgMenu.TabIndex  := 0;

  dtImplantIni.DateTime := Date - 30;
  dtImplantFim.DateTime := Date;


  with fdOrdemServico do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdOrdemServico.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdOrdemServico.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;
  with fdOrdemServItem do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdOrdemServItem.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdOrdemServItem.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;

  fdOrdemServico.IndexName := 'idxOrdCodAsc';
  fdOrdemServItem.IndexName := 'idxOrdCodAsc';

  mtDuplic.CreateDataSet;
  mtDuplic.EmptyDataSet;

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

  {fdEmitEndereco.Close;
  fdEmitEndereco.SQL.Clear;
  fdEmitEndereco.SQL.Add( ' select * from gcEmitente '
                          + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                          + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel));}
  
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
                     + '   and situacao    = 1 '
                     + '   and dtIniValidade <= current_date '
                     + '   and dtFimValidade >= current_date '
                     );

  fdTabPreco.Active := True;

  fdItem.Close;
  fdItem.SQL.Clear;
  fdItem.SQL.Add('select gcItem.*, ' +
                 'concat(codItem,'' - '', descricao) as itemDesc ' +
                 'from gcItem '
                 + ' where codEmpresa  = ' + IntToStr(MainForm.iCodEmpresa)
                 + '   and codEstabel  = ' + IntToStr(MainForm.iCodEstabel)
                );
  fdItem.Active := True;

  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFOrdemServicoManutencao);

end.
