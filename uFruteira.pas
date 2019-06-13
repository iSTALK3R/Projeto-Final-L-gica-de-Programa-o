unit uFruteira;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmFruteira = class(TForm)
    lblMorangos: TLabel;
    edtMorangos: TEdit;
    lblMacas: TLabel;
    edtMacas: TEdit;
    btnCalcular: TButton;
    pnlResult: TPanel;
    btnLimpar: TBitBtn;
    btnSair: TBitBtn;
    lblFruteira: TLabel;
    procedure btnCalcularClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFruteira: TFrmFruteira;

implementation

{$R *.dfm}

procedure TFrmFruteira.btnCalcularClick(Sender: TObject);
var
  quantMorango, quantMaca, quantFrutas : real;
  precoMorango, precoMaca, valorCompra : real;
  desconto                             : real;
begin
  quantMorango := StrToInt(edtMorangos.Text);
  quantMaca := StrToInt(edtMacas.Text);
  quantFrutas := quantMorango + quantMaca;

  if (quantMorango <= 5.0) and (quantMaca <= 5.0) then
  begin
    precoMorango := 2.50 * quantMorango;
    precoMaca := 1.80 * quantMaca;
    valorCompra := precoMorango + precoMaca;
  end
  else
  begin
    precoMorango := 2.20 * quantMorango;
    precoMaca := 1.50 * quantMaca;
    valorCompra := precoMorango + precoMaca;
  end;

  if (quantFrutas > 8.0) or (valorCompra > 25.0) then
  begin
    desconto := (valorCompra*10)/100;
    valorCompra := valorCompra - desconto;
    pnlResult.Caption := ('Valor a ser pago será: R$'+ FloatToStr(valorCompra) +' [com desconto de 10%].');
  end
  else
  pnlResult.Caption := ('Valor a ser pago será: R$'+ FloatToStr(valorCompra));

end;

procedure TFrmFruteira.btnLimparClick(Sender: TObject);
begin
  edtMorangos.Clear;
  edtMacas.Clear;
  pnlResult.Caption := 'Resultado';
end;

procedure TFrmFruteira.btnSairClick(Sender: TObject);
begin
  if (MessageDlg('Deseja sair da página?', mtConfirmation, [mbYes, mbNo],0)) = mrYes then
  begin
    Close;
  end;
end;

procedure TFrmFruteira.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmFruteira.FormDestroy(Sender: TObject);
begin
  FrmFruteira := nil;
end;

end.
