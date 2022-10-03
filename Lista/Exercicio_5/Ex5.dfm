object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'M'#233'dia do aluno'
  ClientHeight = 240
  ClientWidth = 375
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 24
    Top = 64
    Width = 32
    Height = 16
    Caption = 'Aluno'
  end
  object Label2: TLabel
    Left = 24
    Top = 109
    Width = 37
    Height = 16
    Caption = 'Nota 1'
  end
  object Label3: TLabel
    Left = 152
    Top = 109
    Width = 37
    Height = 16
    Caption = 'Nota 2'
  end
  object Label4: TLabel
    Left = 281
    Top = 109
    Width = 37
    Height = 16
    Caption = 'Nota 3'
  end
  object Label5: TLabel
    Left = 24
    Top = 184
    Width = 42
    Height = 16
    Caption = 'Label5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 206
    Width = 37
    Height = 16
    Caption = 'Label6'
  end
  object Edit1: TEdit
    Left = 57
    Top = 61
    Width = 289
    Height = 24
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 128
    Width = 65
    Height = 24
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 152
    Top = 128
    Width = 65
    Height = 24
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 281
    Top = 131
    Width = 65
    Height = 24
    TabOrder = 3
    OnExit = Edit4Exit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 377
    Height = 33
    Caption = 'M'#233'dia do aluno'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
end
