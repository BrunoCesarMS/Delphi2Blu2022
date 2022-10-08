object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Heran'#231'a'
  ClientHeight = 131
  ClientWidth = 227
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
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Animal'
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 40
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Cachorro'
      'Gato'
      'P'#225'ssaro')
  end
  object Button1: TButton
    Left = 40
    Top = 67
    Width = 145
    Height = 25
    Caption = 'Que som eu fa'#231'o?'
    TabOrder = 1
    OnClick = Button1Click
  end
end
