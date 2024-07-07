{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  GCont;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Main in 'Main.pas' {MainForm: TUniForm},
  ULogin in 'ULogin.pas' {FLogin: TUniForm},
  UController in 'UController.pas',
  UUsuarioProfile in 'UUsuarioProfile.pas' {FUsuarioProfile: TUniForm},
  UUsuarioPermisPrograma in 'UUsuarioPermisPrograma.pas' {FUsuarioPermisPrograma: TUniFrame},
  UBOUsuario in 'UBOUsuario.pas',
  UUsuarioSenhaConfirma in 'UUsuarioSenhaConfirma.pas' {FUsuarioSenhaConfirma: TUniForm},
  UEmpresa in 'UEmpresa.pas' {FEmpresa: TUniFrame},
  UBOEmpresa in 'UBOEmpresa.pas',
  UBanco in 'UBanco.pas' {FBanco: TUniFrame},
  UBOBanco in 'UBOBanco.pas',
  UFormasPagamento in 'UFormasPagamento.pas' {FFormasPagamento: TUniFrame},
  UBOFormasPagamento in 'UBOFormasPagamento.pas',
  UUnidadeMedida in 'UUnidadeMedida.pas' {FUnidadeMedida: TUniFrame},
  UBOUnidadeMedida in 'UBOUnidadeMedida.pas',
  UPortadorFinanceiro in 'UPortadorFinanceiro.pas' {FPortadorFinanceiro: TUniFrame},
  UBOPortadorFinanceiro in 'UBOPortadorFinanceiro.pas',
  UCondPagamento in 'UCondPagamento.pas' {FCondPagamento: TUniFrame},
  UBOCondPagto in 'UBOCondPagto.pas',
  UOperadorMaqEquip in 'UOperadorMaqEquip.pas' {FOperadorMaqEquip: TUniFrame},
  UBOOperadorMaqEquip in 'UBOOperadorMaqEquip.pas',
  UItemFamilia in 'UItemFamilia.pas' {FItemFamilia: TUniFrame},
  UBOItemFamilia in 'UBOItemFamilia.pas',
  UTabelaPreco in 'UTabelaPreco.pas' {FTabelaPreco: TUniFrame},
  UBOTabelaPreco in 'UBOTabelaPreco.pas',
  UBOTabPrecoItem in 'UBOTabPrecoItem.pas',
  UMaquinaEquipamento in 'UMaquinaEquipamento.pas' {FMaquinaEquipamento: TUniFrame},
  UBOMaquinaEquipamento in 'UBOMaquinaEquipamento.pas',
  UItem in 'UItem.pas' {FItem: TUniFrame},
  UBOItem in 'UBOItem.pas',
  UEmitente in 'UEmitente.pas' {FEmitente: TUniFrame},
  UBOEmitente in 'UBOEmitente.pas',
  UBOEmitenteEndereco in 'UBOEmitenteEndereco.pas',
  UBOEmitenteContaBancaria in 'UBOEmitenteContaBancaria.pas',
  UOrdemServicoManutencao in 'UOrdemServicoManutencao.pas' {FOrdemServicoManutencao: TUniFrame},
  UBOOrdemServico in 'UBOOrdemServico.pas',
  UBOOrdemServItem in 'UBOOrdemServItem.pas',
  UCaixaTextoGlobal in 'UCaixaTextoGlobal.pas' {FCaixaTextoGlobal: TUniForm},
  UOrdemServicoDetalhes in 'UOrdemServicoDetalhes.pas' {FOrdemServicoDetalhes: TUniForm},
  UTitulosAReceberManutencao in 'UTitulosAReceberManutencao.pas' {FTitulosAReceberManutencao: TUniFrame},
  UBOTitulosAReceber in 'UBOTitulosAReceber.pas',
  UTitulosAReceberLiquidacao in 'UTitulosAReceberLiquidacao.pas' {FTitulosAReceberLiquidacao: TUniFrame},
  URelatoriosGeraisSistema in 'URelatoriosGeraisSistema.pas' {FRelatoriosGeraisSistema: TUniFrame},
  UTitulosAReceberRelatorio in 'UTitulosAReceberRelatorio.pas' {FTitulosAReceberRelatorio: TUniFrame},
  UOrdemServicoRelatorio in 'UOrdemServicoRelatorio.pas' {FOrdemServicoRelatorio: TUniFrame},
  UTitulosAPagarManutencao in 'UTitulosAPagarManutencao.pas' {FTitulosAPagarManutencao: TUniFrame},
  UBOTitulosAPagar in 'UBOTitulosAPagar.pas',
  UTitulosAPagarLiquidacao in 'UTitulosAPagarLiquidacao.pas' {FTitulosAPagarLiquidacao: TUniFrame},
  UTitulosAPagarRelatorio in 'UTitulosAPagarRelatorio.pas' {FTitulosAPagarRelatorio: TUniFrame};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
