unit UTitulosAPagarLiquidacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniImageList,
  uniRadioGroup, uniDBRadioGroup, uniDBEdit, uniToolBar, uniScrollBox,
  Vcl.Imaging.pngimage, uniImage, uniEdit, uniPanel, uniBasicGrid, uniDBGrid,
  uniDateTimePicker, uniLabel, uniGroupBox, uniButton, uniBitBtn, uniPageControl;

type
  TFTitulosAPagarLiquidacao = class(TUniFrame)
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
    UniPanel1: TUniPanel;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    imgVis: TUniImage;
    imgEdit: TUniImage;
    imgCancel: TUniImage;
    tsManut: TUniTabSheet;
    sbManut: TUniScrollBox;
    pgManutTitAR: TUniPageControl;
    tsDadosTitGeral: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    dbLista: TUniDBGrid;
    UniToolBar3: TUniToolBar;
    UniToolButton1: TUniToolButton;
    UniToolButton2: TUniToolButton;
    UniBitBtn1: TUniBitBtn;
    btEfetivar: TUniBitBtn;
    btMarcaTdsTitLiq: TUniBitBtn;
    btDesmarcaTdsTitLiq: TUniBitBtn;
    tsManutTitAR: TUniTabSheet;
    UniLabel10: TUniLabel;
    edtCod: TUniDBEdit;
    UniLabel9: TUniLabel;
    edtNome: TUniDBEdit;
    UniToolBar2: TUniToolBar;
    UniToolButton4: TUniToolButton;
    btCancelaAlter: TUniBitBtn;
    btConfAlter: TUniBitBtn;
    UniLabel21: TUniLabel;
    edtPercMulta: TUniDBFormattedNumberEdit;
    UniLabel22: TUniLabel;
    edtPercJuros: TUniDBFormattedNumberEdit;
    UniLabel23: TUniLabel;
    edtPercDescto: TUniDBFormattedNumberEdit;
    UniLabel3: TUniLabel;
    edtVlMulta: TUniDBFormattedNumberEdit;
    UniLabel4: TUniLabel;
    edtVlJuros: TUniDBFormattedNumberEdit;
    UniLabel6: TUniLabel;
    edtVlDescto: TUniDBFormattedNumberEdit;
    UniLabel7: TUniLabel;
    UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit;
    UniLabel8: TUniLabel;
    UniDBFormattedNumberEdit8: TUniDBFormattedNumberEdit;
    rgMulta: TUniDBRadioGroup;
    rgJuros: TUniDBRadioGroup;
    rgDesconto: TUniDBRadioGroup;
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
    fdTitulosAPagarListacodEmpresa: TIntegerField;
    fdTitulosAPagarListacodEstabel: TIntegerField;
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
    fdTitulosAPagarListavalorDesconto: TBCDField;
    fdTitulosAPagarListavalorJuros: TBCDField;
    fdTitulosAPagarListavalorMulta: TBCDField;
    fdTitulosAPagarListacodPortador: TIntegerField;
    fdTitulosAPagarListadoctoReferencia: TStringField;
    fdTitulosAPagarListaindOrigem: TIntegerField;
    fdTitulosAPagarListacodOrdemServico: TIntegerField;
    fdTitulosAPagarListacodUsuarLiquid: TStringField;
    fdTitulosAPagarListadtCancelamento: TDateField;
    fdTitulosAPagarListadtLiquidacao: TDateField;
    fdTitulosAPagarListaFC_SELEC: TBooleanField;
    fdTitulosAPagarListacodUsuarCancela: TStringField;
    fdTitulosAPagarListaFC_IMG_EDIT: TStringField;
    fdTitulosAPagarListaparcela: TIntegerField;
    fdTitulosAPagarListapercMultaAtraso: TBCDField;
    fdTitulosAPagarListapercJuroDia: TBCDField;
    fdTitulosAPagarListapercDesctoAntecip: TBCDField;
    fdTitulosAPagarListamotivoCancela: TStringField;
    fdTitulosAPagarListanomeEmitente: TStringField;
    fdTitulosAPagarListanomeFormaPagto: TStringField;
    fdTitulosAPagarListanomePortador: TStringField;
    fdTitulosAPagarListaFC_VL_JUROS: TFloatField;
    fdTitulosAPagarListaFC_VL_MULTA: TFloatField;
    fdTitulosAPagarListaFC_VL_DESCTO: TFloatField;
    fdTitulosAPagarListaFC_VL_TOTAL: TFloatField;
    fdTitulosAPagarListaFC_IND_MULTA: TIntegerField;
    fdTitulosAPagarListaFC_IND_JUROS: TIntegerField;
    fdTitulosAPagarListaFC_IND_DESCONTO: TIntegerField;
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
    fdTitulosAPagarListacodTituloAPagar: TIntegerField;
    fdTitulosAPagarListavalorTituloPagar: TBCDField;
    fdTitulosAPagarListacodBanco: TIntegerField;
    fdTitulosAPagarListaagencia: TLargeintField;
    fdTitulosAPagarListacontaCorrente: TStringField;
    fdTitulosMovtoAPagarcodTituloAPagar: TIntegerField;
    procedure UniFrameCreate(Sender: TObject);
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
    procedure btEfetivarClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btMarcaTdsTitLiqClick(Sender: TObject);
    procedure btDesmarcaTdsTitLiqClick(Sender: TObject);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure edtPercMultaExit(Sender: TObject);
    procedure edtPercJurosExit(Sender: TObject);
    procedure edtPercDesctoExit(Sender: TObject);
    procedure edtVlMultaExit(Sender: TObject);
    procedure edtVlJurosExit(Sender: TObject);
    procedure edtVlDesctoExit(Sender: TObject);
    procedure rgMultaClick(Sender: TObject);
    procedure rgJurosClick(Sender: TObject);
    procedure rgDescontoClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure btConfAlterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pCalcVlTit;
    procedure pCalcTotalTitGeral;
    procedure pConfirmaAtualizacao(Sender: TComponent; AResult:Integer);
    procedure pConfirmaEfetivacao(Sender: TComponent; AResult:Integer);
  end;

