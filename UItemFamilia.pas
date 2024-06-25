unit UItemFamilia;

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
  TFItemFamilia = class(TUniFrame)
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
    dsItemFamilia: TDataSource;
    fdItemFamilia: TFDQuery;
    fdItemFamiliacodEmpresa: TIntegerField;
    fdItemFamiliacodEstabel: TIntegerField;
    fdItemFamiliacodItemFamilia: TIntegerField;
    fdItemFamiliadescricao: TStringField;
    fdItemFamiliaFC_IMG_EDIT: TStringField;
    fdItemFamiliaFC_IMG_VIS: TStringField;
    fdItemFamiliaFC_IMG_DEL: TStringField;
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

uses Main, MainModule, UBOItemFamilia, UController, ServerModule;



procedure TFItemFamilia.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdItemFamilia.Active := True;

    sSQL := ' select * from gcItemFamilia '
          + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel);

    fdItemFamilia.Close;
    fdItemFamilia.SQL.Clear;
    fdItemFamilia.SQL.Add(sSQL);
    fdItemFamilia.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;


end;

procedure TFItemFamilia.btCancelaAlterClick(Sender: TObject);
begin
  if fdItemFamilia.State in [dsEdit,dsInsert] then
    fdItemFamilia.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFItemFamilia.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOItemFamilia_ValidaPostDelete(fdItemFamilia,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdItemFamilia.Post;

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

procedure TFItemFamilia.btNovoRegClick(Sender: TObject);
begin
  fdItemFamilia.Insert;
  fdItemFamiliacodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdItemFamiliacodEstabel.AsInteger   := MainForm.iCodEstabel;


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codItemFamilia) as seqReg from gcItemFamilia ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdItemFamiliacodItemFamilia.AsInteger := 1
  else
    fdItemFamiliacodItemFamilia.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


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

procedure TFItemFamilia.btRelatCSVClick(Sender: TObject);
var
sArqCSV, sNomeAux, sRet : string;
begin

  Randomize;
  repeat
    sArqCSV   := UniServerModule.FilesFolderPath ;
    sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_ItemFamilia_' +
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

  sRet:= fImpressaoCSV(fdItemFamilia,sArqCSV);
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

procedure TFItemFamilia.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdItemFamilia.IsEmpty then
      Exit;

    fdItemFamilia.Edit;

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
    if fdItemFamilia.IsEmpty then
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
    if fdItemFamilia.IsEmpty then
      Exit;


    sRespValid := fBOItemFamilia_ValidaPostDelete(fdItemFamilia,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar a Fam�lia do Item abaixo?' + chr(10) + fdItemFamiliadescricao.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);

  end;


end;

procedure TFItemFamilia.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
SortColumn(Column.FieldName, Direction);
end;

procedure TFItemFamilia.dbListaFieldImage(const Column: TUniDBGridColumn;
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

procedure TFItemFamilia.edtCodKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFItemFamilia.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdItemFamilia.Filtered  := False;
    fdItemFamilia.filter    := '';
  end;
end;

procedure TFItemFamilia.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdItemFamilia.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFItemFamilia.pConfirmaRegKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin
    btConfAlter.ShowMask('Gravando...');
    UniSession.Synchronize();

    btConfAlter.OnClick(Sender);

    btConfAlter.HideMask;
    UniSession.Synchronize();
  end;
end;

procedure TFItemFamilia.pDeleteConfirmar(Sender: TComponent; AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdItemFamilia.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFItemFamilia.pFiltroRapido;
begin
  fdItemFamilia.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdItemFamilia.Filter    := '    (upper(codItemFamilia)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdItemFamilia.Filter    := '    (upper(codItemFamilia)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdItemFamilia.Filter    := ' (upper(descricao) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdItemFamilia.Filtered  := True;
  end;
end;

procedure TFItemFamilia.SortColumn(const FieldName: string; Dir: Boolean);
begin
  if Dir then
    fdItemFamilia.IndexName := FieldName+'_index_asc'
  else
    fdItemFamilia.IndexName := FieldName+'_index_des';
end;

procedure TFItemFamilia.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  pgMenu.TabIndex  := 0;


  with fdItemFamilia do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdItemFamilia.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdItemFamilia.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;

  fdItemFamilia.IndexName := 'idxOrdCodAsc';
  btAtualizarDados.OnClick(Sender);

end;

initialization
  RegisterClass(TFItemFamilia);

end.
