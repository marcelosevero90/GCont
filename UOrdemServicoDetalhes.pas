unit UOrdemServicoDetalhes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniRadioGroup, uniDBRadioGroup,
  uniMemo, uniDBMemo, uniDateTimePicker, uniDBDateTimePicker, uniEdit,
  uniDBEdit, uniLabel, uniGroupBox, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniBasicGrid, uniDBGrid;

type
  TFOrdemServicoDetalhes = class(TUniForm)
    pgMenu: TUniPageControl;
    tsItens: TUniTabSheet;
    UniGroupBox1: TUniGroupBox;
    UniLabel10: TUniLabel;
    UniLabel9: TUniLabel;
    edtCod: TUniDBEdit;
    edtDesc: TUniDBEdit;
    UniLabel1: TUniLabel;
    dtImplant: TUniDBDateTimePicker;
    UniLabel6: TUniLabel;
    mmObs: TUniDBMemo;
    rgTipoPreco: TUniDBRadioGroup;
    UniDBRadioGroup1: TUniDBRadioGroup;
    fdOrdServDetalhe: TFDQuery;
    dsOrdServDetalhe: TDataSource;
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
    UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel11: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniLabel12: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniDBEdit8: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniLabel16: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    dbItens: TUniDBGrid;
    fdOrdemServItem: TFDQuery;
    fdOrdemServItemFC_IMG_EDIT: TStringField;
    fdOrdemServItemFC_IMG_DEL: TStringField;
    fdOrdemServItemcodEmpresa: TIntegerField;
    fdOrdemServItemcodEstabel: TIntegerField;
    fdOrdemServItemcodOrdemServico: TIntegerField;
    fdOrdemServItemcodItem: TStringField;
    fdOrdemServItempreco: TBCDField;
    fdOrdemServItemobservacao: TStringField;
    fdOrdemServItemFC_DESC_ITEM: TStringField;
    dsOrdemServItem: TDataSource;
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
    fdOrdServDetalhecodPortador: TIntegerField;
    fdOrdServDetalhecodUsuarConclusao: TStringField;
    UniLabel17: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    fdOrdServDetalhenomePortador: TStringField;
    procedure fdOrdemServItemCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    iCodOS : integer;
    procedure pAtualizaOS;

  end;

function FOrdemServicoDetalhes: TFOrdemServicoDetalhes;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main;

function FOrdemServicoDetalhes: TFOrdemServicoDetalhes;
begin
  Result := TFOrdemServicoDetalhes(UniMainModule.GetFormInstance(TFOrdemServicoDetalhes));
end;

{ TFOrdemServicoDetalhes }

procedure TFOrdemServicoDetalhes.fdOrdemServItemCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('FC_DESC_ITEM').AsString := '';
  if fdItem.Locate('codItem',DataSet.FieldByName('codItem').AsString,[loCaseInsensitive]) then
    DataSet.FieldByName('FC_DESC_ITEM').AsString := fdItemdescricao.AsString;
end;

procedure TFOrdemServicoDetalhes.pAtualizaOS;
begin

  fdOrdServDetalhe.Close;
  fdOrdServDetalhe.Params[0].AsInteger := MainForm.iCodEmpresa;
  fdOrdServDetalhe.Params[1].AsInteger := MainForm.iCodEstabel;
  fdOrdServDetalhe.Params[2].AsInteger := iCodOS;
  fdOrdServDetalhe.Active := True;

  fdOrdemServItem.Close;
  fdOrdemServItem.SQL.Clear;
  fdOrdemServItem.SQL.Add (' select * from gcOrdemServItem ' +
                           ' where codEmpresa       = ' + IntToStr(MainForm.iCodEmpresa) +
                           '   and codEstabel       = ' + IntToStr(MainForm.iCodEstabel) +
                           '   and codOrdemServico  = ' + IntToStr(fdOrdServDetalhecodOrdemServico.AsInteger)
  );
  fdOrdemServItem.Active := True;

end;

end.
