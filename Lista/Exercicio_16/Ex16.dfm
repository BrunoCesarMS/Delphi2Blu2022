object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Form16'
  ClientHeight = 231
  ClientWidth = 412
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
    Top = 67
    Width = 27
    Height = 13
    Caption = 'Aluno'
  end
  object Label2: TLabel
    Left = 32
    Top = 109
    Width = 32
    Height = 13
    Caption = 'Nota 1'
  end
  object Label3: TLabel
    Left = 168
    Top = 109
    Width = 32
    Height = 13
    Caption = 'Nota 2'
  end
  object Label4: TLabel
    Left = 305
    Top = 109
    Width = 32
    Height = 13
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
  object Edit1: TEdit
    Left = 65
    Top = 64
    Width = 321
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 32
    Top = 128
    Width = 81
    Height = 21
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 168
    Top = 128
    Width = 81
    Height = 21
    TabOrder = 2
    Text = 'Edit3'
  end
  object Edit4: TEdit
    Left = 305
    Top = 128
    Width = 81
    Height = 21
    TabOrder = 3
    Text = 'Edit4'
    OnExit = Edit4Exit
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 413
    Height = 41
    Caption = 'Aprovado ou Reprovado?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
end
