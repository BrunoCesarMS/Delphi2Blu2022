object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Form12'
  ClientHeight = 249
  ClientWidth = 321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 51
    Width = 81
    Height = 13
    Caption = 'Valor custo carro'
  end
  object Label2: TLabel
    Left = 87
    Top = 88
    Width = 66
    Height = 13
    Caption = 'Impostos (%)'
  end
  object Label3: TLabel
    Left = 71
    Top = 128
    Width = 82
    Height = 13
    Caption = 'Distribuidora (%)'
  end
  object Label4: TLabel
    Left = 19
    Top = 200
    Width = 22
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 159
    Top = 48
    Width = 98
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 159
    Top = 85
    Width = 98
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 159
    Top = 125
    Width = 98
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 119
    Top = 160
    Width = 98
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 33
    Caption = 'Valor final de um carro ao consumidor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
end
