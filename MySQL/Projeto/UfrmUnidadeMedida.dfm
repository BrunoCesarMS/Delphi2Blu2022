object frmUnidadeMedida: TfrmUnidadeMedida
  Left = 0
  Top = 0
  Caption = 'Unidade de Medida'
  ClientHeight = 333
  ClientWidth = 578
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 47
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 66
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 123
    Width = 337
    Height = 21
    DataField = 'Descricao'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 184
    Width = 537
    Height = 120
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 440
    Top = 96
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.unidademedida'
    Left = 512
    Top = 96
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Descricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
end
