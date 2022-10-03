object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Conversor '#176'C para '#176'F'
  ClientHeight = 175
  ClientWidth = 311
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
    Top = 72
    Width = 98
    Height = 13
    Caption = 'Temperatura Celsius'
  end
  object Label2: TLabel
    Left = 16
    Top = 123
    Width = 117
    Height = 13
    Caption = 'Temperatura Fahrenheit'
  end
  object Panel1: TPanel
    Left = 0
    Top = 8
    Width = 313
    Height = 41
    Caption = 'Conversor Celsius para Fahrenhein'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 160
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 160
    Top = 120
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
end
