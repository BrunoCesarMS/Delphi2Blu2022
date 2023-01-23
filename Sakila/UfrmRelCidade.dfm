object frmRelCidade: TfrmRelCidade
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio - Cidades'
  ClientHeight = 219
  ClientWidth = 414
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 377
    Height = 121
    Caption = 'Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 43
      Width = 329
      Height = 21
      KeyField = 'city_id'
      ListField = 'city'
      ListSource = dtsLookupCidade
      TabOrder = 0
    end
    object btnExportar: TButton
      Left = 176
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 1
      OnClick = btnExportarClick
    end
    object btnVisualizar: TButton
      Left = 278
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 2
      OnClick = btnVisualizarClick
    end
  end
  object dtsLookupCidade: TDataSource
    DataSet = LookupCidade
    Left = 40
    Top = 112
  end
  object LookupCidade: TFDTable
    IndexFieldNames = 'city_id'
    Connection = Form1.FDConnection1
    TableName = 'city'
    Left = 120
    Top = 112
    object LookupCidadecity: TStringField
      FieldName = 'city'
      Origin = 'city'
      Required = True
      Size = 50
    end
    object LookupCidadecity_id: TWordField
      AutoGenerateValue = arAutoInc
      FieldName = 'city_id'
      Origin = 'city_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object LookupCidadecountry_id: TWordField
      FieldName = 'country_id'
      Origin = 'country_id'
      Required = True
    end
    object LookupCidadelast_update: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'last_update'
      Origin = 'last_update'
    end
  end
  object QryCidade: TFDQuery
    Active = True
    IndexFieldNames = 'CITY_ID'
    MasterSource = dtsLookupCidade
    MasterFields = 'city_id'
    Connection = Form1.FDConnection1
    SQL.Strings = (
      'SELECT CITY.CITY_ID, CITY.CITY, ADDRESS.ADDRESS FROM CITY'
      'RIGHT JOIN ADDRESS ON CITY.CITY_ID = ADDRESS.CITY_ID'
      '')
    Left = 32
    Top = 168
  end
  object QryEndereco: TFDQuery
    Active = True
    IndexFieldNames = 'CITY_ID'
    MasterSource = dtsCidade
    MasterFields = 'CITY_ID'
    Connection = Form1.FDConnection1
    SQL.Strings = (
      
        'SELECT ADDRESS.CITY_ID, ADDRESS.ADDRESS_ID, ADDRESS.ADDRESS, ADD' +
        'RESS.DISTRICT, ADDRESS.POSTAL_CODE '
      'FROM ADDRESS'
      'LEFT JOIN CITY ON ADDRESS.CITY_ID = CITY.CITY_ID'
      'WHERE (CITY.CITY_ID = :IDCITY) OR (COALESCE(:IDCITY, 0) = 0)')
    Left = 200
    Top = 112
    ParamData = <
      item
        Name = 'IDCITY'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = QryEndereco
    BCDToCurrency = False
    Left = 280
    Top = 112
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.843066932900000000
    ReportOptions.LastChange = 44939.846750983800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 352
    Top = 144
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 80.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 223.000000000000000000
          Top = 25.000000000000000000
          Width = 272.110700000000000000
          Height = 35.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Cidades')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 1.259740000000000000
          Width = 90.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 103.000000000000000000
          Top = 1.259740000000000000
          Width = 396.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2CITY_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 0.905380000000000000
          Width = 92.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CITY_ID'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CITY_ID"]')
        end
        object frxDBDataset2CITY: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 106.000000000000000000
          Top = 0.905380000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CITY'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."CITY"]')
        end
      end
      object Header2: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 98.000000000000000000
          Top = 1.551020000000000000
          Width = 305.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 411.000000000000000000
          Top = 1.551020000000000000
          Width = 166.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Distrito')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 585.000000000000000000
          Top = 0.551020000000000000
          Width = 130.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo Postal')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 294.803340000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ADDRESS: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.000000000000000000
          Top = 3.196660000000000000
          Width = 302.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ADDRESS'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ADDRESS"]')
        end
        object frxDBDataset1DISTRICT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 413.000000000000000000
          Top = 3.196660000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'DISTRICT'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."DISTRICT"]')
        end
        object frxDBDataset1POSTAL_CODE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 586.000000000000000000
          Top = 3.196660000000000000
          Width = 129.370130000000000000
          Height = 18.897650000000000000
          DataField = 'POSTAL_CODE'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."POSTAL_CODE"]')
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSource = dtsCidade
    BCDToCurrency = False
    Left = 272
    Top = 176
  end
  object dtsCidade: TDataSource
    DataSet = QryCidade
    Left = 104
    Top = 168
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 184
    Top = 168
  end
end
