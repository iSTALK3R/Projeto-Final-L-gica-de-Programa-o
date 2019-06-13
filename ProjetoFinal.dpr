program ProjetoFinal;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uEstruturaDecisao in 'uEstruturaDecisao.pas' {FrmDecisao},
  uCombustivel in 'uCombustivel.pas' {FrmCombustivel},
  uPesoIdeal in 'uPesoIdeal.pas' {FrmPesoIdeal},
  uFruteira in 'uFruteira.pas' {FrmFruteira};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmFruteira, FrmFruteira);
  Application.Run;
end.
