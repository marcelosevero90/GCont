unit UTitulosAPagarManutencao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniImageList,
  uniDBDateTimePicker, uniDBEdit, uniMemo, uniDBMemo, uniScrollBox, uniSplitter,
  uniEdit, uniRadioGroup, uniCheckBox, uniDBComboBox, uniDBLookupComboBox,
  uniDateTimePicker, uniLabel, Vcl.Imaging.pngimage, uniImage, uniPanel,
  uniMultiItem, uniComboBox, uniGroupBox, uniDBNavigator, uniButton, uniBitBtn,
  uniToolBar, uniBasicGrid, uniDBGrid, uniPageControl;

type
  TFTitulosAPagarManutencao = class(TUniFrame)
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
    UniLabel2: TUniLabel;
    dtImplantIni: TUniDateTimePicker;
    dtImplantFim: TUniDateTimePicker;
    UniLabel3: TUniLabel;
    lcEmitenteFiltro: TUniDBLookupComboBox;
    cbCliHabFiltro: TUniCheckBox;
    UniLabel1: TUniLabel;
    dtVenctoIni: TUniDateTimePicker;
    dtVenctoFim: TUniDateTimePicker;
    rgSit: TUniRadioGroup;
    UniLabel4: TUniLabel;
    lcPortadFiltro: TUniDBLookupComboBox;
    cbPortadorHabFiltro: TUniCheckBox;
    imgEstorno: TUniImage;
    UniPanel2: TUniPanel;
    UniPanel3: TUniPanel;
    imgVis: TUniImage;
    imgEdit: TUniImage;
    imgCancel: TUniImage;
    UniPanel5: TUniPanel;
    dbMovtos: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    tsManut: TUniTabSheet;
    UniToolBar2: TUniToolBar;
    UniToolButton4: TUniToolButton;
    btCancelaAlter: TUniBitBtn;
    btConfAlter: TUniBitBtn;
    sbManut: TUniScrollBox;
    UniPageControl1: TUniPageControl;
    tsDadosTitGeral: TUniTabSheet;
    UniScrollBox1: TUniScrollBox;
    UniLabel16: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel17: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniLabel20: TUniLabel;
    UniDBNumberEdit2: TUniDBNumberEdit;
    UniLabel21: TUniLabel;
    UniDBFormattedNumberEdit5: TUniDBFormattedNumberEdit;
    UniLabel22: TUniLabel;
    UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit;
    UniLabel23: TUniLabel;
    UniDBFormattedNumberEdit7: TUniDBFormattedNumberEdit;
    UniPanel4: TUniPanel;
    UniLabel10: TUniLabel;
    edtCod: TUniDBEdit;
    UniLabel7: TUniLabel;
    edtNome: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel8: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniLabel11: TUniLabel;
    UniLabel13: TUniLabel;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniNativeImageList1: TUniNativeImageList;
    fqAuxiliar: TFDQuery;
    dsTitulosAPagar: TDataSource;
    fdTitulosAPagar: TFDQuery;
    fdTitulosAPagarcodEmpresa: TIntegerField;
    fdTitulosAPagarcodEstabel: TIntegerField;
    fdTitulosAPagardescricao: TStringField;
    fdTitulosAPagarcodEmitente: TIntegerField;
    fdTitulosAPagarcodFormaPagto: TIntegerField;
    fdTitulosAPagarsituacao: TIntegerField;
    fdTitulosAPagardtVencimento: TDateField;
    fdTitulosAPagardtEmissao: TDateField;
    fdTitulosAPagardtTransacao: TDateField;
    fdTitulosAPagarcodUsuarImplant: TStringField;
    fdTitulosAPagarobservacao: TStringField;
    fdTitulosAPagarvalorOriginal: TBCDField;
    fdTitulosAPagarvalorDesconto: TBCDField;
    fdTitulosAPagarvalorJuros: TBCDField;
    fdTitulosAPagarvalorMulta: TBCDField;
    fdTitulosAPagarcodPortador: TIntegerField;
    fdTitulosAPagardoctoReferencia: TStringField;
    fdTitulosAPagarindOrigem: TIntegerField;
    fdTitulosAPagarcodOrdemServico: TIntegerField;
    fdTitulosAPagarcodUsuarLiquid: TStringField;
    fdTitulosAPagardtCancelamento: TDateField;
    fdTitulosAPagardtLiquidacao: TDateField;
    fdTitulosAPagarcodUsuarCancela: TStringField;
    fdTitulosAPagarFC_IMG_EDIT: TStringField;
    fdTitulosAPagarFC_IMG_VIS: TStringField;
    fdTitulosAPagarFC_IMG_DEL: TStringField;
    fdTitulosAPagarparcela: TIntegerField;
    fdTitulosAPagarpercMultaAtraso: TBCDField;
    fdTitulosAPagarpercJuroDia: TBCDField;
    fdTitulosAPagarpercDesctoAntecip: TBCDField;
    fdTitulosAPagarFC_NOME_EMIT: TStringField;
    fdTitulosAPagarFC_NOME_PORTADOR: TStringField;
    fdTitulosAPagarFC_FORMA_PAGTO: TStringField;
    fdTitulosAPagarFC_DSC_SIT: TStringField;
    fdTitulosAPagarFC_IMG_CANCEL: TStringField;
    fdTitulosAPagarmotivoCancela: TStringField;
    fdTitulosAPagarFC_IMG_ESTORNO: TStringField;
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
    fdFormaPagto: TFDQuery;
    fdFormaPagtocodEmpresa: TIntegerField;
    fdFormaPagtocodEstabel: TIntegerField;
    fdFormaPagtocodFormaPagto: TIntegerField;
    fdFormaPagtonomeFormaPagto: TStringField;
    dsFormaPagto: TDataSource;
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
    fdTitulosAPagarcodTituloAPagar: TIntegerField;
    fdTitulosAPagarvalorTituloPagar: TBCDField;
    fdTitulosAPagarcodBanco: TIntegerField;
    fdTitulosAPagaragencia: TLargeintField;
    fdTitulosAPagarcontaCorrente: TStringField;
    fdTitulosMovtoAPagarcodTituloAPagar: TIntegerField;
    UniLabel5: TUniLabel;
    lcBanco: TUniDBLookupComboBox;
    fdEmitenteContasBancaria: TFDQuery;
    dsEmitenteContasBancaria: TDataSource;
    fdEmitenteContasBancariacodEmpresa: TIntegerField;
    fdEmitenteContasBancariacodEstabel: TIntegerField;
    fdEmitenteContasBancariacodEmitente: TIntegerField;
    fdEmitenteContasBancariacodBanco: TIntegerField;
    fdEmitenteContasBancariaagencia: TStringField;
    fdEmitenteContasBancariacontaCorrente: TStringField;
    fdEmitenteContasBancariabancoConta: TStringField;
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure btNovoRegClick(Sender: TObject);
    procedure edtFiltroPesqRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtFiltroPesqRapidaChange(Sender: TObject);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure dbListaColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbListaDrawColumnCell(Sender: TObject; ACol, ARow: Integer;
      Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure btConfAlterClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure fdTitulosAPagarCalcFields(DataSet: TDataSet);
    procedure fdTitulosAPagarAfterScroll(DataSet: TDataSet);
    procedure UniFrameCreate(Sender: TObject);
    procedure UniDBLookupComboBox2Change(Sender: TObject);
    procedure cbCliHabFiltroClick(Sender: TObject);
    procedure cbPortadorHabFiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure pDeleteConfirmar(Sender: TComponent; AResult:Integer);
    procedure pCancelarConfirmar(Sender: TComponent; AResult:Integer);
    procedure pCancelarTitAPRetMsg(Sender: TComponent; AResult:Integer);
    procedure pEstornoConfirmar(Sender: TComponent; AResult:Integer);
    procedure SortColumn(const FieldName: string; Dir: Boolean);
    procedure pFiltroRapido;
    procedure pConfirmaRegKeyPress(Sender: TObject; var Key: Char);
    function fValidaPermisManutAP:boolean;
  end;

implementation

{$R *.dfm}

uses Main, MainModule, UCaixaTextoGlobal, UBOTitulosAPagar;



{ TFTitulosAPagarManutencao }

procedure TFTitulosAPagarManutencao.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
  iSit : integer;
begin

  try
    //fdTitulosAPagar.Active := True;

    sSQL := ' select * from gcTitulosAPagar '
          + ' where codEmpresa    = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel    = ' + IntToStr(MainForm.iCodEstabel)
          + '   and dtVencimento >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtVenctoIni.DateTime))
          + '   and dtVencimento <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtVenctoFim.DateTime))
          + '   and dtEmissao    >= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantIni.DateTime))
          + '   and dtEmissao    <= ' + QuotedStr(FormatDateTime('yyyy-mm-dd',dtImplantFim.DateTime)) ;


    if rgSit.ItemIndex > 0 then begin
      iSit := 0;
      case rgSit.ItemIndex  of
        1: iSit := 1;
        2: iSit := 2;
        3: iSit := 9;
      end;
      sSQL := sSQL + ' and situacao = ' + IntToStr(iSit) ;
    end;

    if cbCliHabFiltro.Checked then
      sSQL := sSQL + ' and codEmitente = ' + IntToStr(fdEmitentecodEmitente.AsInteger);
    if cbPortadorHabFiltro.Checked then
      sSQL := sSQL + ' and codPortador = ' + IntToStr(fdPortadorcodPortador.AsInteger);


    fdTitulosAPagar.Close;
    fdTitulosAPagar.SQL.Clear;
    fdTitulosAPagar.SQL.Add(sSQL);
    fdTitulosAPagar.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

end;

procedure TFTitulosAPagarManutencao.btCancelaAlterClick(Sender: TObject);
begin
  if fdTitulosAPagar.State in [dsEdit,dsInsert] then
    fdTitulosAPagar.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFTitulosAPagarManutencao.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
iAcao, iSeq : integer;
begin

  if fdTitulosAPagar.State in [dsEdit,dsInsert] then begin
    fdTitulosAPagarvalorTituloPagar.AsFloat := (fdTitulosAPagarvalorOriginal.AsFloat
                                                 + fdTitulosAPagarvalorJuros.AsFloat
                                                 + fdTitulosAPagarvalorMulta.AsFloat)
                                                 - fdTitulosAPagarvalorDesconto.AsFloat;
    fdTitulosAPagarcodBanco.AsInteger     := fdEmitenteContasBancariacodBanco.AsInteger;
    fdTitulosAPagaragencia.AsString       := fdEmitenteContasBancariaagencia.AsString;
    fdTitulosAPagarcontaCorrente.AsString := fdEmitenteContasBancariacontaCorrente.AsString;
  end;

  sRespValid := fBOTitulosAPagar_ValidaPostDelete(fdTitulosAPagar,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    iAcao := 2;
    if fdTitulosAPagar.State = dsInsert then
      iAcao := 1;

    fdTitulosAPagar.Post;

    iSeq := 1;
    fqAuxiliar.Close;
    fqAuxiliar.SQL.Clear;
    fqAuxiliar.SQL.Add(   ' select max(sequencia) as seqReg from gcTitulosMovtoAPagar '
                        + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarcodEmpresa.AsInteger)
                        +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarcodEstabel.AsInteger)
                        +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarcodTituloAPagar.AsInteger)
     );
    fqAuxiliar.Active := True;
    if not fqAuxiliar.IsEmpty then
      iSeq := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;

    fdTitulosMovtoAPagar.Insert;
    fdTitulosMovtoAPagarcodEmpresa.AsInteger        := fdTitulosAPagarcodEmpresa.AsInteger;
    fdTitulosMovtoAPagarcodEstabel.AsInteger        := fdTitulosAPagarcodEstabel.AsInteger;
    fdTitulosMovtoAPagarcodTituloAPagar.AsInteger   := fdTitulosAPagarcodTituloAPagar.AsInteger;
    fdTitulosMovtoAPagarsequencia.AsInteger         := iSeq;
    fdTitulosMovtoAPagartipoMovto.AsInteger         := iAcao;
    fdTitulosMovtoAPagardtMovto.AsDateTime          := Now;
    fdTitulosMovtoAPagarcodUsuarMovto.AsString      := MainForm.sCodUsuario;
    fdTitulosMovtoAPagarvalorMovto.AsFloat          := fdTitulosAPagarvalorOriginal.AsFloat;
    fdTitulosMovtoAPagardescHistorico.AsString      := 'Alteração Manual' ;

    if iAcao = 1 then
      fdTitulosMovtoAPagardescricao.AsString          := 'Implantação'
    else
    if iAcao = 2 then
      fdTitulosMovtoAPagardescricao.AsString          := 'Alteração';

    fdTitulosMovtoAPagar.Post;

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

