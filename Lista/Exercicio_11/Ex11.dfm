object Form10: TForm10
  Left = 0
  Top = 0
  Caption = 'Form10'
  ClientHeight = 180
  ClientWidth = 346
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
    Left = 65
    Top = 59
    Width = 68
    Height = 13
    Caption = 'Valor de custo'
  end
  object Label2: TLabel
    Left = 39
    Top = 99
    Width = 101
    Height = 13
    Caption = 'Margem de lucro (%)'
  end
  object Label3: TLabel
    Left = 57
    Top = 136
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Edit1: TEdit
    Left = 146
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 146
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
    OnExit = Edit2Exit
  end
end