implementation

{$R *.dfm}

uses Main, MainModule;


const SQLTitAcrAP = 'select gcTitulosAPagar.*, ' +
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






procedure TFTitulosAPagarLiquidacao.btAtualizarDadosClick(Sender: TObject);
var
sEmits, sPortads, sFormasPags, SqlExec : string;
i : integer;
begin
  if not fdEmitente.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione um ou mais Clientes para Liquida��o!',mtError,[mbOK],nil);
    Exit;
  end;
  if not fdPortador.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione um ou mais Portadores para Liquida��o!',mtError,[mbOK],nil);
    Exit;
  end;
  if not fdFormaPagto.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione uma ou mais Formas Pagto para Liquida��o!',mtError,[mbOK],nil);
    Exit;
  end;

  edtPesqEmitRap.Clear;
  edtPesqPortRap.Clear;
  edtPesqFormaPagRap.Clear;

  sEmits        := '';
  sPortads      := '';
  sFormasPags   := '';

  fdEmitente.Filtered := False;
  fdEmitente.Filter   := ' FC_SELEC = true ';
  fdEmitente.Filtered := True;

  fdPortador.Filtered := False;
  fdPortador.Filter   := ' FC_SELEC = true ';
  fdPortador.Filtered := True;

  fdFormaPagto.Filtered := False;
  fdFormaPagto.Filter   := ' FC_SELEC = true ';
  fdFormaPagto.Filtered := True;

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

  if sEmits <> '' then begin
    sEmits := Copy(sEmits,1,length(sEmits)- 1);
  end;
  if sPortads <> '' then begin
    sPortads := Copy(sPortads,1,length(sPortads)- 1);
  end;
  if sFormasPags <> '' then begin
    sFormasPags := Copy(sFormasPags,1,length(sFormasPags)- 1);
  end;

  SqlExec := SQLTitAcrAP
          + ' where gcTitulosAPagar.codEmpresa    = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and gcTitulosAPagar.codEstabel    = ' + IntToStr(MainForm.iCodEstabel)
          + '   and gcTitulosAPagar.situacao      = 1 ' //aberta
          + '   and gcTitulosAPagar.dtVencimento >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtVenctoIni.DateTime))
          + '   and gcTitulosAPagar.dtVencimento <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtVenctoFim.DateTime))
          + '   and gcTitulosAPagar.dtEmissao    >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantIni.DateTime))
          + '   and gcTitulosAPagar.dtEmissao    <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantFim.DateTime));

  if sEmits <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.codEmitente in (' + sEmits + ')';
  end;
  if sPortads <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.codPortador in (' + sPortads + ')';
  end;
  if sFormasPags <> '' then begin
    SqlExec := SqlExec + ' and gcTitulosAPagar.codFormaPagto in (' + sFormasPags + ')';
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


  //btMarcaTdsTitLiq.OnClick(Sender); //marca todos

  pCalcTotalTitGeral;

  sbManut.Enabled      := True;
  tsManut.TabVisible   := True;
  tsLista.TabVisible   := False ;
  tsManutTitAR.TabVisible   := False ;
  pgManutTitAR.TabIndex := 0;


  pgMenu.TabIndex := 1;


