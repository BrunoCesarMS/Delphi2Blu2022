object Form11: TForm11
  Left = 0
  Top = 0
  Caption = 'Form11'
  ClientHeight = 242
  ClientWidth = 247
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
    Left = 32
    Top = 48
    Width = 65
    Height = 13
    Caption = 'Valor Produto'
  end
  object Memo1: TMemo
    Left = 32
    Top = 127
    Width = 176
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 103
    Top = 45
    Width = 105
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 103
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Calcular Presta'#231#245'es'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = -2
    Width = 249
    Height = 41
    Caption = 'C'#225'lculo de Presta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
end
