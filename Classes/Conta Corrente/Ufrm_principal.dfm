object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 205
  ClientWidth = 291
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
    Left = 16
    Top = 35
    Width = 82
    Height = 13
    Caption = 'N'#250'mero da conta'
  end
  object Label2: TLabel
    Left = 25
    Top = 62
    Width = 73
    Height = 13
    Caption = 'Nome do titular'
  end
  object Label3: TLabel
    Left = 72
    Top = 89
    Width = 26
    Height = 13
    Caption = 'Saldo'
  end
  object Button1: TButton
    Left = 25
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Criar Conta'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 176
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Saque'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 176
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Dep'#243'sito'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 25
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Alterar Nome'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 104
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '0,00'
  end
end
