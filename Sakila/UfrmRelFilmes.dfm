object frmRelFilmes: TfrmRelFilmes
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio - Filmes'
  ClientHeight = 195
  ClientWidth = 415
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 385
    Height = 153
    Caption = 'Filtro'
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 21
      Height = 13
      Caption = 'Ator'
    end
    object Edit1: TEdit
      Left = 24
      Top = 35
      Width = 329
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object btnExportar: TButton
      Left = 176
      Top = 62
      Width = 75
      Height = 25
      Caption = 'Exportar'
      TabOrder = 1
    end
    object btnVisualizar: TButton
      Left = 278
      Top = 62
      Width = 75
      Height = 25
      Caption = 'Visualizar'
      TabOrder = 2
    end
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = Form1.FDConnection1
    SQL.Strings = (
      
        'SELECT COUNT(*), ACTOR.ACTOR_ID, ACTOR.FIRST_NAME, ACTOR.LAST_NA' +
        'ME'
      'FROM ACTOR'
      'INNER JOIN FILM_ACTOR ON ACTOR.ACTOR_ID = FILM_ACTOR.ACTOR_ID'
      'WHERE (ACTOR.FIRST_NAME = :NOME) OR (COALESCE(:NOME, '#39#39') = '#39#39')'
      'GROUP BY FILM_ACTOR.ACTOR_ID, ACTOR.FIRST_NAME')
    Left = 40
    Top = 128
    ParamData = <
      item
        Name = 'NOME'
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
    Left = 112
    Top = 136
  end
  object frxReport1: TfrxReport
    Version = '6.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44939.906583912000000000
    ReportOptions.LastChange = 44939.912488969900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 184
    Top = 136
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
        Height = 77.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 173.311225000000000000
          Top = 28.102350000000000000
          Width = 371.488250000000000000
          Height = 38.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Filmes por ator')
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
          Left = 1.000000000000000000
          Top = 1.259740000000000000
          Width = 88.488250000000000000
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
          Left = 95.000000000000000000
          Top = 1.259740000000000000
          Width = 214.488250000000000000
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
          Left = 317.000000000000000000
          Top = 1.259740000000000000
          Width = 262.488250000000000000
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
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 586.000000000000000000
          Top = 1.259740000000000000
          Width = 98.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'QTD Filmes')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 21.677180000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1COUNT: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 588.000000000000000000
          Top = 1.905380000000000000
          Width = 100.944960000000000000
          Height = 18.897650000000000000
          DataField = 'COUNT(*)'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."COUNT(*)"]')
        end
        object frxDBDataset1ACTOR_ID: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.000000000000000000
          Top = 0.905380000000000000
          Width = 86.370130000000000000
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
          Left = 96.000000000000000000
          Top = 0.905380000000000000
          Width = 213.055350000000000000
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
          Left = 315.000000000000000000
          Top = -0.094620000000000000
          Width = 265.055350000000000000
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
    Left = 248
    Top = 144
  end
end
