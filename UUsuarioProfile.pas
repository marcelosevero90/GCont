unit UUsuarioProfile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniDBEdit, uniLabel, uniGUIBaseClasses,
  uniGroupBox, Data.DB, uniRadioGroup, uniButton, uniBitBtn, uniPanel,
  uniSpeedButton;

type
  TFUsuarioProfile = class(TUniForm)
    gbInfoConta: TUniGroupBox;
    UniLabel1: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    dsUsuario: TDataSource;
    UniLabel2: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    rgTipoUsuario: TUniRadioGroup;
    UniPanel1: TUniPanel;
    btConf: TUniBitBtn;
    btCancel: TUniBitBtn;
    btAltSenha: TUniBitBtn;
    UniLabel3: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    lbAltSenha: TUniLabel;
    gbNovaSenha: TUniGroupBox;
    UniLabel5: TUniLabel;
    edt_nova_senha: TUniEdit;
    edt_nova_senha_rep: TUniEdit;
    btConfNovaSenha: TUniSpeedButton;
    UniSpeedButton1: TUniSpeedButton;
    procedure btCancelClick(Sender: TObject);
    procedure btConfClick(Sender: TObject);
    procedure btAltSenhaClick(Sender: TObject);
    procedure UniSpeedButton1Click(Sender: TObject);
    procedure btConfNovaSenhaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure pConfirmaAlteracao(Sender: TComponent; AResult:Integer);
  end;

function FUsuarioProfile: TFUsuarioProfile;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, Main, ServerModule, UController;

function FUsuarioProfile: TFUsuarioProfile;
begin
  Result := TFUsuarioProfile(UniMainModule.GetFormInstance(TFUsuarioProfile));
end;

procedure TFUsuarioProfile.btAltSenhaClick(Sender: TObject);
begin
  btConf.Enabled      := False;
  gbNovaSenha.Top     := 56;
  gbNovaSenha.Left    := 44;

  edt_nova_senha.Clear;
  edt_nova_senha_rep.Clear;
  
  gbNovaSenha.Visible := True;
  gbInfoConta.Visible := False;
  edt_nova_senha.SetFocus;
end;

procedure TFUsuarioProfile.btCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFUsuarioProfile.btConfClick(Sender: TObject);
begin
  MessageDlg('Confirmar altera��o dos Dados?',mtConfirmation,mbYesNo,pConfirmaAlteracao);  
end;

procedure TFUsuarioProfile.btConfNovaSenhaClick(Sender: TObject);
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
  end;

  MainForm.fdUsuario.Edit;
  MainForm.fdUsuariosenhaUsuario.AsString := MD5String(edt_nova_senha.Text);

  btConf.Enabled      := True;
  gbNovaSenha.Top     := 56;
  gbNovaSenha.Left    := 44;
  lbAltSenha.Visible  := True;
  gbNovaSenha.Visible := False;
  gbInfoConta.Visible := True;

end;



procedure TFUsuarioProfile.pConfirmaAlteracao(Sender: TComponent;
  AResult: Integer);
begin
  if AResult = mrYes then begin
    try                
      MainForm.fdUsuario.Post;
      MainForm.sbMenu.Panels[0].Text    := MainForm.fdUsuario.FieldByName('nomeUsuario').AsString;
      ModalResult := mrOk;
    except
      on e : exception do begin
        MessageDlg('Erro ao salvar registro com messagem: ' + e.Message,mtError,[mbOK],nil);
        Exit;
      end;
    end;
  end;
end;

procedure TFUsuarioProfile.UniSpeedButton1Click(Sender: TObject);
begin
  btConf.Enabled      := True;
  gbNovaSenha.Top     := 56;
  gbNovaSenha.Left    := 44;
  gbNovaSenha.Visible := False;
  gbInfoConta.Visible := True;
end;

end.
