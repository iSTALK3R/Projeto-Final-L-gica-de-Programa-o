object FrmDecisao: TFrmDecisao
  Left = 0
  Top = 0
  Caption = 'Estrutura de Decis'#227'o'
  ClientHeight = 432
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 176
    Width = 136
    Height = 19
    Caption = 'Escolha uma op'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 240
    Top = 128
    Width = 194
    Height = 25
    Caption = 'Estrutura de Decis'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btnCombustivel: TButton
    Left = 113
    Top = 232
    Width = 129
    Height = 41
    Caption = 'Combust'#237'vel'
    TabOrder = 0
    OnClick = btnCombustivelClick
  end
  object btnPesoIdeal: TButton
    Left = 271
    Top = 232
    Width = 129
    Height = 41
    Caption = 'Peso Ideal'
    TabOrder = 1
    OnClick = btnPesoIdealClick
  end
  object btnFruteira: TButton
    Left = 431
    Top = 232
    Width = 129
    Height = 41
    Caption = 'Fruteira'
    TabOrder = 2
    OnClick = btnFruteiraClick
  end
  object btnSair: TButton
    Left = 271
    Top = 296
    Width = 129
    Height = 41
    Caption = 'Sair'
    TabOrder = 3
    OnClick = btnSairClick
  end
end
