unit UOperadorMaqEquip;

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
  uniDBGrid, uniPageControl, uniCheckBox, uniDBComboBox, uniDBLookupComboBox;

type
  TFOperadorMaqEquip = class(TUniFrame)
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
    UniLabel1: TUniLabel;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniNativeImageList1: TUniNativeImageList;
    fqAuxiliar: TFDQuery;
    dsOperadorMaqEquip: TDataSource;
    fdOperadorMaqEquip: TFDQuery;
    fdOperadorMaqEquipcodEmpresa: TIntegerField;
    fdOperadorMaqEquipcodEstabel: TIntegerField;
    fdOperadorMaqEquipcodOperador: TIntegerField;
    fdOperadorMaqEquipnomeOperador: TStringField;
    fdOperadorMaqEquipsituacao: TIntegerField;
    fdOperadorMaqEquipFC_IMG_EDIT: TStringField;
    fdOperadorMaqEquipFC_IMG_VIS: TStringField;
    fdOperadorMaqEquipFC_IMG_DEL: TStringField;
    UniLabel2: TUniLabel;
    cbAtivosFiltro: TUniCheckBox;
    fdOperadorMaqEquipFC_DSC_SIT: TStringField;
    fdUsuario: TFDQuery;
    fdUsuariocodEmpresa: TIntegerField;
    fdUsuariocodEstabel: TIntegerField;
    fdUsuariocodUsuario: TStringField;
    fdUsuarionomeUsuario: TStringField;
    fdUsuariosenhaUsuario: TStringField;
    fdUsuariotipoUsuario: TIntegerField;
    fdUsuarioaltSenhaProxAcesso: TIntegerField;
    fdUsuariodataUltAltAcesso: TDateField;
    fdUsuariosituacao: TIntegerField;
    fdUsuarioemail: TStringField;
    fdUsuariotelefone: TStringField;
    dsUsuario: TDataSource;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    fdOperadorMaqEquipcodUsuario: TStringField;
    edtCodUsuarioFiltro: TUniEdit;
    procedure fdOperadorMaqEquipCalcFields(DataSet: TDataSet);
    procedure UniFrameCreate(Sender: TObject);
    procedure btAtualizarDadosClick(Sender: TObject);
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
    procedure edtCodKeyPress(Sender: TObject; var Key: Char);
    procedure btFiltroClick(Sender: TObject);
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

uses MainModule, Main, UBOOperadorMaqEquip, ServerModule, UController;



procedure TFOperadorMaqEquip.btAtualizarDadosClick(Sender: TObject);
var
  sSQL, sSitFiltro : string;
