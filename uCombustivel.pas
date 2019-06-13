unit uCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmCombustivel = class(TForm)
    Label1: TLabel;
    edtLitros: TEdit;
    Label2: TLabel;
    edtTipo: TEdit;
    btnCalc: TButton;
    pnlResult: TPanel;
    lblT2: TLabel;
    Button1: TButton;
    btnSair: TButton;
    Label3: TLabel;
    procedure btnCalcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCombustivel: TFrmCombustivel;

implementation

{$R *.dfm}

procedure TFrmCombustivel.btnCalcClick(Sender: TObject);
var
  litro, precoA, precoG : real;
  codComb               : integer;
  valorPago, desconto   : real;
begin
  litro := StrToFloat(edtLitros.Text);
  codComb := StrToInt(edtTipo.Text);

  precoA := 1.90;
  precoG := 2.20;

  if ((codComb = 1) and (litro <= 20)) then
  begin
    desconto := ((precoA*3)/100);
    valorPago := ((precoA * litro) - desconto);
    pnlResult.Caption := ('O valor a pagar é: R$'+ FloatToStr(valorPago));
  end
  else
  if ((codComb = 1) and (litro > 20)) then
  begin
    desconto := ((precoA*5)/100);
    valorPago := ((precoA * litro) - desconto);
    pnlResult.Caption := ('O valor a pagar é: R$'+ FloatToStr(valorPago));
  end;

  if ((codComb = 2) and (litro <= 20)) then
  begin
    desconto := ((precoG*4)/100);
    valorPago := ((precoG * litro) - desconto);
    pnlResult.Caption := ('O valor a pagar é: R$'+ FloatToStr(valorPago));
  end
  else
  if ((codComb = 2) and (litro > 20)) then
  begin
    desconto := ((precoG*6)/100);
    valorPago := ((precoG * litro) - desconto);
    pnlResult.Caption := ('O valor a pagar é: R$'+ FloatToStr(valorPago));
  end;

end;

procedure TFrmCombustivel.btnSairClick(Sender: TObject);
begin
  if (MessageDlg('Deseja sair da página?', mtConfirmation, [mbYes, mbNo],0)) = mrYes then
  begin
    Close;
  end;
end;

procedure TFrmCombustivel.Button1Click(Sender: TObject);
begin
  edtLitros.Clear;
  edtTipo.Clear;
  pnlResult.Caption := 'Resultado';
end;

procedure TFrmCombustivel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmCombustivel.FormDestroy(Sender: TObject);
begin
  FrmCombustivel := nil;
end;

end.
