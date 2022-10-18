object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 262
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RadioGroup1: TRadioGroup
    Left = 40
    Top = 41
    Width = 280
    Height = 105
    Caption = 'Combust'#237'vel'
    Items.Strings = (
      'Gasolina'
      'Alcool'
      'Diesel')
    TabOrder = 0
    OnClick = RadioGroup1Click
  end
  object Button1: TButton
    Left = 40
    Top = 152
    Width = 129
    Height = 25
    Caption = 'Abastecer por valor (R$)'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 40
    Top = 183
    Width = 129
    Height = 25
    Caption = 'Abastecer por litro'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 191
    Top = 152
    Width = 129
    Height = 25
    Caption = 'Alterar valor'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 191
    Top = 183
    Width = 129
    Height = 25
    Caption = 'Alterar Quantidade'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 120
    Top = 214
    Width = 129
    Height = 25
    Caption = 'Alterar Combust'#237'vel'
    TabOrder = 5
  end
end
