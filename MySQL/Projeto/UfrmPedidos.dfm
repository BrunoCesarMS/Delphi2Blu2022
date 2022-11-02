object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 428
  ClientWidth = 675
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 56
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 120
    Top = 56
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 232
    Top = 56
    Width = 58
    Height = 13
    Caption = 'Data Pedido'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 32
    Top = 109
    Width = 53
    Height = 13
    Caption = 'Comprador'
  end
  object Fornecedor: TLabel
    Left = 32
    Top = 165
    Width = 55
    Height = 13
    Caption = 'Fornecedor'
  end
  object Label6: TLabel
    Left = 32
    Top = 240
    Width = 334
    Height = 16
    Alignment = taCenter
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 96
    Top = 280
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit4
  end
  object Label7: TLabel
    Left = 96
    Top = 872
    Width = 56
    Height = 13
    Caption = 'Quantidade'
    FocusControl = DBEdit5
  end
  object Label8: TLabel
    Left = 96
    Top = 1464
    Width = 77
    Height = 13
    Caption = 'idPedidoCompra'
    FocusControl = DBEdit6
  end
  object Label9: TLabel
    Left = 96
    Top = 2056
    Width = 46
    Height = 13
    Caption = 'idProduto'
    FocusControl = DBEdit7
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 75
    Width = 65
    Height = 21
    DataField = 'Id'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 75
    Width = 89
    Height = 21
    DataField = 'Numero'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 232
    Top = 75
    Width = 134
    Height = 21
    DataField = 'DataPedido'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 128
    Width = 334
    Height = 21
    DataField = 'idComprador'
    DataSource = DataSource1
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DataSource2
    TabOrder = 3
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 32
    Top = 184
    Width = 334
    Height = 21
    DataField = 'idFornecedor'
    DataSource = DataSource1
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = DataSource3
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 16
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 262
    Width = 334
    Height = 120
    DataSource = DataSource4
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Title.Caption = 'id Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookupProduto'
        Title.Caption = 'Descri'#231#227'o Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 372
    Top = 262
    Width = 25
    Height = 120
    DataSource = DataSource4
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object DBEdit4: TDBEdit
    Left = 96
    Top = 568
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource4
    TabOrder = 8
  end
  object DBEdit5: TDBEdit
    Left = 96
    Top = 1160
    Width = 134
    Height = 21
    DataField = 'Quantidade'
    DataSource = DataSource4
    TabOrder = 9
  end
  object DBEdit6: TDBEdit
    Left = 96
    Top = 1752
    Width = 134
    Height = 21
    DataField = 'idPedidoCompra'
    DataSource = DataSource4
    TabOrder = 10
  end
  object DBEdit7: TDBEdit
    Left = 96
    Top = 2344
    Width = 134
    Height = 21
    DataField = 'idProduto'
    DataSource = DataSource4
    TabOrder = 11
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 440
    Top = 40
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.pedidocompra'
    Left = 528
    Top = 40
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1Numero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object FDTable1DataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object FDTable1idComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object FDTable1idFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTableLookUpComprador
    Left = 440
    Top = 104
  end
  object FDTableLookUpComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.comprador'
    Left = 528
    Top = 104
  end
  object DataSource3: TDataSource
    DataSet = FDTableLookUpFornecedor
    Left = 440
    Top = 168
  end
  object FDTableLookUpFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.fornecedor'
    Left = 536
    Top = 168
  end
  object DataSource4: TDataSource
    DataSet = FDTable2
    Left = 440
    Top = 224
  end
  object FDTable2: TFDTable
    BeforePost = FDTable2BeforePost
    IndexFieldNames = 'Id'
    MasterSource = DataSource1
    MasterFields = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.itemcompra'
    Left = 544
    Top = 224
    object FDTable2Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDTable2idPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object FDTable2idProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object FDTable2LookupProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookupProduto'
      LookupDataSet = FDTable3
      LookupKeyFields = 'Id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
    object FDTable2Quantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
  end
  object FDTable3: TFDTable
    IndexFieldNames = 'Id'
    Connection = DmPedidos.FDConnection1
    TableName = 'devs2blu.produto'
    Left = 528
    Top = 296
  end
end