end;

procedure TFTitulosAPagarLiquidacao.btCancelaAlterClick(Sender: TObject);
begin
  fdTitulosAPagarLista.Cancel;

  tsManutTitAR.TabVisible := False;
  tsDadosTitGeral.TabVisible := True;
  pgManutTitAR.TabIndex := 0;
end;

procedure TFTitulosAPagarLiquidacao.btConfAlterClick(Sender: TObject);
begin
MessageDlg('Tem certeza que deseja Confirmar o T�tulo?',mtConfirmation,mbYesNo, pConfirmaAtualizacao);
end;

procedure TFTitulosAPagarLiquidacao.btDesmarcaTdsEmitClick(Sender: TObject);
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

procedure TFTitulosAPagarLiquidacao.btDesmarcaTdsTitLiqClick(Sender: TObject);
var
i:integer;
begin
  fdTitulosAPagarLista.First;
  for I := 0 to fdTitulosAPagarLista.RecordCount - 1 do begin
    fdTitulosAPagarLista.Edit;
    fdTitulosAPagarListaFC_SELEC.AsBoolean := False;
    fdTitulosAPagarLista.Post;
    fdTitulosAPagarLista.Next;
  end;

end;

procedure TFTitulosAPagarLiquidacao.btEfetivarClick(Sender: TObject);
begin
  if not fdTitulosAPagarLista.Locate('FC_SELEC',True,[loCaseInsensitive]) then begin
    MessageDlg('Selecione um ou mais T�tulos para Liquida��o!',mtError,[mbOK],nil);
    Exit;
  end;

  MessageDlg('Tem certeza que deseja Efetivar a Liquida��o dos T�tulos?',mtConfirmation,mbYesNo, pConfirmaEfetivacao);


end;

procedure TFTitulosAPagarLiquidacao.btMarcaTdsEmitClick(Sender: TObject);
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

procedure TFTitulosAPagarLiquidacao.btMarcaTdsTitLiqClick(Sender: TObject);
var
i:integer;
begin
  fdTitulosAPagarLista.First;
  for I := 0 to fdTitulosAPagarLista.RecordCount - 1 do begin
    fdTitulosAPagarLista.Edit;
    fdTitulosAPagarListaFC_SELEC.AsBoolean := True;
    fdTitulosAPagarLista.Post;
    fdTitulosAPagarLista.Next;
  end;

end;

