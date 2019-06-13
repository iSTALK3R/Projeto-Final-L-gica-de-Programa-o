object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'ProjetoFinal'
  ClientHeight = 102
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object btnDecisao: TButton
    Left = 14
    Top = 31
    Width = 129
    Height = 41
    Caption = 'Estrutura de Decis'#227'o'
    TabOrder = 0
    OnClick = btnDecisaoClick
  end
  object btnSair: TButton
    Left = 158
    Top = 32
    Width = 130
    Height = 40
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btnSairClick
  end
end
