unit uEstruturaDecisao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmDecisao = class(TForm)
    Label1: TLabel;
    btnCombustivel: TButton;
    btnPesoIdeal: TButton;
    btnFruteira: TButton;
    Label2: TLabel;
    btnSair: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btnCombustivelClick(Sender: TObject);
    procedure btnPesoIdealClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnFruteiraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDecisao: TFrmDecisao;

implementation

{$R *.dfm}

uses uCombustivel, uPesoIdeal, uFruteira;

procedure TFrmDecisao.btnCombustivelClick(Sender: TObject);
begin
  if (FrmCombustivel = nil) then
  begin
    Application.CreateForm(TFrmCombustivel,FrmCombustivel);
  end;
  FrmCombustivel.Show;
end;

procedure TFrmDecisao.btnFruteiraClick(Sender: TObject);
begin
  if (FrmFruteira = nil) then
  begin
    Application.CreateForm(TFrmFruteira,FrmFruteira);
  end;
  FrmFruteira.Show;
end;

procedure TFrmDecisao.btnPesoIdealClick(Sender: TObject);
begin
  if (FrmPesoIdeal = nil) then
  begin
    Application.CreateForm(TFrmPesoIdeal,FrmPesoIdeal);
  end;
  FrmPesoIdeal.Show;
end;

procedure TFrmDecisao.btnSairClick(Sender: TObject);
begin
  if (MessageDlg('Deseja sair da página?', mtConfirmation, [mbYes, mbNo],0)) = mrYes then
  begin
    Close;
  end;
end;

procedure TFrmDecisao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmDecisao.FormDestroy(Sender: TObject);
begin
  FrmDecisao := nil;
end;

end.