procedure TFTitulosAPagarManutencao.btFiltroClick(Sender: TObject);
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

procedure TFTitulosAPagarManutencao.btNovoRegClick(Sender: TObject);
begin

  if not fValidaPermisManutAP then begin
    MessageDlg('Você não possuí permissão para manutenção em Títulos a Pagar!',mtError,[mbOK],nil);
    Exit;
  end;

  fdTitulosAPagar.Insert;
  fdTitulosAPagarcodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdTitulosAPagarcodEstabel.AsInteger   := MainForm.iCodEstabel;
  fdTitulosAPagarsituacao.AsInteger     := 1; //aberta
  fdTitulosAPagardtVencimento.AsDateTime := Date + 1;
  fdTitulosAPagardtEmissao.AsDateTime    := Date;
  fdTitulosAPagardtTransacao.AsDateTime  := Date;
  fdTitulosAPagarcodUsuarImplant.AsString := MainForm.sCodUsuario;
  fdTitulosAPagarindOrigem.AsInteger      := 9; //manual
  fdTitulosAPagarparcela.AsInteger        := 1;
  fdTitulosAPagarvalorOriginal.AsFloat    := 0;
  fdTitulosAPagarvalorTituloPagar.AsFloat := 0;
  fdTitulosAPagarvalorDesconto.AsFloat      := 0;
  fdTitulosAPagarvalorJuros.AsFloat      := 0;
  fdTitulosAPagarvalorMulta.AsFloat      := 0;


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codTituloAPagar) as seqReg from gcTitulosAPagar ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdTitulosAPagarcodTituloAPagar.AsInteger := 1
  else
    fdTitulosAPagarcodTituloAPagar.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;

  sbManut.Enabled       := True;
  edtCod.Enabled       := True;
  tsManut.Caption      := 'Manutenção (Inclusão)';
  tsManut.TabVisible   := True;
  btConfAlter.Enabled    := True;
  edtCod.SetFocus;
  tsLista.TabVisible   := False ;

  edtNome.SetFocus;

  pgMenu.TabIndex := 1;
