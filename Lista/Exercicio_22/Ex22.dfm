object Form22: TForm22
  Left = 0
  Top = 0
  Caption = 'Form22'
  ClientHeight = 209
  ClientWidth = 374
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
    Left = 34
    Top = 91
    Width = 176
    Height = 13
    Caption = 'Quantos produtos deseja cadastrar?'
  end
  object Edit1: TEdit
    Left = 216
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 152
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 41
    Caption = 'Lucro ou Preju'#237'zo?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
end
