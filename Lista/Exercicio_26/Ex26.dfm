object Form26: TForm26
  Left = 0
  Top = 0
  Caption = 'Form26'
  ClientHeight = 203
  ClientWidth = 253
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
    Left = 32
    Top = 75
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Label2: TLabel
    Left = 32
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
    Left = 121
    Top = 72
    Width = 96
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 88
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = -8
    Top = 0
    Width = 265
    Height = 41
    Caption = 'N'#250'mero Extenso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
