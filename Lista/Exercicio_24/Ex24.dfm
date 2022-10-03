object Form24: TForm24
  Left = 0
  Top = 0
  Caption = 'Form24'
  ClientHeight = 197
  ClientWidth = 280
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
    Left = 24
    Top = 72
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Label2: TLabel
    Left = 24
    Top = 160
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 281
    Height = 41
    Caption = 'N'#250'mero Positivo ou Negativo?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 2
    OnClick = Button1Click
  end
end
