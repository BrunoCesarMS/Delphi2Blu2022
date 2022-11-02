object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  Caption = 'Compradores'
  ClientHeight = 346
  ClientWidth = 506
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
    Top = 48
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 128
    Width = 29
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 64
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 101
    Width = 289
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 144
    Width = 134
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 0
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 192
    Width = 465
    Height = 120
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 312
    Top = 48
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.comprador'
    Left = 384
    Top = 48
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTable1Cargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
end
