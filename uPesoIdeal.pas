unit uPesoIdeal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmPesoIdeal = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblSexo: TLabel;
    edtSexo: TEdit;
    lblAltura: TLabel;
    edtAltura: TEdit;
    btnCalcular: TButton;
    pnlResult: TPanel;
    btnLimpar: TButton;
    Label1: TLabel;
    lblSair: TButton;
    Label2: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure lblSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPesoIdeal: TFrmPesoIdeal;

implementation

{$R *.dfm}

procedure TFrmPesoIdeal.btnCalcularClick(Sender: TObject);
var
  nome, sexo : ShortString;
  alt, pesoIdeal : real;
begin
  nome := (edtNome.Text);
  sexo := (edtSexo.Text);
  alt := StrToFloat(edtAltura.Text);

  if ((sexo = 'M') or (sexo = 'F') or (sexo = 'm') or (sexo = 'f')) then
  begin
    if ((sexo = 'M') or (sexo = 'm')) then
    begin
      pesoIdeal := ((72.7 * alt) - 58);
      pnlResult.Caption := (nome + ', seu peso ideal é: ' + FloatToStr(pesoIdeal));
    end
    else
      pesoIdeal := ((62.1 * alt) - 44.7);
      pnlResult.Caption := (nome + ', seu peso ideal é: ' + FloatToStr(pesoIdeal));
  end
  else
  ShowMessage('Gênero inválido!!! Utilize somente [M] ou [F].');
end;

procedure TFrmPesoIdeal.btnLimparClick(Sender: TObject);
begin
  edtNome.Clear;
  edtAltura.Clear;
  edtSexo.Clear;
  pnlResult.Caption := 'Resultado';
end;

procedure TFrmPesoIdeal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmPesoIdeal.FormDestroy(Sender: TObject);
begin
  FrmPesoIdeal := nil;
end;

procedure TFrmPesoIdeal.lblSairClick(Sender: TObject);
begin
  if (MessageDlg('Deseja sair da página?', mtConfirmation, [mbYes, mbNo],0)) = mrYes then
  begin
    Close;
  end;
end;

end.