end;

procedure TFTitulosAPagarManutencao.cbCliHabFiltroClick(Sender: TObject);
begin
  if cbCliHabFiltro.Checked then begin
    lcEmitenteFiltro.Enabled := True;
  end
  else
    lcEmitenteFiltro.Enabled := False;
end;

procedure TFTitulosAPagarManutencao.cbPortadorHabFiltroClick(Sender: TObject);
begin
  if cbPortadorHabFiltro.Checked then begin
    lcPortadFiltro.Enabled := True;
  end
  else
    lcPortadFiltro.Enabled := False;
end;

procedure TFTitulosAPagarManutencao.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin
  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdTitulosAPagar.IsEmpty then
      Exit;

    if not fValidaPermisManutAP then begin
      MessageDlg('Você não possuí permissão para manutenção em Títulos a Pagar!',mtError,[mbOK],nil);
      Exit;
    end;
    if fdTitulosAPagarsituacao.AsInteger > 1 then begin
      MessageDlg('Situação do Título a Pagar não permite manutenção!',mtError,[mbOK],nil);
      Exit;
    end;

    fdTitulosAPagar.Edit;

    sbManut.Enabled          := True;
    edtCod.Enabled    := False;
    tsManut.Caption          := 'Manutenção (Edição)';
    tsManut.TabVisible       := True;
    btConfAlter.Enabled      := True;
    tsLista.TabVisible       := False ;
    edtNome.SetFocus;

    pgMenu.TabIndex := 1;

  end
  else
  if Column.FieldName = 'FC_IMG_VIS' then begin
    //ShowMessageN('VISUALIZA');
    if fdTitulosAPagar.IsEmpty then
      Exit;

    sbManut.Enabled       := False;
    tsManut.Caption      := 'Manutenção (Visualização)';
    tsManut.TabVisible   := True;
    btConfAlter.Enabled         := False;
    tsLista.TabVisible   := False ;

    pgMenu.TabIndex := 1;

  end
  else
  if Column.FieldName = 'FC_IMG_DEL' then begin
    //ShowMessageN('DELETE');
    if fdTitulosAPagar.IsEmpty then
      Exit;

    if not fValidaPermisManutAP then begin
      MessageDlg('Você não possuí permissão para manutenção em Títulos a Pagar!',mtError,[mbOK],nil);
      Exit;
    end;
    if fdTitulosAPagarsituacao.AsInteger > 1 then begin
      MessageDlg('Situação do Título a Pagar não permite exclusão!',mtError,[mbOK],nil);
      Exit;
    end;

    sRespValid := fBOTitulosAPagar_ValidaPostDelete(fdTitulosAPagar,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Título abaixo?' + chr(10) + fdTitulosAPagarcodTituloAPagar.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);

  end
  else
  if Column.FieldName = 'FC_IMG_CANCEL' then begin
    //ShowMessageN('DELETE');
    if fdTitulosAPagar.IsEmpty then
      Exit;

    if not fValidaPermisManutAP then begin
      MessageDlg('Você não possuí permissão para manutenção em Títulos a Pagar!',mtError,[mbOK],nil);
      Exit;
    end;
    if fdTitulosAPagarsituacao.AsInteger > 1 then begin
      MessageDlg('Situação do Título a Pagar não permite manutenção!',mtError,[mbOK],nil);
      Exit;
    end;


    sRespValid := fBOTitulosAPagar_ValidaPostDelete(fdTitulosAPagar,'CANCELA');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao cancelar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja Cancelar o Título abaixo?' + chr(10) + fdTitulosAPagarcodTituloAPagar.AsString  ,mtConfirmation,mbYesNo, pCancelarConfirmar);

  end
  else
  if Column.FieldName = 'FC_IMG_ESTORNO' then begin
    //ShowMessageN('DELETE');
    if fdTitulosAPagar.IsEmpty then
      Exit;

    if not fValidaPermisManutAP then begin
      MessageDlg('Você não possuí permissão para manutenção em Títulos a Pagar!',mtError,[mbOK],nil);
      Exit;
    end;
    if fdTitulosAPagarsituacao.AsInteger <> 9 then begin
      MessageDlg('Situação do Título a Pagar não permite Estorno!',mtError,[mbOK],nil);
      Exit;
    end;


    MessageDlg('Tem certeza que deseja Estornar o Título abaixo?' + chr(10) + fdTitulosAPagarcodTituloAPagar.AsString  ,mtConfirmation,mbYesNo, pEstornoConfirmar);

  end;

end;

procedure TFTitulosAPagarManutencao.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
SortColumn(Column.FieldName, Direction);
end;

procedure TFTitulosAPagarManutencao.dbListaDrawColumnCell(Sender: TObject; ACol,
  ARow: Integer; Column: TUniDBGridColumn; Attribs: TUniCellAttribs);
begin
  case fdTitulosAPagarsituacao.AsInteger of
    2:Attribs.Color := clRed;
    9:Attribs.Color := clLime;
  end;
end;

procedure TFTitulosAPagarManutencao.dbListaFieldImage(
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
  if SameText(AField.FieldName, 'FC_IMG_CANCEL') then
  begin
    DoNotDispose := True;
    OutImage := imgCancel.Picture.Graphic;
  end;
  if SameText(AField.FieldName, 'FC_IMG_ESTORNO') then
  begin
    DoNotDispose := True;
    OutImage := imgEstorno.Picture.Graphic;
  end;
end;

procedure TFTitulosAPagarManutencao.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdTitulosAPagar.Filtered  := False;
    fdTitulosAPagar.filter    := '';
  end;
end;

procedure TFTitulosAPagarManutencao.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdTitulosAPagar.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFTitulosAPagarManutencao.fdTitulosAPagarAfterScroll(
  DataSet: TDataSet);
begin
  fdTitulosMovtoAPagar.Close;
  fdTitulosMovtoAPagar.SQL.Clear;
  fdTitulosMovtoAPagar.SQL.Add(  ' select * from gcTitulosMovtoAPagar '
                                 + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                                 + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel)
                                 + '   and codTituloAPagar = ' + IntToStr(fdTitulosAPagarcodTituloAPagar.AsInteger)
   );
  fdTitulosMovtoAPagar.Active := True;
end;

procedure TFTitulosAPagarManutencao.fdTitulosAPagarCalcFields(
  DataSet: TDataSet);
begin
  case DataSet.FieldByName('situacao').AsInteger of
    1:DataSet.FieldByName('FC_DSC_SIT').AsString := 'Aberta';
    2:DataSet.FieldByName('FC_DSC_SIT').AsString := 'Cancelada';
    9:DataSet.FieldByName('FC_DSC_SIT').AsString := 'Liquidada';
  end;
  DataSet.FieldByName('FC_NOME_EMIT').AsString := '';
  DataSet.FieldByName('FC_NOME_PORTADOR').AsString := '';
  DataSet.FieldByName('FC_FORMA_PAGTO').AsString := '';
  if fdPortador.Locate('codPortador',DataSet.FieldByName('codPortador').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_PORTADOR').AsString := fdPortadornomePortador.AsString;
  if fdEmitente.Locate('codEmitente',DataSet.FieldByName('codEmitente').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_EMIT').AsString := fdEmitentenomeEmitente.AsString;
  if fdFormaPagto.Locate('codFormaPagto',DataSet.FieldByName('codFormaPagto').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_FORMA_PAGTO').AsString := fdFormaPagtonomeFormaPagto.AsString;
end;

function TFTitulosAPagarManutencao.fValidaPermisManutAP: boolean;
begin
  Result := False;
  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select codPrograma from gcUsuarioPermisPrograma ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
                     '   and codUsuario = ' + QuotedStr(MainForm.sCodUsuario) +
                     '   and codPrograma = ' + QuotedStr('PERMITE MANUTENÇÃO AP')
                     );
  fqAuxiliar.Active := True;
  if not fqAuxiliar.IsEmpty then
    Result := True;
end;

procedure TFTitulosAPagarManutencao.pCancelarConfirmar(Sender: TComponent;
  AResult: Integer);
var
sRespValid : string;
begin
  if AResult = mrYes then begin


    FCaixaTextoGlobal.Caption := 'Cancelamento Título AP';
    FCaixaTextoGlobal.gbMensagem.Caption := 'Motivo Cancelamento';
    FCaixaTextoGlobal.gbMensagem.SetFocus;
    FCaixaTextoGlobal.ShowModal(pCancelarTitAPRetMsg);

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

procedure TFTitulosAPagarManutencao.pCancelarTitAPRetMsg(Sender: TComponent;
  AResult: Integer);
var
  sRespValid : string;
  iSeq : integer;
begin
  if AResult = mrYes then begin
    try
      //sRespValid := fBOOrdemServico_CancelaOS(fdOrdemServico, TFCaixaTextoGlobal(Sender).mmMsg.Lines.Text );

      fdTitulosAPagar.Edit;
      fdTitulosAPagarsituacao.AsInteger         := 2; //cancelada
      fdTitulosAPagarcodUsuarCancela.AsString   := MainForm.sCodUsuario;
      fdTitulosAPagarmotivoCancela.AsString     := TFCaixaTextoGlobal(Sender).mmMsg.Lines.Text ;
      fdTitulosAPagar.Post;

      iSeq := 1;
      fqAuxiliar.Close;
      fqAuxiliar.SQL.Clear;
      fqAuxiliar.SQL.Add(   ' select max(sequencia) as seqReg from gcTitulosMovtoAPagar '
                          + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarcodEmpresa.AsInteger)
                          +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarcodEstabel.AsInteger)
                          +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarcodTituloAPagar.AsInteger)
       );
      fqAuxiliar.Active := True;
      if not fqAuxiliar.IsEmpty then
        iSeq := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;

      fdTitulosMovtoAPagar.Insert;
      fdTitulosMovtoAPagarcodEmpresa.AsInteger        := fdTitulosAPagarcodEmpresa.AsInteger;
      fdTitulosMovtoAPagarcodEstabel.AsInteger        := fdTitulosAPagarcodEstabel.AsInteger;
      fdTitulosMovtoAPagarcodTituloAPagar.AsInteger   := fdTitulosAPagarcodTituloAPagar.AsInteger;
      fdTitulosMovtoAPagarsequencia.AsInteger         := iSeq;
      fdTitulosMovtoAPagartipoMovto.AsInteger         := 3; //Cancelamento
      fdTitulosMovtoAPagardtMovto.AsDateTime          := Now;
      fdTitulosMovtoAPagarcodUsuarMovto.AsString      := MainForm.sCodUsuario;
      fdTitulosMovtoAPagarvalorMovto.AsFloat          := fdTitulosAPagarvalorOriginal.AsFloat;
      fdTitulosMovtoAPagardescHistorico.AsString      := 'Alteração Manual' ;


      fdTitulosMovtoAPagardescricao.AsString          := 'Cancelamento';

      fdTitulosMovtoAPagar.Post;

      dbLista.Refresh;
    except
      on e : exception do begin
        MessageDlg('Erro ao Cancelar Título: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;

  end;


end;

procedure TFTitulosAPagarManutencao.pConfirmaRegKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin
    btConfAlter.ShowMask('Gravando...');
    UniSession.Synchronize();

    btConfAlter.OnClick(Sender);

    btConfAlter.ShowMask('Gravando...');
    UniSession.Synchronize();
  end;
end;

procedure TFTitulosAPagarManutencao.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
var
i : integer;
begin
  if AResult = mrYes then begin

    try

      fdTitulosMovtoAPagar.First;
      for I := 0 to fdTitulosMovtoAPagar.RecordCount - 1 do begin
        fdTitulosMovtoAPagar.Delete;
        fdTitulosMovtoAPagar.Next;
      end;

      fdTitulosAPagar.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;

end;

procedure TFTitulosAPagarManutencao.pEstornoConfirmar(Sender: TComponent;
  AResult: Integer);
var
iSeq : integer;
begin
  if AResult = mrYes then begin

    try


      fdTitulosAPagar.Edit;
      fdTitulosAPagarsituacao.AsInteger         := 1; //aberta
      fdTitulosAPagar.Post;

      iSeq := 1;
      fqAuxiliar.Close;
      fqAuxiliar.SQL.Clear;
      fqAuxiliar.SQL.Add(   ' select max(sequencia) as seqReg from gcTitulosMovtoAPagar '
                          + ' where codEmpresa = ' + IntToStr(fdTitulosAPagarcodEmpresa.AsInteger)
                          +  ' and codEstabel = ' + IntToStr(fdTitulosAPagarcodEstabel.AsInteger)
                          +  ' and codTituloAPagar = ' + IntToStr(fdTitulosAPagarcodTituloAPagar.AsInteger)
       );
      fqAuxiliar.Active := True;
      if not fqAuxiliar.IsEmpty then
        iSeq := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;

      fdTitulosMovtoAPagar.Insert;
      fdTitulosMovtoAPagarcodEmpresa.AsInteger        := fdTitulosAPagarcodEmpresa.AsInteger;
      fdTitulosMovtoAPagarcodEstabel.AsInteger        := fdTitulosAPagarcodEstabel.AsInteger;
      fdTitulosMovtoAPagarcodTituloAPagar.AsInteger := fdTitulosAPagarcodTituloAPagar.AsInteger;
      fdTitulosMovtoAPagarsequencia.AsInteger         := iSeq;
      fdTitulosMovtoAPagartipoMovto.AsInteger         := 1; //Aberta
      fdTitulosMovtoAPagardtMovto.AsDateTime          := Now;
      fdTitulosMovtoAPagarcodUsuarMovto.AsString      := MainForm.sCodUsuario;
      fdTitulosMovtoAPagarvalorMovto.AsFloat          := fdTitulosAPagarvalorTituloPagar.AsFloat;
      fdTitulosMovtoAPagardescHistorico.AsString      := 'Estorno' ;
      fdTitulosMovtoAPagardescricao.AsString          := 'Estorno';
      fdTitulosMovtoAPagar.Post;

      if fdPortador.Locate('codPortador',fdTitulosAPagarcodPortador.AsInteger,[]) then begin
        fdPortador.Edit;
        fdPortadorvlSaldoAtual.AsFloat := fdPortadorvlSaldoAtual.AsFloat + fdTitulosAPagarvalorTituloPagar.AsFloat;
        fdPortador.Post;
      end;

      dbLista.Refresh;

    except
      on e : exception do begin
        MessageDlg('Erro ao estornar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;

end;

procedure TFTitulosAPagarManutencao.pFiltroRapido;
begin
  fdTitulosAPagar.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdTitulosAPagar.Filter    := '    (upper(codTituloAPagar)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(codEmitente) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(FC_NOME_EMIT) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '

      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdTitulosAPagar.Filter    := '    (upper(codTituloAPagar)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdTitulosAPagar.Filter    := ' (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 3 then begin
      fdTitulosAPagar.Filter    := ' (upper(codEmitente) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 4 then begin
      fdTitulosAPagar.Filter    := ' (upper(FC_NOME_EMIT) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdTitulosAPagar.Filtered  := True;
  end;
end;

procedure TFTitulosAPagarManutencao.SortColumn(const FieldName: string;
  Dir: Boolean);
begin
  if Dir then
    fdTitulosAPagar.IndexName := FieldName+'_index_asc'
  else
    fdTitulosAPagar.IndexName := FieldName+'_index_des';
end;

procedure TFTitulosAPagarManutencao.UniDBLookupComboBox2Change(Sender: TObject);
begin
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
    '   and gcEmitenteContasBancaria.codEstabel = ' + IntToStr(MainForm.iCodEstabel) +
    '   and gcEmitenteContasBancaria.codEmitente = ' + IntToStr(fdTitulosAPagarcodEmitente.AsInteger)
    );

  fdEmitenteContasBancaria.Active := True;
end;

procedure TFTitulosAPagarManutencao.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  pgMenu.TabIndex  := 0;

  dtVenctoIni.DateTime  := Date - 365;
  dtVenctoFim.DateTime  := Date + 365;
  dtImplantIni.DateTime := Date - 90;
  dtImplantFim.DateTime := Date;


  with fdTitulosAPagar do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdTitulosAPagar.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdTitulosAPagar.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;


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

  fdTitulosAPagar.IndexName := 'idxOrdCodAsc';
  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFTitulosAPagarManutencao);

end.

