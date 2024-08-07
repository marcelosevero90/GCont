unit UPortadorFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniGUIBaseClasses, uniImageList,
  uniLabel, uniDBEdit, uniScrollBox, Vcl.Imaging.pngimage, uniImage, uniPanel,
  uniMultiItem, uniComboBox, uniEdit, uniGroupBox, uniDBNavigator, uniButton,
  uniBitBtn, uniToolBar, uniBasicGrid, uniDBGrid, uniPageControl, uniRadioGroup,
  uniDBRadioGroup, uniDBComboBox, uniDBLookupComboBox;

type
  TFPortadorFinanceiro = class(TUniFrame)
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
    imgPermis: TUniImage;
    tsManut: TUniTabSheet;
    UniToolBar2: TUniToolBar;
    UniToolButton4: TUniToolButton;
    btCancelaAlter: TUniBitBtn;
    btConfAlter: TUniBitBtn;
    sbManut: TUniScrollBox;
    edtNome: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    edtCod: TUniDBEdit;
    UniNativeImageList1: TUniNativeImageList;
    fqAuxiliar: TFDQuery;
    dsPortador: TDataSource;
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
    fdPortadorFC_IMG_EDIT: TStringField;
    fdPortadorFC_IMG_VIS: TStringField;
    fdPortadorFC_IMG_DEL: TStringField;
    fdPortadorFC_NOME_BANCO: TStringField;
    fdPortadorFC_DSC_TIPO: TStringField;
    fdBanco: TFDQuery;
    fdBancocodEmpresa: TIntegerField;
    fdBancocodEstabel: TIntegerField;
    fdBancocodBanco: TIntegerField;
    fdBanconomeBanco: TStringField;
    fdBancoFC_IMG_EDIT: TStringField;
    fdBancoFC_IMG_VIS: TStringField;
    fdBancoFC_IMG_DEL: TStringField;
    edtAgFiltro: TUniEdit;
    UniLabel1: TUniLabel;
    edtBancoFiltro: TUniNumberEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    edtCCFiltro: TUniEdit;
    UniDBEdit1: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    rbTipo: TUniDBRadioGroup;
    fdBcoLista: TFDQuery;
    dsBcoLista: TDataSource;
    fdBcoListacodEmpresa: TIntegerField;
    fdBcoListacodEstabel: TIntegerField;
    fdBcoListacodBanco: TIntegerField;
    fdBcoListanomeBanco: TStringField;
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    procedure UniFrameCreate(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure fdPortadorCalcFields(DataSet: TDataSet);
    procedure edtFiltroPesqRapidaChange(Sender: TObject);
    procedure edtFiltroPesqRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure btNovoRegClick(Sender: TObject);
    procedure dbListaColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure btRelatCSVClick(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure btConfAlterClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodKeyPress(Sender: TObject; var Key: Char);
    procedure UniDBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure pDeleteConfirmar(Sender: TComponent; AResult:Integer);
    procedure SortColumn(const FieldName: string; Dir: Boolean);
    procedure pFiltroRapido;
    procedure pConfirmaRegKeyPress(Sender: TObject; var Key: Char);

  end;

implementation

{$R *.dfm}

uses MainModule, Main, ServerModule, UController, UBOPortadorFinanceiro;



procedure TFPortadorFinanceiro.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdPortador.Active := True;

    sSQL := ' select * from gcPortador '
          + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel);

    if edtBancoFiltro.Value > 0 then
      sSQL := sSQL + ' and codBanco = ' + IntToStr(Trunc(edtBancoFiltro.Value));
    if edtAgFiltro.Text <> '' then
      sSQL := sSQL + ' and agencia = ' + edtBancoFiltro.Text;
    if edtCCFiltro.Text <> '' then
      sSQL := sSQL + ' and contaCorrente = ' + edtCCFiltro.Text;


    fdPortador.Close;
    fdPortador.SQL.Clear;
    fdPortador.SQL.Add(sSQL);
    fdPortador.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

end;

procedure TFPortadorFinanceiro.btCancelaAlterClick(Sender: TObject);
begin
  if fdPortador.State in [dsEdit,dsInsert] then
    fdPortador.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFPortadorFinanceiro.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOPortador_ValidaPostDelete(fdPortador,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdPortador.Post;

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

procedure TFPortadorFinanceiro.btFiltroClick(Sender: TObject);
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

procedure TFPortadorFinanceiro.btNovoRegClick(Sender: TObject);
begin
  fdPortador.Insert;
  fdPortadorcodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdPortadorcodEstabel.AsInteger   := MainForm.iCodEstabel;

  fdPortadorvlSaldoInicial.AsFloat := 0;
  fdPortadorvlSaldoAtual.AsFloat   := 0;
  fdPortadortipoPortador.AsInteger := 1;


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codPortador) as seqReg from gcPortador ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdPortadorcodPortador.AsInteger := 1
  else
    fdPortadorcodPortador.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


  sbManut.Enabled       := True;
  edtCod.Enabled       := True;
  tsManut.Caption      := 'Manuten��o (Inclus�o)';
  tsManut.TabVisible   := True;
  btConfAlter.Enabled    := True;
  edtCod.SetFocus;
  tsLista.TabVisible   := False ;

  edtNome.SetFocus;

  pgMenu.TabIndex := 1;
end;

procedure TFPortadorFinanceiro.btRelatCSVClick(Sender: TObject);
var
sArqCSV, sNomeAux, sRet : string;
begin

  Randomize;
  repeat
    sArqCSV   := UniServerModule.FilesFolderPath ;
    sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_Portador_' +
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

  sRet:= fImpressaoCSV(fdPortador,sArqCSV);
  if sRet <> 'OK' then begin
    MessageDlg('Erro ao gerar arquivo CSV com mensagem: ' + chr(10) + sRet ,mtError,[mbOK],nil);
    Exit;
  end;

  try
    UniSession.SendFile(sArqCSV);
  except
    on e : exception do begin
      MessageDlg('Erro ao enviar arquivo: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
    end;
  end;

end;

procedure TFPortadorFinanceiro.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdPortador.IsEmpty then
      Exit;

    fdPortador.Edit;

    sbManut.Enabled          := True;
    edtCod.Enabled    := False;
    tsManut.Caption          := 'Manuten��o (Edi��o)';
    tsManut.TabVisible       := True;
    btConfAlter.Enabled      := True;
    tsLista.TabVisible       := False ;
    edtNome.SetFocus;

    pgMenu.TabIndex := 1;

  end
  else
  if Column.FieldName = 'FC_IMG_VIS' then begin
    //ShowMessageN('VISUALIZA');
    if fdPortador.IsEmpty then
      Exit;

    sbManut.Enabled       := False;
    tsManut.Caption      := 'Manuten��o (Visualiza��o)';
    tsManut.TabVisible   := True;
    btConfAlter.Enabled         := False;
    tsLista.TabVisible   := False ;

    pgMenu.TabIndex := 1;

  end
  else
  if Column.FieldName = 'FC_IMG_DEL' then begin
    //ShowMessageN('DELETE');
    if fdPortador.IsEmpty then
      Exit;


    sRespValid := fBOPortador_ValidaPostDelete(fdPortador,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Portador abaixo?' + chr(10) + fdPortadornomePortador.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);

  end;


end;

procedure TFPortadorFinanceiro.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
  SortColumn(Column.FieldName, Direction);
end;

procedure TFPortadorFinanceiro.dbListaFieldImage(const Column: TUniDBGridColumn;
  const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
  var ATransparent: TUniTransparentOption);
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
end;

procedure TFPortadorFinanceiro.edtCodKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFPortadorFinanceiro.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdPortador.Filtered  := False;
    fdPortador.filter    := '';
  end;
end;

procedure TFPortadorFinanceiro.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdPortador.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFPortadorFinanceiro.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFPortadorFinanceiro.fdPortadorCalcFields(DataSet: TDataSet);
begin

  if DataSet.FieldByName('tipoPortador').AsInteger = 1 then begin
     DataSet.FieldByName('FC_DSC_TIPO').AsString := 'Caixa';
  end
  else
    DataSet.FieldByName('FC_DSC_TIPO').AsString := 'Banco';

  if fdBanco.Locate('codBanco',DataSet.FieldByName('codBanco').AsInteger,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_NOME_BANCO').AsString := fdBanconomeBanco.AsString;
end;

procedure TFPortadorFinanceiro.pConfirmaRegKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then begin

    btConfAlter.ShowMask('Gravando...');
    UniSession.Synchronize();

    btConfAlter.OnClick(Sender);

    btConfAlter.HideMask;
    UniSession.Synchronize();
  end;
end;

procedure TFPortadorFinanceiro.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdPortador.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFPortadorFinanceiro.pFiltroRapido;
begin
  fdPortador.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdPortador.Filter    := '    (upper(codPortador)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(nomePortador) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdPortador.Filter    := '    (upper(codPortador)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdPortador.Filter    := ' (upper(nomePortador) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdPortador.Filtered  := True;
  end;
end;

procedure TFPortadorFinanceiro.SortColumn(const FieldName: string;
  Dir: Boolean);
begin
  if Dir then
    fdPortador.IndexName := FieldName+'_index_asc'
  else
    fdPortador.IndexName := FieldName+'_index_des';
end;

procedure TFPortadorFinanceiro.UniDBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFPortadorFinanceiro.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  pgMenu.TabIndex  := 0;


  with fdPortador do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdPortador.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdPortador.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;

  fdPortador.IndexName := 'idxOrdCodAsc';

  fdBanco.Close;
  fdBanco.SQL.Clear;
  fdBanco.SQL.Add(  ' select * from gcBanco '
                  + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                  + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel)
   );
  fdBanco.Active := True;

  fdBcoLista.Close;
  fdBcoLista.SQL.Clear;
  fdBcoLista.SQL.Add(  ' select * from gcBanco '
                     + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                     + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fdBcoLista.Active := True;


  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFPortadorFinanceiro);

end.
