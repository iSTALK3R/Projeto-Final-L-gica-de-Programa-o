object FrmFruteira: TFrmFruteira
  Left = 0
  Top = 0
  Caption = 'Fruteira'
  ClientHeight = 476
  ClientWidth = 354
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lblMorangos: TLabel
    Left = 8
    Top = 80
    Width = 296
    Height = 18
    Caption = 'Informe a quantidade de Morangos em Kilos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblMacas: TLabel
    Left = 8
    Top = 152
    Width = 274
    Height = 18
    Caption = 'Informe a quantidade de Macas em Kilos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblFruteira: TLabel
    Left = 137
    Top = 24
    Width = 83
    Height = 29
    Caption = 'Fruteira'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtMorangos: TEdit
    Left = 8
    Top = 112
    Width = 337
    Height = 21
    TabOrder = 0
  end
  object edtMacas: TEdit
    Left = 8
    Top = 184
    Width = 337
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 104
    Top = 232
    Width = 153
    Height = 49
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object pnlResult: TPanel
    Left = 40
    Top = 312
    Width = 281
    Height = 65
    Caption = 'Resultado'
    TabOrder = 3
  end
  object btnLimpar: TBitBtn
    Left = 40
    Top = 408
    Width = 121
    Height = 49
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = btnLimparClick
  end
  object btnSair: TBitBtn
    Left = 200
    Top = 408
    Width = 121
    Height = 49
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
end
