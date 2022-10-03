object Form23: TForm23
  Left = 0
  Top = 0
  Caption = 'Form23'
  ClientHeight = 206
  ClientWidth = 287
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
    Left = 48
    Top = 88
    Width = 83
    Height = 13
    Caption = 'Digite um n'#250'mero'
  end
  object Edit1: TEdit
    Left = 137
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 112
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 2
    Top = 0
    Width = 287
    Height = 41
    Caption = 'N'#250'mero Premiado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
