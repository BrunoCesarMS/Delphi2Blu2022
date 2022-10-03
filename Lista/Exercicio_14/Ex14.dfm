object Form14: TForm14
  Left = 0
  Top = 0
  Caption = 'Form14'
  ClientHeight = 178
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
    Left = 40
    Top = 51
    Width = 33
    Height = 13
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 40
    Top = 83
    Width = 33
    Height = 21
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Edit1: TEdit
    Left = 88
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 88
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
    OnExit = Edit2Exit
  end
end
