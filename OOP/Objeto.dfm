object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 339
  ClientWidth = 418
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
    Left = 159
    Top = 24
    Width = 69
    Height = 14
    Caption = 'Tri'#226'ngulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 160
    Top = 112
    Width = 68
    Height = 14
    Caption = 'Tri'#226'ngulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 240
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 272
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 304
    Width = 4
    Height = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 19
    Top = 59
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label7: TLabel
    Left = 19
    Top = 155
    Width = 33
    Height = 13
    Caption = 'A'
  end
  object Label8: TLabel
    Left = 143
    Top = 59
    Width = 6
    Height = 13
    Caption = 'B'
  end
  object Label9: TLabel
    Left = 143
    Top = 155
    Width = 14
    Height = 13
    Caption = 'B'
  end
  object Label10: TLabel
    Left = 278
    Top = 155
    Width = 7
    Height = 13
    Caption = 'C'
  end
  object Label11: TLabel
    Left = 278
    Top = 59
    Width = 37
    Height = 13
    Caption = 'C'
  end
  object XA: TEdit
    Left = 32
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object XB: TEdit
    Left = 160
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object XC: TEdit
    Left = 296
    Top = 56
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object YA: TEdit
    Left = 32
    Top = 152
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object YB: TEdit
    Left = 160
    Top = 152
    Width = 81
    Height = 21
    TabOrder = 4
  end
  object YC: TEdit
    Left = 296
    Top = 152
    Width = 81
    Height = 21
    TabOrder = 5
  end
  object Button1: TButton
    Left = 96
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
  end
end
