object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 242
  ClientWidth = 269
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
    Left = 66
    Top = 131
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 40
    Top = 77
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
  end
  object Label3: TLabel
    Left = 57
    Top = 104
    Width = 28
    Height = 13
    Caption = 'Idade'
  end
  object Label4: TLabel
    Left = 57
    Top = 50
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object CPF: TEdit
    Left = 103
    Top = 128
    Width = 120
    Height = 21
    MaxLength = 11
    TabOrder = 3
  end
  object Button1: TButton
    Left = 128
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Validar CPF'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Endereco: TEdit
    Left = 103
    Top = 74
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Idade: TEdit
    Left = 103
    Top = 101
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Nome: TEdit
    Left = 103
    Top = 47
    Width = 121
    Height = 21
    TabOrder = 0
  end
end
