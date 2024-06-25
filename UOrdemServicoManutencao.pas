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
  uniDBGrid, uniPageControl;

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
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBRadioGroup1: TUniDBRadioGroup;
    UniNativeImageList1: TUniNativeImageList;
    fqAuxiliar: TFDQuery;
    dsOrdemServico: TDataSource;
    gbItens: TUniGroupBox;
    fdOrdemServico: TFDQuery;
    fdOrdemServicocodEmpresa: TIntegerField;
    fdOrdemServicocodEstabel: TIntegerField;
    fdOrdemServicocodOrdemServico: TIntegerField;
    fdOrdemServicodescricao: TStringField;
    fdOrdemServicoobservacao: TStringField;
    fdOrdemServicotipoOrdem: TIntegerField;
    fdOrdemServicodataImplantacao: TDateField;
    fdOrdemServicocodUsuario: TIntegerField;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses MainModule;


initialization
  RegisterClass(TFOrdemServicoManutencao);

end.
