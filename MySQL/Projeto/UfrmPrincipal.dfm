object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 352
    Top = 24
    object Produtos1: TMenuItem
      Caption = 'Produtos'
      OnClick = Produtos1Click
    end
    object Compradores1: TMenuItem
      Caption = 'Compradores'
      OnClick = Compradores1Click
    end
    object Fornecedores1: TMenuItem
      Caption = 'Fornecedores'
      OnClick = Fornecedores1Click
    end
    object UnMedida1: TMenuItem
      Caption = 'Un. Medida'
      OnClick = UnMedida1Click
    end
    object Pedidos1: TMenuItem
      Caption = 'Pedidos'
      OnClick = Pedidos1Click
    end
  end
end
