object FrmCombustivel: TFrmCombustivel
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo pre'#231'o de combust'#237'vel'
  ClientHeight = 488
  ClientWidth = 445
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
  object Label1: TLabel
    Left = 64
    Top = 95
    Width = 336
    Height = 19
    Caption = 'Informe a quantidade de combust'#237'vel (LITROS)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 117
    Top = 168
    Width = 219
    Height = 19
    Caption = 'Informe o tipo de combust'#237'vel '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblT2: TLabel
    Left = 100
    Top = 201
    Width = 252
    Height = 14
    Caption = 'Obs: [1] para Alcool ou [2] para Gasolina.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 52
    Top = 31
    Width = 365
    Height = 33
    Caption = 'Calcule o pre'#231'o de combust'#237'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtLitros: TEdit
    Left = 104
    Top = 120
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object edtTipo: TEdit
    Left = 104
    Top = 221
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object btnCalc: TButton
    Left = 160
    Top = 264
    Width = 129
    Height = 49
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcClick
  end
  object pnlResult: TPanel
    Left = 52
    Top = 336
    Width = 337
    Height = 65
    Caption = 'Resultado'
    TabOrder = 3
  end
  object Button1: TButton
    Left = 64
    Top = 424
    Width = 129
    Height = 49
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = Button1Click
  end
  object btnSair: TButton
    Left = 246
    Top = 424
    Width = 129
    Height = 49
    Caption = 'Sair'
    TabOrder = 5
    OnClick = btnSairClick
  end
end
