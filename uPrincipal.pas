unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    btnDecisao: TButton;
    btnSair: TButton;
    procedure btnLogicoClick(Sender: TObject);
    procedure btnDecisaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uRaciocinioLogico, uEstruturaDecisao;

procedure TFrmPrincipal.btnDecisaoClick(Sender: TObject);
begin
  if (FrmDecisao = nil) then
  begin
    Application.CreateForm(TFrmDecisao,FrmDecisao);
  end;
  FrmDecisao.Show;
end;

procedure TFrmPrincipal.btnLogicoClick(Sender: TObject);
begin
  if (FrmLogico = nil) then
  begin
    Application.CreateForm(TFrmLogico,FrmLogico);
  end;
  FrmLogico.Show;
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  if (MessageDlg('Deseja sair da aplicação?', mtConfirmation, [mbYes, mbNo],0)) = mrYes then
  begin
    Close;
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmPrincipal.FormDestroy(Sender: TObject);
begin
  FrmPrincipal := nil;
end;

end.
