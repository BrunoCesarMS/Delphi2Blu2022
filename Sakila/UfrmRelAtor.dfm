object frmRelAtor: TfrmRelAtor
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio - Atores'
  ClientHeight = 174
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 402
    Height = 113
    Caption = 'Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 59
      Height = 13
      Caption = #218'ltimo Nome'
    end
    object edtLastName: TEdit
      Left = 16
      Top = 43
      Width = 361
      Height = 21
      TabOrder = 0
    end
    object btnExportar: TButton
      Left = 200
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 1
      OnClick = btnExportarClick
    end
    object btnVisualizar: TButton
      Left = 302
      Top = 70
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 2
      OnClick = btnVisualizarClick
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Form1.FDConnection1
    SQL.Strings = (
      
        'SELECT ACTOR_ID, FIRST_NAME, LAST_NAME FROM ACTOR WHERE (LAST_NA' +
        'ME LIKE :ULTIMONOME) OR (COALESCE(:ULTIMONOME, '#39#39') = '#39#39')')
    Left = 16
    Top = 128
    ParamData = <
      item
        Name = 'ULTIMONOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = FDQuery1
    BCDToCurrency = False
    Left = 88
    Top = 128
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.777535474500000000
    ReportOptions.LastChange = 44939.777535474500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 168
    Top = 128
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
        Height = 84.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 231.811225000000000000
          Top = 28.102350000000000000
          Width = 254.488250000000000000
          Height = 32.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Atores')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 162.519790000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 3.480210000000000000
          Width = 71.488250000000000000
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
          Left = 81.000000000000000000
          Top = 3.480210000000000000
          Width = 202.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 294.000000000000000000
          Top = 3.480210000000000000
          Width = 339.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sobrenome')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 207.874150000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ACTOR_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.000000000000000000
          Top = 3.125850000000000000
          Width = 70.370130000000000000
          Height = 18.897650000000000000
          DataField = 'ACTOR_ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."ACTOR_ID"]')
        end
        object frxDBDataset1FIRST_NAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 82.000000000000000000
          Top = 5.125850000000000000
          Width = 200.055350000000000000
          Height = 18.897650000000000000
          DataField = 'FIRST_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."FIRST_NAME"]')
        end
        object frxDBDataset1LAST_NAME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.000000000000000000
          Top = 3.125850000000000000
          Width = 342.055350000000000000
          Height = 18.897650000000000000
          DataField = 'LAST_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."LAST_NAME"]')
        end
      end
    end
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
    Left = 240
    Top = 128
  end
  object FDQuery2: TFDQuery
    Connection = Form1.FDConnection1
    Left = 16
    Top = 136
  end
end
