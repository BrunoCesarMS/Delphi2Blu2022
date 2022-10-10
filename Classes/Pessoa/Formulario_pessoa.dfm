object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pessoa'
  ClientHeight = 217
  ClientWidth = 371
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
    Left = 60
    Top = 35
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object Label2: TLabel
    Left = 60
    Top = 59
    Width = 96
    Height = 13
    Caption = 'Data da Nascimento'
  end
  object Label3: TLabel
    Left = 58
    Top = 86
    Width = 29
    Height = 13
    Caption = 'Altura'
  end
  object Resultado: TLabel
    Left = 24
    Top = 176
    Width = 62
    Height = 14
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Nome: TEdit
    Left = 168
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Data: TEdit
    Left = 168
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Altura: TEdit
    Left = 168
    Top = 83
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 136
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