procedure TFTitulosAPagarLiquidacao.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin
  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdTitulosAPagarLista.IsEmpty then
      Exit;

    {rgMulta.ItemIndex := 0;
    rgJuros.ItemIndex := 0;
    rgDesconto.ItemIndex := 0;
    edtVlMulta.Enabled  := False;
    edtVlJuros.Enabled  := False;
    edtVlDescto.Enabled := False;}


    fdTitulosAPagarLista.Edit;

    edtPercDescto.OnExit(nil);
    edtPercMulta.OnExit(nil);
    edtPercJuros.OnExit(nil);

    rgMulta.OnClick(nil);
    rgJuros.OnClick(nil);
    rgDesconto.OnClick(nil);

    pCalcVlTit;

    tsManutTitAR.TabVisible     := True;
    tsDadosTitGeral.TabVisible  := False;
    pgManutTitAR.TabIndex       := 1;
    edtPercMulta.SetFocus;

  end;


end;

procedure TFTitulosAPagarLiquidacao.dbListaFieldImage(
  const Column: TUniDBGridColumn; const AField: TField; var OutImage: TGraphic;
  var DoNotDispose: Boolean; var ATransparent: TUniTransparentOption);
begin
  if SameText(AField.FieldName, 'FC_IMG_EDIT') then
  begin
    DoNotDispose := True;
    OutImage := imgEdit.Picture.Graphic;
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPercDesctoExit(Sender: TObject);
begin
  if fdTitulosAPagarLista.State in [dsInsert,dsEdit] then begin
    if fdTitulosAPagarListaFC_IND_DESCONTO.AsInteger = 1 then begin
      fdTitulosAPagarListaFC_VL_DESCTO.AsFloat :=
      fdTitulosAPagarListavalorOriginal.AsFloat * (fdTitulosAPagarListapercDesctoAntecip.AsFloat / 100);
    end;
    pCalcVlTit;
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPercJurosExit(Sender: TObject);
begin
  if fdTitulosAPagarLista.State in [dsInsert,dsEdit] then begin
    if fdTitulosAPagarListaFC_IND_JUROS.AsInteger = 1 then begin
      fdTitulosAPagarListaFC_VL_JUROS.AsFloat :=
      fdTitulosAPagarListavalorOriginal.AsFloat * (fdTitulosAPagarListapercJuroDia.AsFloat / 100);
    end;
    pCalcVlTit;
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPercMultaExit(Sender: TObject);
begin
  if fdTitulosAPagarLista.State in [dsInsert,dsEdit] then begin
    if fdTitulosAPagarListaFC_IND_MULTA.AsInteger = 1 then begin
      fdTitulosAPagarListaFC_VL_MULTA.AsFloat :=
      fdTitulosAPagarListavalorOriginal.AsFloat * (fdTitulosAPagarListapercMultaAtraso.AsFloat / 100);
    end;
    pCalcVlTit;
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPesqEmitRapChange(Sender: TObject);
begin
  if Trim(edtPesqEmitRap.Text) = '' then begin
    fdEmitente.Filtered  := False;
    fdEmitente.filter    := '';
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPesqEmitRapKeyPress(Sender: TObject;
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

procedure TFTitulosAPagarLiquidacao.edtPesqFormaPagRapChange(Sender: TObject);
begin
  if Trim(edtPesqFormaPagRap.Text) = '' then begin
    fdFormaPagto.Filtered  := False;
    fdFormaPagto.filter    := '';
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPesqFormaPagRapKeyPress(Sender: TObject;
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

procedure TFTitulosAPagarLiquidacao.edtPesqPortRapChange(Sender: TObject);
begin
  if Trim(edtPesqPortRap.Text) = '' then begin
    fdPortador.Filtered  := False;
    fdPortador.filter    := '';
  end;
end;

procedure TFTitulosAPagarLiquidacao.edtPesqPortRapKeyPress(Sender: TObject;
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

procedure TFTitulosAPagarLiquidacao.edtVlDesctoExit(Sender: TObject);
begin
  pCalcVlTit;
end;

procedure TFTitulosAPagarLiquidacao.edtVlJurosExit(Sender: TObject);
begin
  pCalcVlTit;
end;

procedure TFTitulosAPagarLiquidacao.edtVlMultaExit(Sender: TObject);
begin
pCalcVlTit;
end;

procedure TFTitulosAPagarLiquidacao.pCalcTotalTitGeral;
var
i : integer;
begin

  fdTitulosAPagarLista.First;
  for I := 0 to fdTitulosAPagarLista.RecordCount - 1 do begin
    fdTitulosAPagarLista.Edit;
    fdTitulosAPagarListaFC_SELEC.AsBoolean := True;
    fdTitulosAPagarListaFC_IND_MULTA.AsInteger := 1;
    fdTitulosAPagarListaFC_IND_JUROS.AsInteger := 1;
    fdTitulosAPagarListaFC_IND_DESCONTO.AsInteger := 1;
    edtPercDescto.OnExit(nil);
    edtPercMulta.OnExit(nil);
    edtPercJuros.OnExit(nil);
    pCalcVlTit;
    fdTitulosAPagarLista.Post;
    fdTitulosAPagarLista.Next;
  end;

end;

procedure TFTitulosAPagarLiquidacao.pCalcVlTit;
begin
  if fdTitulosAPagarLista.State in [dsInsert,dsEdit] then begin
    fdTitulosAPagarListaFC_VL_TOTAL.AsFloat :=
    (fdTitulosAPagarListavalorOriginal.AsFloat +
     fdTitulosAPagarListaFC_VL_JUROS.AsFloat    +
     fdTitulosAPagarListaFC_VL_MULTA.AsFloat)   -
     fdTitulosAPagarListaFC_VL_DESCTO.AsFloat;
  end;
end;

procedure TFTitulosAPagarLiquidacao.pConfirmaAtualizacao(Sender: TComponent;
  AResult: Integer);
var
iSeq : integer;
begin
  if AResult = mrYes then begin

    try

      fdTitulosAPagarLista.Post;

      iSeq := 1;
      fqAuxiliar.Close;
      fqAuxiliar.SQL.Clear;
      fqAuxiliar.SQL.Add(   ' select max(sequencia) as seqReg from gcTitulosMovtoAPagar '
                          + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarListacodEmpresa.AsInteger)
                          +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarListacodEstabel.AsInteger)
                          +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarListacodTituloAPagar.AsInteger)
       );
      fqAuxiliar.Active := True;
      if not fqAuxiliar.IsEmpty then
        iSeq := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


      fdTitulosMovtoAPagar.Close;
      fdTitulosMovtoAPagar.SQL.Clear;
      fdTitulosMovtoAPagar.SQL.Add( ' select * from gcTitulosMovtoAPagar '
                                    + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarListacodEmpresa.AsInteger)
                                    +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarListacodEstabel.AsInteger)
                                    +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarListacodTituloAPagar.AsInteger));
      fdTitulosMovtoAPagar.Active := True;

      fdTitulosMovtoAPagar.Insert;
      fdTitulosMovtoAPagarcodEmpresa.AsInteger        := fdTitulosAPagarListacodEmpresa.AsInteger;
      fdTitulosMovtoAPagarcodEstabel.AsInteger        := fdTitulosAPagarListacodEstabel.AsInteger;
      fdTitulosMovtoAPagarcodTituloAPagar.AsInteger := fdTitulosAPagarListacodTituloAPagar.AsInteger;
      fdTitulosMovtoAPagarsequencia.AsInteger         := iSeq;
      fdTitulosMovtoAPagartipoMovto.AsInteger         := 2;
      fdTitulosMovtoAPagardtMovto.AsDateTime          := Now;
      fdTitulosMovtoAPagarcodUsuarMovto.AsString      := MainForm.sCodUsuario;
      fdTitulosMovtoAPagarvalorMovto.AsFloat          := fdTitulosAPagarListavalorOriginal.AsFloat;
      fdTitulosMovtoAPagardescHistorico.AsString      := 'Altera��o Manual' ;
      fdTitulosMovtoAPagardescricao.AsString          := 'Altera��o';

      fdTitulosMovtoAPagar.Post;

      tsManutTitAR.TabVisible := False;
      tsDadosTitGeral.TabVisible := True;
      pgManutTitAR.TabIndex := 0;

    except
      on e : exception do begin
        MessageDlg('Erro ao gravar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;

  end;

end;

procedure TFTitulosAPagarLiquidacao.pConfirmaEfetivacao(Sender: TComponent;
  AResult: Integer);
var
iSeq, i : integer;
begin
  if AResult = mrYes then begin
    try

      btEfetivar.ShowMask('Efetivando T�tulos...Aguarde!');
      UniSession.Synchronize();

      try

        fdPortadLiq.Close;
        fdPortadLiq.SQL.Clear;
        fdPortadLiq.SQL.Add(  ' select * from gcPortador '
                            + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarListacodEmpresa.AsInteger)
                            + '   and codEstabel = ' + IntToStr(fdTitulosAPagarListacodEstabel.AsInteger)  );
        fdPortadLiq.Active := True;


        fdTitulosAPagarLista.Filtered := False;
        fdTitulosAPagarLista.Filter := ' FC_SELEC = true ';
        fdTitulosAPagarLista.Filtered := True;

        fdTitulosAPagarLista.First;
        for I := 0 to fdTitulosAPagarLista.RecordCount - 1 do begin

          fdTitulosAPagarLista.Edit;
          fdTitulosAPagarListasituacao.AsInteger          := 9; //liquidado
          fdTitulosAPagarListadtLiquidacao.AsDateTime     := Now;
          fdTitulosAPagarListacodUsuarLiquid.AsString     := MainForm.sCodUsuario;
          fdTitulosAPagarListavalorDesconto.AsFloat       := fdTitulosAPagarListaFC_VL_DESCTO.AsFloat;
          fdTitulosAPagarListavalorJuros.AsFloat          := fdTitulosAPagarListaFC_VL_JUROS.AsFloat;
          fdTitulosAPagarListavalorMulta.AsFloat          := fdTitulosAPagarListaFC_VL_MULTA.AsFloat;
          fdTitulosAPagarListavalorTituloPagar.AsFloat  := fdTitulosAPagarListaFC_VL_TOTAL.AsFloat;
          fdTitulosAPagarLista.Post;

          if fdPortadLiq.Locate('codPortador',fdTitulosAPagarListacodPortador.AsInteger,[]) then begin
            fdPortadLiq.Edit;
            fdPortadLiqvlSaldoAtual.AsFloat := fdPortadLiqvlSaldoAtual.AsFloat -
                                               fdTitulosAPagarListavalorTituloPagar.AsFloat;
            fdPortadLiq.Post;
          end;

          iSeq := 1;
          fqAuxiliar.Close;
          fqAuxiliar.SQL.Clear;
          fqAuxiliar.SQL.Add(   ' select max(sequencia) as seqReg from gcTitulosMovtoAPagar '
                              + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarListacodEmpresa.AsInteger)
                              +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarListacodEstabel.AsInteger)
                              +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarListacodTituloAPagar.AsInteger)
           );
          fqAuxiliar.Active := True;
          if not fqAuxiliar.IsEmpty then
            iSeq := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


          fdTitulosMovtoAPagar.Close;
          fdTitulosMovtoAPagar.SQL.Clear;
          fdTitulosMovtoAPagar.SQL.Add( ' select * from gcTitulosMovtoAPagar '
                                        + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarListacodEmpresa.AsInteger)
                                        +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarListacodEstabel.AsInteger)
                                        +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarListacodTituloAPagar.AsInteger));
          fdTitulosMovtoAPagar.Active := True;

          fdTitulosMovtoAPagar.Insert;
          fdTitulosMovtoAPagarcodEmpresa.AsInteger        := fdTitulosAPagarListacodEmpresa.AsInteger;
          fdTitulosMovtoAPagarcodEstabel.AsInteger        := fdTitulosAPagarListacodEstabel.AsInteger;
          fdTitulosMovtoAPagarcodTituloAPagar.AsInteger := fdTitulosAPagarListacodTituloAPagar.AsInteger;
          fdTitulosMovtoAPagarsequencia.AsInteger         := iSeq;
          fdTitulosMovtoAPagartipoMovto.AsInteger         := 2;
          fdTitulosMovtoAPagardtMovto.AsDateTime          := Now;
          fdTitulosMovtoAPagarcodUsuarMovto.AsString      := MainForm.sCodUsuario;
          fdTitulosMovtoAPagarvalorMovto.AsFloat          := fdTitulosAPagarListavalorTituloPagar.AsFloat;
          fdTitulosMovtoAPagardescHistorico.AsString      := 'Liquida��o' ;
          fdTitulosMovtoAPagardescricao.AsString          := 'Liquida��o';
          fdTitulosMovtoAPagar.Post;


          fdTitulosAPagarLista.Next;
        end;

        tsManut.TabVisible := False;
        tsLista.TabVisible := True;
        pgMenu.TabIndex := 0;

      except
        on e : exception do begin
          MessageDlg('Erro ao efetivar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
          Exit;
        end;
      end;

    finally
      btEfetivar.HideMask;
      UniSession.Synchronize();
    end;
  end;

end;

procedure TFTitulosAPagarLiquidacao.rgDescontoClick(Sender: TObject);
begin
  if rgDesconto.ItemIndex = 0 then begin
    edtVlDescto.Enabled  := False;
    edtPercDescto.Enabled  := True;
  end
  else begin
    edtVlDescto.Enabled  := True;
    edtPercDescto.Enabled  := False;
  end;
  pCalcVlTit;
end;

procedure TFTitulosAPagarLiquidacao.rgJurosClick(Sender: TObject);
begin
  if rgJuros.ItemIndex = 0 then begin
    edtVlJuros.Enabled  := False;
    edtPercJuros.Enabled  := True;
  end
  else begin
    edtVlJuros.Enabled  := True;
    edtPercJuros.Enabled  := False;
  end;
  pCalcVlTit;
end;

procedure TFTitulosAPagarLiquidacao.rgMultaClick(Sender: TObject);
begin
  if rgMulta.ItemIndex = 0 then begin
    edtVlMulta.Enabled  := False;
    edtPercMulta.Enabled  := True;
  end
  else begin
    edtVlMulta.Enabled  := True;
    edtPercMulta.Enabled  := False;
  end;
  pCalcVlTit;
end;

procedure TFTitulosAPagarLiquidacao.UniBitBtn1Click(Sender: TObject);
begin
  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFTitulosAPagarLiquidacao.UniBitBtn3Click(Sender: TObject);
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

procedure TFTitulosAPagarLiquidacao.UniBitBtn4Click(Sender: TObject);
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

procedure TFTitulosAPagarLiquidacao.UniBitBtn5Click(Sender: TObject);
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

procedure TFTitulosAPagarLiquidacao.UniBitBtn6Click(Sender: TObject);
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

procedure TFTitulosAPagarLiquidacao.UniFrameCreate(Sender: TObject);
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

  tsDadosTitGeral.TabVisible := True;
  tsManutTitAR.TabVisible := False;
  pgManutTitAR.TabIndex := 0;

  tsLista.TabVisible := True;
  tsManut.TabVisible := False;
  pgMenu.TabIndex := 0;


end;

initialization
  RegisterClass(TFTitulosAPagarLiquidacao);


  end.

