object FrmPesoIdeal: TFrmPesoIdeal
  Left = 0
  Top = 0
  Caption = 'C'#225'lculo de Peso Ideal'
  ClientHeight = 517
  ClientWidth = 338
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
  object lblNome: TLabel
    Left = 100
    Top = 96
    Width = 137
    Height = 19
    Caption = 'Informe seu nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblSexo: TLabel
    Left = 97
    Top = 220
    Width = 146
    Height = 19
    Caption = 'Informe seu g'#234'nero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblAltura: TLabel
    Left = 100
    Top = 157
    Width = 137
    Height = 19
    Caption = 'Informe sua altura:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 68
    Top = 32
    Width = 210
    Height = 25
    Caption = 'Calcule seu Peso Ideal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 59
    Top = 245
    Width = 219
    Height = 14
    Caption = '[M] Para Homem ou [F] Para Mulher'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 56
    Top = 121
    Width = 233
    Height = 21
    TabOrder = 0
  end
  object edtSexo: TEdit
    Left = 136
    Top = 261
    Width = 65
    Height = 21
    TabOrder = 1
  end
  object edtAltura: TEdit
    Left = 97
    Top = 182
    Width = 146
    Height = 21
    TabOrder = 2
  end
  object btnCalcular: TButton
    Left = 24
    Top = 299
    Width = 129
    Height = 49
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object pnlResult: TPanel
    Left = 48
    Top = 372
    Width = 241
    Height = 59
    Caption = 'Resultado'
    TabOrder = 4
  end
  object btnLimpar: TButton
    Left = 184
    Top = 299
    Width = 129
    Height = 49
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = btnLimparClick
  end
  object lblSair: TButton
    Left = 102
    Top = 451
    Width = 129
    Height = 49
    Caption = 'Sair'
    TabOrder = 6
    OnClick = lblSairClick
  end
end
