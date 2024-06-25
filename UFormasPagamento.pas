unit UFormasPagamento;

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
  uniBitBtn, uniToolBar, uniBasicGrid, uniDBGrid, uniPageControl;

type
  TFFormasPagamento = class(TUniFrame)
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
    dsFormaPagto: TDataSource;
    fdFormaPagto: TFDQuery;
    fdFormaPagtocodEmpresa: TIntegerField;
    fdFormaPagtocodEstabel: TIntegerField;
    fdFormaPagtocodFormaPagto: TIntegerField;
    fdFormaPagtonomeFormaPagto: TStringField;
    fdFormaPagtoFC_IMG_EDIT: TStringField;
    fdFormaPagtoFC_IMG_VIS: TStringField;
    fdFormaPagtoFC_IMG_DEL: TStringField;
    procedure UniFrameCreate(Sender: TObject);
    procedure edtFiltroPesqRapidaChange(Sender: TObject);
    procedure edtFiltroPesqRapidaKeyPress(Sender: TObject; var Key: Char);
    procedure dbListaColumnSort(Column: TUniDBGridColumn; Direction: Boolean);
    procedure dbListaCellClick(Column: TUniDBGridColumn);
    procedure dbListaFieldImage(const Column: TUniDBGridColumn;
      const AField: TField; var OutImage: TGraphic; var DoNotDispose: Boolean;
      var ATransparent: TUniTransparentOption);
    procedure btRelatCSVClick(Sender: TObject);
    procedure btCancelaAlterClick(Sender: TObject);
    procedure btConfAlterClick(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
    procedure btNovoRegClick(Sender: TObject);
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

uses MainModule, ServerModule, UController, Main, UBOFormasPagamento;



procedure TFFormasPagamento.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdFormaPagto.Active := True;

    sSQL := ' select * from gcFormaPagamento '
          + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel);

    fdFormaPagto.Close;
    fdFormaPagto.SQL.Clear;
    fdFormaPagto.SQL.Add(sSQL);
    fdFormaPagto.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;

end;

procedure TFFormasPagamento.btCancelaAlterClick(Sender: TObject);
begin
  if fdFormaPagto.State in [dsEdit,dsInsert] then
    fdFormaPagto.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFFormasPagamento.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOFormaPagto_ValidaPostDelete(fdFormaPagto,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdFormaPagto.Post;

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

procedure TFFormasPagamento.btNovoRegClick(Sender: TObject);
begin
  fdFormaPagto.Insert;
  fdFormaPagtocodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdFormaPagtocodEstabel.AsInteger   := MainForm.iCodEstabel;


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codFormaPagto) as seqReg from gcFormaPagamento ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdFormaPagtocodFormaPagto.AsInteger := 1
  else
    fdFormaPagtocodFormaPagto.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


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

procedure TFFormasPagamento.btRelatCSVClick(Sender: TObject);
var
sArqCSV, sNomeAux, sRet : string;
begin

  Randomize;
  repeat
    sArqCSV   := UniServerModule.FilesFolderPath ;
    sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_FormaPagto_' +
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

  sRet:= fImpressaoCSV(fdFormaPagto,sArqCSV);
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

procedure TFFormasPagamento.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdFormaPagto.IsEmpty then
      Exit;

    fdFormaPagto.Edit;

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
    if fdFormaPagto.IsEmpty then
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
    if fdFormaPagto.IsEmpty then
      Exit;


    sRespValid := fBOFormaPagto_ValidaPostDelete(fdFormaPagto,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Forma Pagto abaixo?' + chr(10) + fdFormaPagtonomeFormaPagto.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);

  end;

end;

procedure TFFormasPagamento.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
SortColumn(Column.FieldName, Direction);
end;

procedure TFFormasPagamento.dbListaFieldImage(const Column: TUniDBGridColumn;
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

procedure TFFormasPagamento.edtCodKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFFormasPagamento.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdFormaPagto.Filtered  := False;
    fdFormaPagto.filter    := '';
  end;
end;

procedure TFFormasPagamento.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdFormaPagto.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFFormasPagamento.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  pConfirmaRegKeyPress(sender,Key);
end;

procedure TFFormasPagamento.pConfirmaRegKeyPress(Sender: TObject;
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

procedure TFFormasPagamento.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdFormaPagto.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFFormasPagamento.pFiltroRapido;
begin
  fdFormaPagto.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdFormaPagto.Filter    := '    (upper(codFormaPagto)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(nomeFormaPagto) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdFormaPagto.Filter    := '    (upper(codFormaPagto)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdFormaPagto.Filter    := ' (upper(nomeFormaPagto) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdFormaPagto.Filtered  := True;
  end;
end;

procedure TFFormasPagamento.SortColumn(const FieldName: string; Dir: Boolean);
begin
  if Dir then
    fdFormaPagto.IndexName := FieldName+'_index_asc'
  else
    fdFormaPagto.IndexName := FieldName+'_index_des';
end;

procedure TFFormasPagamento.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  pgMenu.TabIndex  := 0;


  with fdFormaPagto do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdFormaPagto.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdFormaPagto.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;

  fdFormaPagto.IndexName := 'idxOrdCodAsc';
  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFFormasPagamento);

end.
