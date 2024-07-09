unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TUniMainModule = class(TUniGUIMainModule)
    conexaoDB: TFDConnection;
    fdTitulosAReceber: TFDQuery;
    fdTitulosARecebercodEmpresa: TIntegerField;
    fdTitulosARecebercodEstabel: TIntegerField;
    fdTitulosARecebercodTituloAReceber: TIntegerField;
    fdTitulosAReceberdescricao: TStringField;
    fdTitulosARecebercodEmitente: TIntegerField;
    fdTitulosARecebercodFormaPagto: TIntegerField;
    fdTitulosARecebersituacao: TIntegerField;
    fdTitulosAReceberdtVencimento: TDateField;
    fdTitulosAReceberdtEmissao: TDateField;
    fdTitulosAReceberdtTransacao: TDateField;
    fdTitulosARecebercodUsuarImplant: TStringField;
    fdTitulosAReceberobservacao: TStringField;
    fdTitulosARecebervalorOriginal: TBCDField;
    fdTitulosARecebervalorTituloReceber: TBCDField;
    fdTitulosARecebervalorDesconto: TBCDField;
    fdTitulosARecebervalorJuros: TBCDField;
    fdTitulosARecebervalorMulta: TBCDField;
    fdTitulosARecebercodPortador: TIntegerField;
    fdTitulosAReceberdoctoReferencia: TStringField;
    fdTitulosAReceberindOrigem: TIntegerField;
    fdTitulosARecebercodOrdemServico: TIntegerField;
    fdTitulosARecebercodUsuarLiquid: TStringField;
    fdTitulosAReceberdtCancelamento: TDateField;
    fdTitulosAReceberdtLiquidacao: TDateField;
    fdTitulosARecebercodUsuarCancela: TStringField;
    fdTitulosAReceberparcela: TIntegerField;
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
    fdTitulosAReceberpercMultaAtraso: TBCDField;
    fdTitulosAReceberpercJuroDia: TBCDField;
    fdTitulosAReceberpercDesctoAntecip: TBCDField;
    fdTitulosMovtoAReceber: TFDQuery;
    fdTitulosMovtoARecebercodEmpresa: TIntegerField;
    fdTitulosMovtoARecebercodEstabel: TIntegerField;
    fdTitulosMovtoARecebercodTituloAReceber: TIntegerField;
    fdTitulosMovtoARecebersequencia: TIntegerField;
    fdTitulosMovtoARecebertipoMovto: TIntegerField;
    fdTitulosMovtoAReceberdescricao: TStringField;
    fdTitulosMovtoAReceberdtMovto: TDateField;
    fdTitulosMovtoARecebercodUsuarMovto: TStringField;
    fdTitulosMovtoARecebervalorMovto: TBCDField;
    fdTitulosMovtoAReceberdescHistorico: TStringField;
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
    fdTitulosMovtoAPagarcodTituloAPagar: TIntegerField;
    fdTitulosAPagar: TFDQuery;
    fdTitulosAPagarFC_IMG_EDIT: TStringField;
    fdTitulosAPagarFC_IMG_VIS: TStringField;
    fdTitulosAPagarFC_IMG_DEL: TStringField;
    fdTitulosAPagarFC_NOME_EMIT: TStringField;
    fdTitulosAPagarFC_NOME_PORTADOR: TStringField;
    fdTitulosAPagarFC_FORMA_PAGTO: TStringField;
    fdTitulosAPagarFC_DSC_SIT: TStringField;
    fdTitulosAPagarFC_IMG_CANCEL: TStringField;
    fdTitulosAPagarFC_IMG_ESTORNO: TStringField;
    fdTitulosAPagarcodEmpresa: TIntegerField;
    fdTitulosAPagarcodEstabel: TIntegerField;
    fdTitulosAPagarcodTituloAPagar: TIntegerField;
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
    fdTitulosAPagarvalorTituloPagar: TBCDField;
    fdTitulosAPagarvalorDesconto: TBCDField;
    fdTitulosAPagarvalorJuros: TBCDField;
    fdTitulosAPagarvalorMulta: TBCDField;
    fdTitulosAPagarcodPortador: TIntegerField;
    fdTitulosAPagardoctoReferencia: TStringField;
    fdTitulosAPagarindOrigem: TIntegerField;
    fdTitulosAPagarcodUsuarLiquid: TStringField;
    fdTitulosAPagardtCancelamento: TDateField;
    fdTitulosAPagardtLiquidacao: TDateField;
    fdTitulosAPagarcodUsuarCancela: TStringField;
    fdTitulosAPagarparcela: TIntegerField;
    fdTitulosAPagarpercMultaAtraso: TBCDField;
    fdTitulosAPagarpercJuroDia: TBCDField;
    fdTitulosAPagarpercDesctoAntecip: TBCDField;
    fdTitulosAPagarmotivoCancela: TStringField;
    fdTitulosAPagarcodBanco: TIntegerField;
    fdTitulosAPagaragencia: TLargeintField;
    fdTitulosAPagarcontaCorrente: TStringField;
    fdTitulosAPagarcodOrdemManutencao: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