begin

  try
    fdOperadorMaqEquip.Active := True;

    sSQL := ' select * from gcOperadorMaqEquip '
          + ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
          + '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel);

    if edtCodUsuarioFiltro.Text <> '' then
      sSQL := sSQL + ' and codUsuario = ' + QuotedStr(edtCodUsuarioFiltro.Text);

    if cbAtivosFiltro.Checked then
      sSQL := sSQL + ' and situacao = 1 ';

    fdOperadorMaqEquip.Close;
    fdOperadorMaqEquip.SQL.Clear;
    fdOperadorMaqEquip.SQL.Add(sSQL);
    fdOperadorMaqEquip.Active := True;

  except
    on e : exception do begin
      MessageDlg('Erro ao atualizar registros: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
      Exit;
    end;
  end;
end;

procedure TFOperadorMaqEquip.btCancelaAlterClick(Sender: TObject);
begin
  if fdOperadorMaqEquip.State in [dsEdit,dsInsert] then
    fdOperadorMaqEquip.Cancel;

  tsManut.TabVisible := False;
  tsLista.TabVisible := True;
  pgMenu.TabIndex := 0;
end;

procedure TFOperadorMaqEquip.btConfAlterClick(Sender: TObject);
var
sRespValid : string;
begin

  sRespValid := fBOOperadorMaqEquip_ValidaPostDelete(fdOperadorMaqEquip,'INS_UPD');
  if sRespValid <> 'OK' then begin

    sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
    MessageDlg('Erro ao gravar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
    Exit;
  end;

  try

    fdOperadorMaqEquip.Post;

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

procedure TFOperadorMaqEquip.btFiltroClick(Sender: TObject);
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

procedure TFOperadorMaqEquip.btNovoRegClick(Sender: TObject);
begin
  fdOperadorMaqEquip.Insert;
  fdOperadorMaqEquipcodEmpresa.AsInteger   := MainForm.iCodEmpresa;
  fdOperadorMaqEquipcodEstabel.AsInteger   := MainForm.iCodEstabel;
  fdOperadorMaqEquipsituacao.AsInteger     := 1;
  fdOperadorMaqEquipcodUsuario.AsString    := '';


  fqAuxiliar.Close;
  fqAuxiliar.SQL.Clear;
  fqAuxiliar.SQL.Add(' select max(codOperador) as seqReg from gcOperadorMaqEquip ' +
                     ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                     '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fqAuxiliar.Active := True;
  if fqAuxiliar.IsEmpty then
    fdOperadorMaqEquipcodOperador.AsInteger := 1
  else
    fdOperadorMaqEquipcodOperador.AsInteger := fqAuxiliar.FieldByName('seqReg').AsInteger + 1;


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

procedure TFOperadorMaqEquip.btRelatCSVClick(Sender: TObject);
var
sArqCSV, sNomeAux, sRet : string;
begin

  Randomize;
  repeat
    sArqCSV   := UniServerModule.FilesFolderPath ;
    sNomeAux  := IntToStr(MainForm.iCodEmpresa) + '_OperadorMaqEquip_' +
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

  sRet:= fImpressaoCSV(fdOperadorMaqEquip,sArqCSV);
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

procedure TFOperadorMaqEquip.dbListaCellClick(Column: TUniDBGridColumn);
var
sRespValid : string;
begin

  if Column.FieldName = 'FC_IMG_EDIT' then begin
    //ShowMessageN('EDITAR');
    if fdOperadorMaqEquip.IsEmpty then
      Exit;

    fdOperadorMaqEquip.Edit;

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
    if fdOperadorMaqEquip.IsEmpty then
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
    if fdOperadorMaqEquip.IsEmpty then
      Exit;


    sRespValid := fBOOperadorMaqEquip_ValidaPostDelete(fdOperadorMaqEquip,'DELETE');
    if sRespValid <> 'OK' then begin

      sRespValid := StringReplace(sRespValid,'|',chr(13),[rfReplaceAll]);
      MessageDlg('Erro ao eliminar registro: ' + chr(10) + sRespValid ,mtError,[mbOK],nil);
      Exit;
    end;

    MessageDlg('Tem certeza que deseja eliminar o Operador abaixo?' + chr(10) + fdOperadorMaqEquipnomeOperador.AsString  ,mtConfirmation,mbYesNo, pDeleteConfirmar);

  end;


end;

procedure TFOperadorMaqEquip.dbListaColumnSort(Column: TUniDBGridColumn;
  Direction: Boolean);
begin
SortColumn(Column.FieldName, Direction);
end;

procedure TFOperadorMaqEquip.dbListaFieldImage(const Column: TUniDBGridColumn;
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

procedure TFOperadorMaqEquip.edtCodKeyPress(Sender: TObject; var Key: Char);
begin
pConfirmaRegKeyPress(sender,Key);
end;

procedure TFOperadorMaqEquip.edtFiltroPesqRapidaChange(Sender: TObject);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdOperadorMaqEquip.Filtered  := False;
    fdOperadorMaqEquip.filter    := '';
  end;
end;

procedure TFOperadorMaqEquip.edtFiltroPesqRapidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Trim(edtFiltroPesqRapida.Text) = '' then begin
    fdOperadorMaqEquip.Filtered  := False;
  end;
  if Key = #13 then begin
    pFiltroRapido;
  end;
end;

procedure TFOperadorMaqEquip.fdOperadorMaqEquipCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('situacao').AsInteger = 1 then
    DataSet.FieldByName('FC_DSC_SIT').AsString := 'Ativo'
  else
    DataSet.FieldByName('FC_DSC_SIT').AsString := 'Inativo';
end;

procedure TFOperadorMaqEquip.pConfirmaRegKeyPress(Sender: TObject;
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

procedure TFOperadorMaqEquip.pDeleteConfirmar(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin

    try

      fdOperadorMaqEquip.Delete;

    except
      on e : exception do begin
        MessageDlg('Erro ao eliminar registro: ' + chr(10) + e.Message ,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFOperadorMaqEquip.pFiltroRapido;
begin
  fdOperadorMaqEquip.Filtered  := False;
  if Trim(edtFiltroPesqRapida.Text) <> '' then begin

    if cbCampoFiltro.ItemIndex = 0 then begin
      fdOperadorMaqEquip.Filter    := '    (upper(codOperador)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
                                 + ' or (upper(nomeOperador) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 1 then begin
      fdOperadorMaqEquip.Filter    := '    (upper(codOperador)  like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end
    else
    if cbCampoFiltro.ItemIndex = 2 then begin
      fdOperadorMaqEquip.Filter    := ' (upper(nomeOperador) like ' + QuotedStr('%' + AnsiUpperCase(edtFiltroPesqRapida.Text) + '%') + ') '
      ;
    end;

    fdOperadorMaqEquip.Filtered  := True;
  end;
end;

procedure TFOperadorMaqEquip.SortColumn(const FieldName: string; Dir: Boolean);
begin
  if Dir then
    fdOperadorMaqEquip.IndexName := FieldName+'_index_asc'
  else
    fdOperadorMaqEquip.IndexName := FieldName+'_index_des';
end;

procedure TFOperadorMaqEquip.UniFrameCreate(Sender: TObject);
var
  I: Integer;
  IndexnameAsc : string;
  IndexnameDes : string;
  idxOrdAsc,idxOrdDes  : TFDIndex;
begin

  tsManut.TabVisible  := False;
  pgMenu.TabIndex  := 0;


  with fdOperadorMaqEquip do
  begin
    for I := 0 to FieldCount-1 do
    begin

      IndexnameAsc := Fields[I].FieldName+'_index_asc';
      IndexnameDes := Fields[I].FieldName+'_index_des';

      idxOrdAsc := TFDIndex.Create(fdOperadorMaqEquip.Indexes);
      idxOrdAsc.Name      := IndexnameAsc;
      idxOrdAsc.Fields    := Fields[I].FieldName;
      idxOrdAsc.Options   := [];
      idxOrdAsc.Selected  := True;
      idxOrdAsc.Active    := True;

      idxOrdDes := TFDIndex.Create(fdOperadorMaqEquip.Indexes);
      idxOrdDes.Name      := IndexnameDes;
      idxOrdDes.Fields    := Fields[I].FieldName;
      idxOrdDes.Options   := [soDescending];
      idxOrdDes.Selected  := True;
      idxOrdDes.Active    := True;
    end;
  end;


  fdUsuario.Close;
  fdUsuario.SQL.Clear;
  fdUsuario.SQL.Add(' select * from  gcUsuarioMestre ' +
                    ' where codEmpresa = ' + IntToStr(MainForm.iCodEmpresa) +
                    '   and codEstabel = ' + IntToStr(MainForm.iCodEstabel));
  fdUsuario.Active := True;

  fdOperadorMaqEquip.IndexName := 'idxOrdCodAsc';
  btAtualizarDados.OnClick(Sender);


end;

initialization
  RegisterClass(TFOperadorMaqEquip);

end.
