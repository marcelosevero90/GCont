unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniGroupBox, uniButton, uniBitBtn, uniSpeedButton,
  uniImage, uniLabel, uniEdit, uniGUIBaseClasses, uniPanel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFLogin = class(TUniForm)
    UniPanel1: TUniPanel;
    edt_login: TUniEdit;
    edt_senha: TUniEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    img_empresa: TUniImage;
    bt_acessar: TUniSpeedButton;
    UniLabel3: TUniLabel;
    gb_alt_senha: TUniGroupBox;
    edt_nova_senha: TUniEdit;
    edt_nova_senha_rep: TUniEdit;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    btConfNovaSenha: TUniSpeedButton;
    fdAux: TFDQuery;
    procedure bt_acessarClick(Sender: TObject);
    procedure btConfNovaSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pAtualizaInfoMenuUsuario;
    procedure pUsuarioPermisProg;
    procedure pMensagens;
  end;

function FLogin: TFLogin;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UniGUIVars, Main, UController;

function FLogin: TFLogin;
begin
  Result := TFLogin(UniMainModule.GetFormInstance(TFLogin));
end;

procedure TFLogin.btConfNovaSenhaClick(Sender: TObject);
begin
  if edt_nova_senha.Text = '' then begin
    MessageDlg('Nova Senha deve ser informada!',mtError,[mbOK],nil);
    Exit;
  end;
  if edt_nova_senha_rep.Text = '' then begin
    MessageDlg('Nova Senha (Repeti��o) deve ser informada!',mtError,[mbOK],nil);
    Exit;
  end;

  if edt_nova_senha.Text <> edt_nova_senha_rep.Text then begin
    MessageDlg('Senhas n�o conferem!',mtError,[mbOK],nil);
    Exit;
  end
  else begin
    try
      fdAux.Close;
      fdAux.SQL.Clear;
      fdAux.SQL.Add(' update gcUsuarioMestre set senhaUsuario = ' + QuotedStr(MD5String(edt_nova_senha.Text)) +
                   ', dataUltAltAcesso = current_date, altSenhaProxAcesso = 0 '                                  +
                   ' where codEmpresa     = ' + IntToStr(MainForm.iCodEmpresa) +
                   ' and   codEstabel     = ' + IntToStr(MainForm.iCodEstabel) +
                   ' and   codUsuario     = ' + QuotedStr( MainForm.sCodUsuario ) );
      fdAux.ExecSQL();

      pAtualizaInfoMenuUsuario;
      pUsuarioPermisProg;
      ModalResult := mrOk;

    except
      on e : exception do begin
        MessageDlg('Erro na conex�o com o Banco de Dados com messagem: ' + e.Message,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;



end;

procedure TFLogin.bt_acessarClick(Sender: TObject);
var
sSenhaUsuar : string;
begin

  try
    MainForm.fdUsuario.Close;
    MainForm.fdUsuario.SQL.Clear  ;
    MainForm.fdUsuario.SQL.Add(' select * from gcUsuarioMestre ' +
                               ' where codEmpresa     = ' + IntToStr(MainForm.iCodEmpresa) +
                               ' and   codEstabel     = ' + IntToStr(MainForm.iCodEstabel) +
                               ' and   codUsuario    = ' + QuotedStr(edt_login.Text));
    MainForm.fdUsuario.Open;
    if MainForm.fdUsuario.IsEmpty then begin
      MessageDlg('Usu�rio n�o encontrado!',mtError,[mbOK],nil);
      Exit;
    end;
  except
    on e : exception do begin
      MessageDlg('Erro na conex�o com o banco de dados, entre em contato com o suporte - Mensagem: ' + e.Message,mtError,[mbOK],nil);
      Exit;
    end;
  end;

  sSenhaUsuar := MainForm.fdUsuario.FieldByName('senhaUsuario').AsString;

  if MD5String(edt_senha.Text) <> sSenhaUsuar then begin
    MessageDlg('Senha est� incorreta!',mtError,[mbOK],nil);
    Exit;
  end;
  if MainForm.fdUsuario.FieldByName('situacao').AsInteger = 2 then begin
    MessageDlg('Usu�rio est� desabilitado, entre em contato com o Administrador para verificar a sua situa��o!',mtError,[mbOK],nil);
    Exit;
  end;


  //Confirma usu�rio
  MainForm.sCodUsuario  := MainForm.fdUsuario.FieldByName('codUsuario').AsString;

  if MainForm.fdUsuario.FieldByName('altSenhaProxAcesso').AsInteger = 1 then begin
    gb_alt_senha.Top      := 154;
    gb_alt_senha.Left     := 16;
    edt_nova_senha.SetFocus;
    gb_alt_senha.Visible  := True;
    Exit;
  end;

  pAtualizaInfoMenuUsuario;
  pUsuarioPermisProg;
  pMensagens;
  ModalResult := mrOk;
end;

procedure TFLogin.pAtualizaInfoMenuUsuario;
var
sNomeUsuario,sAux : string;
i : integer;
begin
  sNomeUsuario := '';
  sAux := MainForm.fdUsuario.FieldByName('nomeUsuario').AsString;
  for I := 1 to Length(sAux) do begin
    if sAux[i] = ' ' then
      Break;
    sNomeUsuario := sNomeUsuario + sAux[i];
  end;

  if sNomeUsuario = '' then begin
    sNomeUsuario := MainForm.fdUsuario.FieldByName('nomeUsuario').AsString;
  end;

  MainForm.btUsuarioConfig.Caption  := sNomeUsuario;
  MainForm.sbMenu.Panels[0].Text    := MainForm.fdUsuario.FieldByName('nomeUsuario').AsString;
  MainForm.sbMenu.Panels[1].Text    := MainForm.fdEmpresa.FieldByName('codEmpresa').AsString + ' - ' + MainForm.fdEmpresa.FieldByName('razaoSocial').AsString;
end;

procedure TFLogin.pMensagens;
begin
  MainForm.gbMsg.Visible := False;
  MainForm.fdMensagem.Close;
  MainForm.fdMensagem.SQL.Clear;
  MainForm.fdMensagem.SQL.Add(  ' select * from gcMensagem '
                              + ' where (codEmpresa = ' + IntToStr(MainForm.iCodEmpresa)
                              + '    or  codEmpresa = 0) '
                              + '   and dtIniValid <= current_date '
                              + '   and dtFimValid >= current_date ')  ;
  MainForm.fdMensagem.Active := True;
  MainForm.fdMensagem.First;
  if not MainForm.fdMensagem.IsEmpty then
    MainForm.gbMsg.Visible := True;
end;

procedure TFLogin.pUsuarioPermisProg;
var
i : integer;
nd : TUniTreeNode;
begin

  fdAux.Close;
  fdAux.SQL.Clear;
  fdAux.SQL.Add(' select * from gcUsuarioPermisPrograma ' +
                ' where codEmpresa     = ' + IntToStr(MainForm.iCodEmpresa) +
                ' and   codEstabel     = ' + IntToStr(MainForm.iCodEstabel) +
                ' and   codUsuario     = ' + QuotedStr(MainForm.sCodUsuario)  );
  fdAux.Active := True;

  for I := 0 to MainForm.NavTree.Items.Count - 1 do begin
    if MainForm.NavTree.Items[i].SelectedIndex = 99 then
      Continue;
    MainForm.NavTree.Items[i].Enabled := False;
  end;

  fdAux.First;
  for I := 0 to fdAux.RecordCount - 1 do begin

    nd := MainForm.NavTree.Items.FindNodeByCaption(fdAux.FieldByName('codPrograma').AsString);
    if Assigned(nd) then begin
      nd.Enabled := True;
    end;
    fdAux.Next;
  end;

  if MainForm.fdUsuario.FieldByName('tipoUsuario').AsInteger = 2 then begin //Super - permite manuten��o para usu�rios
    nd := MainForm.NavTree.Items.FindNodeByCaption('USU�RIOS');
    nd.Enabled := True;
    nd := MainForm.NavTree.Items.FindNodeByCaption('EMPRESA');
    nd.Enabled := True;
  end
  else begin  //comum - n�o permite manuten��o para usu�rio comum
    nd := MainForm.NavTree.Items.FindNodeByCaption('USU�RIOS');
    nd.Enabled := False;
    nd := MainForm.NavTree.Items.FindNodeByCaption('EMPRESA');
    nd.Enabled := False;
  end;

end;

initialization
  RegisterAppFormClass(TFLogin);

end.
