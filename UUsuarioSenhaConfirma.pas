unit UUsuarioSenhaConfirma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniLabel, uniGUIBaseClasses, uniEdit, uniButton,
  uniBitBtn, uniPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFUsuarioSenhaConfirma = class(TUniForm)
    edtUsuario: TUniEdit;
    UniLabel5: TUniLabel;
    edtSenha: TUniEdit;
    UniLabel1: TUniLabel;
    UniPanel1: TUniPanel;
    btConf: TUniBitBtn;
    btCancel: TUniBitBtn;
    fqAuxiliar: TFDQuery;
    procedure btCancelClick(Sender: TObject);
    procedure btConfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FUsuarioSenhaConfirma: TFUsuarioSenhaConfirma;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UController, Main;

function FUsuarioSenhaConfirma: TFUsuarioSenhaConfirma;
begin
  Result := TFUsuarioSenhaConfirma(UniMainModule.GetFormInstance(TFUsuarioSenhaConfirma));
end;

procedure TFUsuarioSenhaConfirma.btCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFUsuarioSenhaConfirma.btConfClick(Sender: TObject);
var
sSenhaUsuar : string;
begin
  try
    fqAuxiliar.Close;
    fqAuxiliar.SQL.Clear  ;
    fqAuxiliar.SQL.Add(' select * from gcUsuarioMestre ' +
                               ' where codEmpresa     = ' + IntToStr(MainForm.iCodEmpresa) +
                               ' and   codEstabel     = ' + IntToStr(MainForm.iCodEstabel) +
                               ' and   codUsuario     = ' + QuotedStr(edtUsuario.Text));
    fqAuxiliar.Open;
    if fqAuxiliar.IsEmpty then begin
      MessageDlg('Usu�rio n�o encontrado!',mtError,[mbOK],nil);
      Exit;
    end;
  except
    on e : exception do begin
      MessageDlg('Erro na conex�o com o banco de dados, entre em contato com o suporte - Mensagem: ' + e.Message,mtError,[mbOK],nil);
      Exit;
    end;
  end;

  sSenhaUsuar := fqAuxiliar.FieldByName('senhaUsuario').AsString;

  if MD5String(edtSenha.Text) <> sSenhaUsuar then begin
    MessageDlg('Senha est� incorreta!',mtError,[mbOK],nil);
    Exit;
  end;
  if MainForm.fdUsuario.FieldByName('situacao').AsInteger = 2 then begin
    MessageDlg('Usu�rio est� desabilitado, entre em contato com o Administrador para verificar a sua situa��o!',mtError,[mbOK],nil);
    Exit;
  end;


  ModalResult := mrOk;
end;

end.
