unit uRaciocinioLogico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmLogico = class(TForm)
    Label1: TLabel;
    btnE1: TButton;
    btnE2: TButton;
    btnE3: TButton;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogico: TFrmLogico;

implementation

{$R *.dfm}

procedure TFrmLogico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TFrmLogico.FormDestroy(Sender: TObject);
begin
  FrmLogico := nil;
end;

end.
