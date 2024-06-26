unit UCondPagamento;

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
  uniDBRadioGroup;

type
  TFCondPagamento = class(TUniFrame)
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
    dsCondPagamento: TDataSource;
    fdCondPagamento: TFDQuery;
    fdCondPagamentocodEmpresa: TIntegerField;
    fdCondPagamentocodEstabel: TIntegerField;
    fdCondPagamentocodCondPagto: TIntegerField;
    fdCondPagamentonomeCondPagto: TStringField;
    fdCondPagamentonumParcelas: TIntegerField;
    fdCondPagamentotipoVencimento: TIntegerField;
    fdCondPagamentoFC_IMG_EDIT: TStringField;
    fdCondPagamentoFC_IMG_VIS: TStringField;
    fdCondPagamentoFC_IMG_DEL: TStringField;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBRadioGroup1: TUniDBRadioGroup;
    procedure UniFrameCreate(Sender: TObject);
    procedure edtFiltroPesqRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure edtFiltroPesqRapidaChange(Sender: TObject);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure dbListaColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure btRelatCSVClick(Sender: TObject);
    procedure btNovoRegClick(Sender: TObject);
    procedure btConfAlterClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodKeyPress(Sender: TObject; var Key: Char);
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

uses MainModule, ServerModule, Main, UController, UBOCondPagto;



procedure TFCondPagamento.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdCondPagamento.Active := True;

    sSQL := ' select * from gcCondicaoPagamento '
          + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel);

    fdCondPagamento.Close;
    fdCondPagamento.SQL.Clear;
    fdCondPagamento.SQL.Add(sSQL);
    fdCondPagamento.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

end;

procedure TFCondPagamento.btCancelaAlterClick(Sender: TObject);
begin
  if fdCondPagamento.State in [dsEdit,dsInsert] then
    fdCondPagamento.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFCondPagamento.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOCondPagto_ValidaPostDelete(fdCondPagamento,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdCondPagamento.Post;

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

procedure TFCondPagamento.btNovoRegClick(Sender: TObject);
begin
  fdCondPagamento.Insert;
  fdCondPagamentocodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdCondPagamentocodEstabel.AsInteger   := MainForm.iCodEstabel;
  fdCondPagamentonumParcelas.AsInteger  := 1;
  fdCondPagamentotipoVencimento.AsInteger := 1;

  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codCondPagto) as seqReg from gcCondicaoPagamento ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdCondPagamentocodCondPagto.AsInteger := 1
  else
    fdCondPagamentocodCondPagto.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


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

procedure TFCondPagamento.btRelatCSVClick(Sender: TObject);
var
sArqCSV, sNomeAux, sRet : string;
begin

  Randomize;
  repeat
    sArqCSV   := UniServerModule.FilesFolderPath ;
    sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_CondPagto_' +
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

  sRet:= fImpressaoCSV(fdCondPagamento,sArqCSV);
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

procedure TFCondPagamento.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdCondPagamento.IsEmpty then
      Exit;

    fdCondPagamento.Edit;

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
    if fdCondPagamento.IsEmpty then
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
    if fdCondPagamento.IsEmpty then
      Exit;


    sRespValid := fBOCondPagto_ValidaPostDelete(fdCondPagamento,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Condi��o Pagto abaixo?' + chr(10) + fdCondPagamentonomeCondPagto.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);

  end;

end;

procedure TFCondPagamento.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
SortColumn(Column.FieldName, Direction);
end;

procedure TFCondPagamento.dbListaFieldImage(const Column: TUniDBGridColumn;
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

procedure TFCondPagamento.edtCodKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFCondPagamento.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdCondPagamento.Filtered  := False;
    fdCondPagamento.filter    := '';
  end;
end;

procedure TFCondPagamento.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdCondPagamento.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFCondPagamento.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFCondPagamento.pConfirmaRegKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    btConfAlter.ShowMask('Gravando...');
    UniSession.Synchronize();

    btConfAlter.OnClick(Sender);

    btConfAlter.ShowMask('Gravando...');
    UniSession.Synchronize();
  end;
end;

procedure TFCondPagamento.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdCondPagamento.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFCondPagamento.pFiltroRapido;
begin
  fdCondPagamento.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdCondPagamento.Filter    := '    (upper(codCondPagto)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(nomeCondPagto) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdCondPagamento.Filter    := '    (upper(codCondPagto)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdCondPagamento.Filter    := ' (upper(nomeCondPagto) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdCondPagamento.Filtered  := True;
  end;
end;

procedure TFCondPagamento.SortColumn(const FieldName: string; Dir: Boolean);
begin
  if Dir then
    fdCondPagamento.IndexName := FieldName+'_index_asc'
  else
    fdCondPagamento.IndexName := FieldName+'_index_des';
end;

procedure TFCondPagamento.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  pgMenu.TabIndex  := 0;


  with fdCondPagamento do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdCondPagamento.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdCondPagamento.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;

  fdCondPagamento.IndexName := 'idxOrdCodAsc';
  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFCondPagamento);

end.
