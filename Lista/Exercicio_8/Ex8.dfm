object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Form8'
  ClientHeight = 229
  ClientWidth = 299
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
    Left = 21
    Top = 56
    Width = 141
    Height = 13
    Caption = 'Valor em D'#243'lar dispon'#237'vel US$'
  end
  object Label2: TLabel
    Left = 69
    Top = 99
    Width = 93
    Height = 13
    Caption = 'Cota'#231#227'o D'#243'lar/Real'
  end
  object Label3: TLabel
    Left = 81
    Top = 182
    Width = 81
    Height = 13
    Caption = 'Valor em Real R$'
  end
  object Edit1: TEdit
    Left = 168
    Top = 53
    Width = 99
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 168
    Top = 96
    Width = 99
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 192
    Top = 131
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 168
    Top = 179
    Width = 99
    Height = 21
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 6
    Width = 297
    Height = 41
    Caption = 'Conversor D'#243'lar para Real'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
end
