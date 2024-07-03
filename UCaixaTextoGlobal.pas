unit UCaixaTextoGlobal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniMemo, uniButton, uniBitBtn, uniPanel,
  uniGUIBaseClasses, uniGroupBox;

type
  TFCaixaTextoGlobal = class(TUniForm)
    gbMensagem: TUniGroupBox;
    UniPanel1: TUniPanel;
    btConf: TUniBitBtn;
    btCancel: TUniBitBtn;
    mmMsg: TUniMemo;
    procedure btCancelClick(Sender: TObject);
    procedure btConfClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FCaixaTextoGlobal: TFCaixaTextoGlobal;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FCaixaTextoGlobal: TFCaixaTextoGlobal;
begin
  Result := TFCaixaTextoGlobal(UniMainModule.GetFormInstance(TFCaixaTextoGlobal));
end;

procedure TFCaixaTextoGlobal.btCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TFCaixaTextoGlobal.btConfClick(Sender: TObject);
begin
  if mmMsg.Lines.Text = '' then begin
    MessageDlg('Informe uma descrição para continuar!' ,mtError,[mbOK],nil);
    Exit;
  end;
  ModalResult := mrYes;
end;

end.
