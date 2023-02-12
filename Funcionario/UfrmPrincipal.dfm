object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 191
  ClientWidth = 555
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 241
    Height = 153
    Caption = 'Funcion'#225'rio'
    TabOrder = 0
    object Label1: TLabel
      Left = 43
      Top = 40
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label2: TLabel
      Left = 16
      Top = 69
      Width = 58
      Height = 13
      Caption = 'Sobrenome:'
    end
    object Label3: TLabel
      Left = 38
      Top = 95
      Width = 36
      Height = 13
      Caption = 'Sal'#225'rio:'
    end
    object edtSobrenome: TEdit
      Left = 80
      Top = 65
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtSalario: TEdit
      Left = 80
      Top = 92
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtNome: TEdit
      Left = 80
      Top = 37
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnAdicionar: TButton
      Left = 80
      Top = 119
      Width = 121
      Height = 25
      Caption = 'Adicionar Funcion'#225'rio'
      TabOrder = 3
      OnClick = btnAdicionarClick
    end
  end
  object Memo1: TMemo
    Left = 272
    Top = 16
    Width = 275
    Height = 113
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
  end
  object btnExibir: TButton
    Left = 360
    Top = 135
    Width = 107
    Height = 25
    Caption = 'Exibir Funcion'#225'rios'
    TabOrder = 2
    OnClick = btnExibirClick
  end
end
