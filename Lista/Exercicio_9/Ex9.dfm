object Form9: TForm9
  Left = 0
  Top = 0
  Caption = 'Form9'
  ClientHeight = 150
  ClientWidth = 352
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
    Left = 64
    Top = 75
    Width = 80
    Height = 13
    Caption = 'Valor depositado'
  end
  object Label2: TLabel
    Left = 37
    Top = 102
    Width = 107
    Height = 13
    Caption = 'Valor ap'#243's rendimento'
  end
  object Edit1: TEdit
    Left = 150
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 150
    Top = 99
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
    OnEnter = Edit2Enter
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 41
    Caption = 'Valor ap'#243's aplica'#231#227'o na poupan'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
