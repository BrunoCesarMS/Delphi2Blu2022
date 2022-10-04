object Form1: TForm1
  Left = 13
  Top = 0
  Caption = 'C'#225'lculo Conta de Luz'
  ClientHeight = 294
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 72
    Width = 63
    Height = 13
    Caption = 'KW/h Medido'
  end
  object Label2: TLabel
    Left = 24
    Top = 240
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 99
    Width = 90
    Height = 13
    Caption = 'Informar Desconto'
  end
  object Edit1: TEdit
    Left = 120
    Top = 69
    Width = 116
    Height = 21
    TabOrder = 0
  end
  object TipoCliente: TRadioGroup
    Left = 40
    Top = 136
    Width = 185
    Height = 65
    Caption = 'Tipo de Cliente'
    Items.Strings = (
      'Residencial'
      'Comercial'
      'Industrial'
      'Fazenda')
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 278
    Height = 41
    Align = alTop
    Caption = 'Conta de Luz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Edit2: TEdit
    Left = 120
    Top = 96
    Width = 116
    Height = 21
    TabOrder = 4
  end
end
