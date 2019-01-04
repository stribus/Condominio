object dtmRelatorios: TdtmRelatorios
  OldCreateOrder = False
  Height = 368
  Width = 647
  object fdqRelPagamentos: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT'
      #9'cast(m.DATA_HORA AS DATE) dia,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 1,-1,0 )*VALOR_TOTAL) Anotar,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 3,-1,0 )*VALOR_TOTAL) Cheque,'#9
      #9'sum(iif(m.TIPO_PAGAMENTO = 4,-1,0 )*VALOR_TOTAL) Dinheiro,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 6,-1,0 )*VALOR_TOTAL) Cartao_C,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 7,-1,0 )*VALOR_TOTAL) Cartao_D'
      'FROM'
      #9'MOV_PRODUTO m'
      'WHERE'
      ' '#9'm.PAGAMENTO = TRUE'
      '        and not m.excluido '
      
        '        and cast(m.DATA_HORA as date) between cast(:dataini as d' +
        'ate) and cast(:datafim as date)'
      'GROUP BY  dia'
      'ORDER BY dia')
    Left = 23
    Top = 59
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43047d
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43777d
      end>
  end
  object fdsRelPagamentos: TfrxDBDataset
    UserName = 'frxDBPagamnetos'
    CloseDataSource = True
    DataSet = fdqRelPagamentos
    BCDToCurrency = True
    Left = 23
    Top = 11
  end
  object frepPagamentos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43364.710290277800000000
    ReportOptions.LastChange = 43364.710290277800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 71
    Top = 11
    Datasets = <
      item
        DataSet = fdsRelPagamentos
        DataSetName = 'frxDBPagamnetos'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 71.811070000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Pagamentos')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo3: TfrxMemoView
          Left = 132.283550000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Dinheiro')
        end
        object Memo4: TfrxMemoView
          Left = 260.464750000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cheque')
        end
        object Memo5: TfrxMemoView
          Left = 360.409710000000000000
          Top = 52.913420000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cart'#227'o Credito')
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total')
        end
        object Memo15: TfrxMemoView
          Left = 483.779840000000000000
          Top = 52.913420000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cart'#227'o Credito')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = fdsRelPagamentos
        DataSetName = 'frxDBPagamnetos'
        RowCount = 0
        object Memo18: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object frxDBPagamnetosDIA: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelPagamentos
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[frxDBPagamnetos."DIA"]')
        end
        object frxDBPagamnetosDINHEIRO: TfrxMemoView
          Left = 105.826840000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DINHEIRO'
          DataSet = fdsRelPagamentos
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."DINHEIRO"]')
        end
        object Memo7: TfrxMemoView
          Left = 234.008040000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DataField = 'CHEQUE'
          DataSet = fdsRelPagamentos
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."CHEQUE"]')
        end
        object Memo8: TfrxMemoView
          Left = 341.512060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CARTAO_C'
          DataSet = fdsRelPagamentos
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."CARTAO_C"]')
        end
        object Memo9: TfrxMemoView
          Left = 593.386210000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelPagamentos
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<frxDBPagamnetos."CHEQUE">+<frxDBPagamnetos."DINHEIRO">+<frxDB' +
              'Pagamnetos."CARTAO_C">+<frxDBPagamnetos."CARTAO_D">)]')
        end
        object Memo16: TfrxMemoView
          Left = 464.882190000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CARTAO_D'
          DataSet = fdsRelPagamentos
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."CARTAO_D"]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 45.354360000000000000
        ParentFont = False
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total')
        end
        object Memo11: TfrxMemoView
          Left = 105.826840000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."DINHEIRO">,MasterData1)]')
        end
        object Memo12: TfrxMemoView
          Left = 234.008040000000000000
          Top = 15.118120000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CHEQUE">,MasterData1,2)]')
        end
        object Memo13: TfrxMemoView
          Left = 341.512060000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CARTAO_C">,MasterData1)]')
        end
        object Memo14: TfrxMemoView
          Left = 593.386210000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBPagamnetos."CHEQUE">+<frxDBPagamnetos."DINHEIRO">+<fr' +
              'xDBPagamnetos."CARTAO_C">+<frxDBPagamnetos."CARTAO_D">,MasterDat' +
              'a1)]')
        end
        object Memo17: TfrxMemoView
          Left = 464.882190000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CARTAO_D">,MasterData1)]')
        end
      end
    end
  end
  object fdqProdutosVendidos: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  cast(m.DATA_HORA AS DATE) dia,'
      '  p.id_rodutos,'
      '  p.codigo,'
      '  p.nome,'
      '  sum(m.quantidade) quant_total,'
      '  sum(m.valor_total) valor_tot'
      'from'
      '  mov_produto m'
      '  join produtos p on p.id_rodutos = m.fk_produto'
      'where'
      '  m.pagamento = false'
      
        ' and cast(m.DATA_HORA as date) between cast(:dataini as date) an' +
        'd cast(:datafim as date)'
      'and not m.excluido '
      'group by dia,id_rodutos,codigo,nome'
      'ORDER BY id_rodutos,dia')
    Left = 159
    Top = 59
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43435d
      end>
    object fdqProdutosVendidosDIA: TDateField
      FieldName = 'DIA'
      Origin = 'DIA'
      Required = True
    end
    object fdqProdutosVendidosID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      Required = True
    end
    object fdqProdutosVendidosCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutosVendidosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutosVendidosQUANT_TOTAL: TBCDField
      FieldName = 'QUANT_TOTAL'
      Origin = 'QUANT_TOTAL'
      Precision = 18
    end
    object fdqProdutosVendidosVALOR_TOT: TBCDField
      FieldName = 'VALOR_TOT'
      Origin = 'VALOR_TOT'
      Precision = 18
      Size = 2
    end
  end
  object fdsProdutosVendidos: TfrxDBDataset
    UserName = 'frxDBProdutosVendidos'
    CloseDataSource = True
    FieldAliases.Strings = (
      'DIA=DIA'
      'ID_RODUTOS=ID_RODUTOS'
      'CODIGO=CODIGO'
      'NOME=NOME'
      'QUANT_TOTAL=QUANT_TOTAL'
      'VALOR_TOT=VALOR_TOT')
    DataSet = fdqProdutosVendidos
    BCDToCurrency = True
    Left = 159
    Top = 11
  end
  object frepProdutosVendidos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43364.710290277800000000
    ReportOptions.LastChange = 43387.580923576400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 207
    Top = 11
    Datasets = <
      item
        DataSet = fdsProdutosVendidos
        DataSetName = 'frxDBProdutosVendidos'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 71.811070000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total')
        end
        object Memo3: TfrxMemoView
          Left = 94.488250000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo4: TfrxMemoView
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Quantide')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = fdsProdutosVendidos
        DataSetName = 'frxDBProdutosVendidos'
        RowCount = 0
        object frxDBPagamnetosDINHEIRO: TfrxMemoView
          Left = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."CODIGO"]')
        end
        object Memo7: TfrxMemoView
          Left = 150.858380000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."NOME"]')
        end
        object Memo9: TfrxMemoView
          Left = 593.386210000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOT'
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."VALOR_TOT"]')
        end
        object Memo16: TfrxMemoView
          Left = 434.645950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'QUANT_TOTAL'
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."QUANT_TOTAL"]')
        end
        object frxDBProdutosVendidosDIA: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."DIA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = '<frxDBProdutosVendidos."DIA">'
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
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
    Left = 300
    Top = 11
  end
  object frepExtratoCaderno: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43451.817160659700000000
    ReportOptions.LastChange = 43451.817160659700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 24
    Top = 112
    Datasets = <
      item
        DataSet = fdsExtratoCliente
        DataSetName = 'fdsExtratoCliente'
      end
      item
        DataSet = fdsRelClientes
        DataSetName = 'fdsRelClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
      object Memo2: TfrxMemoView
        Left = 80.000000000000000000
        Top = 56.000000000000000000
        Width = 80.000000000000000000
        Height = 16.000000000000000000
        Wysiwyg = False
      end
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Extrato Clientes')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = fdsRelClientes
        DataSetName = 'fdsRelClientes'
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo16: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Visibility = [vsPreview, vsExport]
          Fill.BackColor = clGradientActiveCaption
        end
        object fdsRelClientesNOME: TfrxMemoView
          Left = 56.692950000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = fdsRelClientes
          DataSetName = 'fdsRelClientes'
          Memo.UTF8W = (
            '[fdsRelClientes."NOME"]')
        end
        object fdsRelClientesCONTATO: TfrxMemoView
          Left = 68.031540000000000000
          Top = 22.677180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CONTATO'
          DataSet = fdsRelClientes
          DataSetName = 'fdsRelClientes'
          Memo.UTF8W = (
            '[fdsRelClientes."CONTATO"]')
        end
        object Memo8: TfrxMemoView
          Left = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Contato: ')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = fdsExtratoCliente
        DataSetName = 'fdsExtratoCliente'
        RowCount = 0
        object fdsExtratoClienteDTHR_LANCAMENTO: TfrxMemoView
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'DTHR_LANCAMENTO'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            '[fdsExtratoCliente."DTHR_LANCAMENTO"]')
        end
        object fdsExtratoClienteProduto: TfrxMemoView
          Left = 260.787570000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'Produto'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            '[fdsExtratoCliente."Produto"]')
        end
        object Memo10: TfrxMemoView
          Left = 120.944960000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            
              '[IIF(<fdsExtratoCliente."PAGAMENTO">,'#39#39',<fdsExtratoCliente."SIGN' +
              'ATARIO">)]')
        end
        object Memo11: TfrxMemoView
          Left = 495.118430000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<fdsExtratoCliente."PAGAMENTO">,'#39#39',<fdsExtratoCliente."QUAN' +
              'TIDADE">)]')
        end
        object Memo12: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOTAL'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoCliente."VALOR_TOTAL"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Top = 2.377860000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            'Data Hora')
        end
        object Memo4: TfrxMemoView
          Left = 260.787570000000000000
          Top = 2.377860000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          Left = 120.944960000000000000
          Top = 2.377860000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Retirado por')
        end
        object Memo6: TfrxMemoView
          Left = 495.118430000000000000
          Top = 2.377860000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd')
        end
        object Memo7: TfrxMemoView
          Left = 566.929500000000000000
          Top = 2.377860000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Visibility = [vsPreview, vsExport]
          Frame.Typ = [ftTop]
          Fill.BackColor = clInactiveBorder
        end
        object Memo14: TfrxMemoView
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total:')
        end
        object Memo15: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsExtratoCliente."VALOR_TOTAL">,DetailData1)]')
        end
      end
    end
  end
  object fdqRelClientes: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      '  c.nome,'
      '  c.endereco,'
      '  c.contato,'
      '  cc.fk_temporada ,'
      '  c.id_cliente ,'
      '  c.permitir_saldo_negativo,'
      '  sum(iif(NOT mv.PAGAMENTO,mv.VALOR_TOTAL,0.00)) valor_gasto,'
      '  sum(iif(mv.PAGAMENTO,mv.VALOR_TOTAL,0.00)*-1) valor_pago  ,'
      '  coalesce(sum(mv.valor_total),0.00) Saldo'
      'FROM'
      '  cliente  c '
      '  left join caderneta_cliente cc'
      
        '    on   c.id_cliente = cc.fk_cliente  AND cc.FK_TEMPORADA = :id' +
        '_temporada'
      '  left JOIN mov_produto mv ON'
      '    cc.id_caderneta = mv.fk_caderneta'
      '  LEFT JOIN produtos pr ON'
      '    pr.id_rodutos = mv.fk_produto'
      '  LEFT JOIN pedido ped ON'
      '    ped.id_pedido = mv.fk_pedido'
      'where'
      '  not mv.excluido '
      'GROUP BY fk_temporada,c.id_cliente,permitir_saldo_negativo,'
      'nome,endereco,contato,c.codigo'
      'order by c.codigo')
    Left = 32
    Top = 168
    ParamData = <
      item
        Name = 'ID_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 10
        Value = 10
      end>
    object fdqRelClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqRelClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object fdqRelClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 150
    end
    object fdqRelClientesFK_TEMPORADA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelClientesID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqRelClientesPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
    object fdqRelClientesVALOR_GASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_GASTO'
      Origin = 'VALOR_GASTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelClientesVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelClientesSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsRelClientes: TfrxDBDataset
    UserName = 'fdsRelClientes'
    CloseDataSource = True
    DataSet = fdqRelClientes
    BCDToCurrency = True
    Left = 64
    Top = 168
  end
  object fdsExtratoCliente: TfrxDBDataset
    UserName = 'fdsExtratoCliente'
    CloseDataSource = True
    DataSet = fdqExtratoCliente
    BCDToCurrency = True
    Left = 56
    Top = 216
  end
  object fdqExtratoCliente: TFDQuery
    MasterSource = dtsRelClientes
    MasterFields = 'ID_CLIENTE;FK_TEMPORADA'
    DetailFields = 'ID_CLIENTE;FK_TEMPORADA'
    ConnectionName = 'Condominio'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '  cc.id_caderneta ,'
      '  cc.dthr_lancamento ,'
      '  cc.fk_temporada ,'
      '  cc.fk_cliente id_cliente,'
      '  cc.fk_dependente ,'
      '  mv.id_mov_produto ,'
      
        '  CAST(COALESCE(mv.fk_produto,'#39'T'#39' || mv.tipo_pagamento) AS VARCH' +
        'AR(20)) fks ,'
      '  mv.quantidade ,'
      '  mv.pagamento ,'
      '  mv.valor_total ,'
      '  mv.excluido,'
      '  d.nome signatario,'
      
        '  SUM(mv.valor_total) OVER (PARTITION BY cc.fk_temporada,cc.fk_c' +
        'liente ORDER BY'#9'dthr_lancamento,mv.id_mov_produto) Saldo'
      'FROM'
      '  caderneta_cliente cc'
      '  JOIN mov_produto mv ON'
      '    cc.id_caderneta = mv.fk_caderneta'
      '  LEFT JOIN produtos pr ON'
      '    pr.id_rodutos = mv.fk_produto  '
      '  left join dependentes d on d.id_dependentes = cc.fk_dependente'
      'WHERE'
      'cc.FK_CLIENTE =:id_cliente'
      '  AND '
      '  cc.FK_TEMPORADA = :fk_temporada'
      '        and not mv.excluido '
      'ORDER BY  '
      '     dthr_lancamento,mv.id_mov_produto  ')
    Left = 24
    Top = 216
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 46
      end
      item
        Name = 'FK_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 10
      end>
    object fdqExtratoClienteID_CADERNETA: TLargeintField
      FieldName = 'ID_CADERNETA'
      Origin = 'ID_CADERNETA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqExtratoClienteDTHR_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DTHR_LANCAMENTO'
      Origin = 'DTHR_LANCAMENTO'
      Required = True
    end
    object fdqExtratoClienteFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqExtratoClienteID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqExtratoClienteFK_DEPENDENTE: TLargeintField
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
      Required = True
    end
    object fdqExtratoClienteID_MOV_PRODUTO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MOV_PRODUTO'
      Origin = 'ID_MOV_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoClienteFKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FKS'
      Origin = 'FKS'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoClienteQUANTIDADE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object fdqExtratoClientePAGAMENTO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoClienteVALOR_TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoClienteEXCLUIDO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoClienteSIGNATARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SIGNATARIO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqExtratoClienteSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoClienteProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'Produto'
      LookupDataSet = fdqProdutoslookup
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FKS'
      Size = 150
      Lookup = True
    end
  end
  object fdqProdutoslookup: TFDQuery
    CachedUpdates = True
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'select'
      '  cast(ID_RODUTOS as varchar(20)) ID,'
      '  CODIGO,'
      '  FK_TEMPORADA,'
      '  NOME,'
      '  VALOR_UNI'
      'from'
      '  produtos p'
      'where p.fk_temporada = (select'
      '                          t.id_temporadas'
      '                        from'
      '                          temporadas t'
      '                        where t.ativo) '
      'union all'
      'select'
      '  cast('#39'T'#39'||tp.id as varchar(20)) id,'
      '  tp.id,'
      '  null,'
      '  cast(tp.descricao as varchar(150)),'
      '  null'
      'from'
      '  tipo_pagamento tp')
    Left = 24
    Top = 264
    object fdqProdutoslookupID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqProdutoslookupCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutoslookupFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqProdutoslookupNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutoslookupVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
    end
  end
  object dtsRelClientes: TDataSource
    DataSet = fdqRelClientes
    Left = 88
    Top = 168
  end
  object frepExtratoDiarioCaderno: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43451.817160659700000000
    ReportOptions.LastChange = 43451.853239583300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 112
    Datasets = <
      item
        DataSet = fdsExtratoDiario
        DataSetName = 'fdsExtratoDiario'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Extrato Clientes')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'fdsExtratoDiario."ID_CLIENTE"'
        KeepTogether = True
        object Memo16: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Visibility = [vsPreview, vsExport]
          Fill.BackColor = clGradientActiveCaption
        end
        object fdsExtratoDiarioNOME: TfrxMemoView
          Left = 3.559060000000000000
          Top = 10.559060000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Memo.UTF8W = (
            '[fdsExtratoDiario."CODIGO"] - [fdsExtratoDiario."NOME"]')
        end
        object fdsExtratoDiarioENDERECO: TfrxMemoView
          Left = 402.748300000000000000
          Top = 10.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Memo.UTF8W = (
            '[fdsExtratoDiario."ENDERECO"]')
        end
        object fdsExtratoDiarioCONTATO: TfrxMemoView
          Left = 530.472790000000000000
          Top = 11.559060000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'CONTATO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Memo.UTF8W = (
            '[fdsExtratoDiario."CONTATO"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = fdsExtratoDiario
        DataSetName = 'fdsExtratoDiario'
        RowCount = 0
        object Memo6: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          Fill.BackColor = 16119285
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_LANCAMENTO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Memo.UTF8W = (
            '[fdsExtratoDiario."DATA_LANCAMENTO"]')
        end
        object DebitosAcomANTERIOR: TfrxMemoView
          Left = 95.267780000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ANTERIOR'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."ANTERIOR"]')
        end
        object Memo5: TfrxMemoView
          Left = 219.992270000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."VENDAS"]')
        end
        object Memo7: TfrxMemoView
          Left = 345.055350000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PAGAMENTOS'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."PAGAMENTOS"]')
        end
        object Memo8: TfrxMemoView
          Left = 471.590910000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ARECEBER'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."ARECEBER"]')
        end
        object Memo13: TfrxMemoView
          Left = 598.724800000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS_ACOM'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."VENDAS_ACOM"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo2: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.645640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo4: TfrxMemoView
          Left = 90.708720000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior')
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas do Dia')
        end
        object Memo10: TfrxMemoView
          Left = 340.496290000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Pagtos do dia')
        end
        object Memo11: TfrxMemoView
          Left = 467.031850000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo A Receber')
        end
        object Memo12: TfrxMemoView
          Left = 586.606680000000000000
          Top = 1.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Acomulado')
        end
      end
      object Line1: TfrxLineView
        Align = baBottom
        Top = 1046.929810000000000000
        Width = 718.110700000000000000
        StretchMode = smMaxHeight
        Color = clBlack
        Frame.Typ = [ftTop]
      end
    end
  end
  object fdsExtratoDiario: TfrxDBDataset
    UserName = 'fdsExtratoDiario'
    CloseDataSource = True
    DataSet = fdqExtratoDiario
    BCDToCurrency = True
    Left = 184
    Top = 176
  end
  object fdqExtratoDiario: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      '  distinct'
      '  c.id_cliente'
      '  ,c.codigo'
      '  ,c.nome'
      '  ,c.endereco'
      '  ,c.contato'
      '  ,mv.dia_mov Data_lancamento'
      ''
      
        ' ,sum(mv.valor_total) over (partition by c.id_cliente order by m' +
        'v.dia_mov)'
      
        '   -sum(iif(mv.pagamento,0,mv.valor_total))  over (partition by ' +
        'c.id_cliente,mv.dia_mov order by mv.dia_mov )'
      
        '   -sum(iif(mv.pagamento,mv.valor_total,0))  over (partition by ' +
        'c.id_cliente,mv.dia_mov order by mv.dia_mov ) anterior'
      
        '   ,sum(iif(mv.pagamento,0,mv.valor_total))  over (partition by ' +
        'c.id_cliente,mv.dia_mov order by mv.dia_mov ) vendas'
      
        '   ,sum(iif(mv.pagamento,mv.valor_total*-1,0))  over (partition ' +
        'by c.id_cliente,mv.dia_mov order by mv.dia_mov ) pagamentos'
      
        '   ,sum(mv.valor_total) over (partition by c.id_cliente order by' +
        ' mv.dia_mov) areceber'
      
        '   ,sum(iif(mv.pagamento,0,mv.valor_total)) over (partition by c' +
        '.id_cliente  order by c.id_cliente,mv.dia_mov) Vendas_acom'
      ''
      'FROM'
      '  cliente  c '
      '  left join caderneta_cliente cc'
      '    on   c.id_cliente = cc.fk_cliente'
      '  left JOIN mov_produto mv ON'
      '    cc.id_caderneta = mv.fk_caderneta'
      'WHERE'
      '  not mv.excluido '
      
        '   and mv.dia_mov >= (select t.periodo_inicial from temporadas t' +
        ' where t.ativo)'
      'order by'
      '  c.codigo')
    Left = 152
    Top = 176
    object fdqExtratoDiarioID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqExtratoDiarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqExtratoDiarioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object fdqExtratoDiarioCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 150
    end
    object fdqExtratoDiarioDATA_LANCAMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_LANCAMENTO'
      Origin = 'DIA_MOV'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoDiarioANTERIOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ANTERIOR'
      Origin = 'ANTERIOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioVENDAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioPAGAMENTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTOS'
      Origin = 'PAGAMENTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioARECEBER: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ARECEBER'
      Origin = 'ARECEBER'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioVENDAS_ACOM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS_ACOM'
      Origin = 'VENDAS_ACOM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
  end
  object frepPagtoTipo: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43456.623886979200000000
    ReportOptions.LastChange = 43456.623886979200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 280
    Top = 64
    Datasets = <
      item
        DataSet = fdsRelPagamentos
        DataSetName = 'frxDBPagamnetos'
      end
      item
        DataSet = fdsPagamentosTipo
        DataSetName = 'PagamentosTipo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 1046.929810000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamentos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = fdsPagamentosTipo
        DataSetName = 'PagamentosTipo'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baClient
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Fill.BackColor = cl3DLight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object PagamentosTipoDATA: TfrxMemoView
          Left = 5.220470000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          Memo.UTF8W = (
            '[PagamentosTipo."DATA"]')
        end
        object PagamentosTipoCHEQUE_BALCAO: TfrxMemoView
          Left = 88.370130000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'CHEQUE_BALCAO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CHEQUE_BALCAO"]')
        end
        object PagamentosTipoDINHEIRO_BALCAO: TfrxMemoView
          Left = 190.417440000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'DINHEIRO_BALCAO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DINHEIRO_BALCAO"]')
        end
        object PagamentosTipoCREDITO_BALCAO: TfrxMemoView
          Left = 292.464750000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'CREDITO_BALCAO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CREDITO_BALCAO"]')
        end
        object PagamentosTipoDEBITO_BALCAO: TfrxMemoView
          Left = 394.512060000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'DEBITO_BALCAO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DEBITO_BALCAO"]')
        end
        object PagamentosTipoCHEQUE_CADERNO: TfrxMemoView
          Left = 496.559370000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'CHEQUE_CADERNO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CHEQUE_CADERNO"]')
        end
        object PagamentosTipoDINHEIRO_CADERNO: TfrxMemoView
          Left = 598.606680000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'DINHEIRO_CADERNO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DINHEIRO_CADERNO"]')
        end
        object Memo2: TfrxMemoView
          Left = 925.984850000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PagamentosTipo."CHEQUE_BALCAO">+<PagamentosTipo."DINHEIRO_BALC' +
              'AO">+<PagamentosTipo."CREDITO_BALCAO">+<PagamentosTipo."DEBITO_B' +
              'ALCAO">+<PagamentosTipo."CHEQUE_CADERNO">+<PagamentosTipo."DINHE' +
              'IRO_CADERNO">+<PagamentosTipo."CREDITO_CADERNO">+<PagamentosTipo' +
              '."DEBITO_CADERNO">]')
        end
        object PagamentosTipoCREDITO_CADERNO: TfrxMemoView
          Left = 704.433520000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'CREDITO_CADERNO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CREDITO_CADERNO"]')
        end
        object PagamentosTipoDEBITO_CADERNO: TfrxMemoView
          Left = 806.480830000000000000
          Top = 2.000000000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataField = 'DEBITO_CADERNO'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DEBITO_CADERNO"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Fill.Style = bsClear
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 54.425170000000000000
        ParentFont = False
        Top = 71.811070000000000000
        Width = 1046.929810000000000000
        object Memo5: TfrxMemoView
          Left = 5.220470000000000000
          Top = 31.747990000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          Left = 88.370130000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'CHEQUE')
        end
        object Memo7: TfrxMemoView
          Left = 190.417440000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'DINHEIRO')
        end
        object Memo8: TfrxMemoView
          Left = 292.464750000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'CREDITO')
        end
        object Memo9: TfrxMemoView
          Left = 394.512060000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'DEBITO')
        end
        object Memo12: TfrxMemoView
          Left = 925.984850000000000000
          Top = 31.747990000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '  TOTAL DO DIA')
        end
        object Memo4: TfrxMemoView
          Left = 498.897960000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'CHEQUE')
        end
        object Memo10: TfrxMemoView
          Left = 600.945270000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'DINHEIRO')
        end
        object Memo11: TfrxMemoView
          Left = 702.992580000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'CREDITO')
        end
        object Memo13: TfrxMemoView
          Left = 805.039890000000000000
          Top = 31.747990000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'DEBITO')
        end
        object Line1: TfrxLineView
          Left = 86.929190000000000000
          Top = 52.913420000000000000
          Height = -52.913420000000000000
          Color = clBlack
          Diagonal = True
        end
        object Line2: TfrxLineView
          Left = 496.897960000000000000
          Top = 52.913420000000000000
          Height = -52.913420000000000000
          Color = clBlack
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 86.929190000000000000
          Top = 3.779530000000000000
          Width = 408.189176540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8W = (
            'BALC'#195'O')
        end
        object Memo15: TfrxMemoView
          Left = 498.897960000000000000
          Top = 3.779530000000000000
          Width = 404.409646540000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haCenter
          Memo.UTF8W = (
            'CADERNO')
        end
        object Line3: TfrxLineView
          Left = 914.646260000000000000
          Top = 52.913420000000000000
          Height = -52.913420000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
  object fdqPagamentosTipo: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'select'
      '  cast(mp.data_hora as date) data,'
      
        '  sum(iif(mp.tipo_pagamento = 3 and mp.fk_caderneta is null, mp.' +
        'valor_total, 0)*-1) cheque_balcao,'
      
        '  sum(iif(mp.tipo_pagamento = 4 and mp.fk_caderneta is null, mp.' +
        'valor_total, 0)*-1) dinheiro_balcao,'
      
        '  sum(iif(mp.tipo_pagamento = 6 and mp.fk_caderneta is null, mp.' +
        'valor_total, 0)*-1) credito_balcao,'
      
        '  sum(iif(mp.tipo_pagamento = 7 and mp.fk_caderneta is null, mp.' +
        'valor_total, 0)*-1) debito_balcao,'
      
        '  sum(iif(mp.tipo_pagamento = 3 and mp.fk_caderneta is not null,' +
        ' mp.valor_total, 0)*-1) cheque_caderno,'
      
        '  sum(iif(mp.tipo_pagamento = 4 and mp.fk_caderneta is not null,' +
        ' mp.valor_total, 0)*-1) dinheiro_caderno,'
      
        '  sum(iif(mp.tipo_pagamento = 6 and mp.fk_caderneta is not null,' +
        ' mp.valor_total, 0)*-1) credito_caderno,'
      
        '  sum(iif(mp.tipo_pagamento = 7 and mp.fk_caderneta is not null,' +
        ' mp.valor_total, 0)*-1) debito_caderno'
      'from'
      '  mov_produto mp'
      'where'
      '    mp.pagamento and'
      '    not mp.excluido'
      
        '    and cast(mp.data_hora as date) between cast(:data_ini as dat' +
        'e) and cast(:data_fim as Date)'
      'group by'
      '    data'
      'order by'
      '     data')
    Left = 280
    Top = 120
    ParamData = <
      item
        Name = 'DATA_INI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43230d
      end
      item
        Name = 'DATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43758d
      end>
    object fdqPagamentosTipoDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqPagamentosTipoCHEQUE_BALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CHEQUE_BALCAO'
      Origin = 'CHEQUE_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDINHEIRO_BALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DINHEIRO_BALCAO'
      Origin = 'DINHEIRO_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoCREDITO_BALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO_BALCAO'
      Origin = 'CREDITO_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDEBITO_BALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEBITO_BALCAO'
      Origin = 'DEBITO_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoCHEQUE_CADERNO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CHEQUE_CADERNO'
      Origin = 'CHEQUE_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDINHEIRO_CADERNO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DINHEIRO_CADERNO'
      Origin = 'DINHEIRO_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoCREDITO_CADERNO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO_CADERNO'
      Origin = 'CREDITO_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDEBITO_CADERNO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEBITO_CADERNO'
      Origin = 'DEBITO_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsPagamentosTipo: TfrxDBDataset
    UserName = 'PagamentosTipo'
    CloseDataSource = False
    DataSet = fdqPagamentosTipo
    BCDToCurrency = False
    Left = 344
    Top = 120
  end
  object fdqDebitosAcom: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'select'
      'distinct'
      '   mv.dia_mov'
      
        '   ,sum(mv.valor_total) over (partition by mv.excluido order by ' +
        'mv.dia_mov)'
      
        '   -sum(iif(mv.pagamento,0,mv.valor_total))  over (partition by ' +
        'mv.dia_mov )'
      
        '   -sum(iif(mv.pagamento,mv.valor_total,0))  over (partition by ' +
        'mv.dia_mov ) anterior'
      
        '   ,sum(iif(mv.pagamento,0,mv.valor_total))  over (partition by ' +
        'mv.dia_mov ) vendas'
      
        '   ,sum(iif(mv.pagamento,mv.valor_total*-1,0))  over (partition ' +
        'by mv.dia_mov ) pagamentos'
      
        '   ,sum(mv.valor_total) over (partition by mv.excluido order by ' +
        'mv.dia_mov) areceber'
      
        '   ,sum(iif(mv.pagamento,0,mv.valor_total)) over (partition by m' +
        'v.excluido order by mv.dia_mov) Vendas_acom'
      'from'
      '  mov_produto mv'
      'where'
      '  not mv.excluido'
      
        '  and mv.dia_mov >= (select t.periodo_inicial from temporadas t ' +
        'where t.ativo)'
      'order by   mv.dia_mov')
    Left = 384
    Top = 16
    object fdqDebitosAcomDIA_MOV: TDateField
      FieldName = 'DIA_MOV'
      Origin = 'DIA_MOV'
    end
    object fdqDebitosAcomANTERIOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ANTERIOR'
      Origin = 'ANTERIOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomVENDAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomPAGAMENTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTOS'
      Origin = 'PAGAMENTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomARECEBER: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ARECEBER'
      Origin = 'ARECEBER'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomVENDAS_ACOM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS_ACOM'
      Origin = 'VENDAS_ACOM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsDebitosAcom: TfrxDBDataset
    UserName = 'DebitosAcom'
    CloseDataSource = False
    DataSet = fdqDebitosAcom
    BCDToCurrency = False
    Left = 432
    Top = 16
  end
  object frepDebitosAcom: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43458.728088240700000000
    ReportOptions.LastChange = 43459.529065763890000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 72
    Datasets = <
      item
        DataSet = fdsDebitosAcom
        DataSetName = 'DebitosAcom'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 1.645640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          Left = 90.708720000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior')
        end
        object Memo9: TfrxMemoView
          Left = 215.433210000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas do Dia')
        end
        object Memo10: TfrxMemoView
          Left = 340.496290000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Pagtos do dia')
        end
        object Memo11: TfrxMemoView
          Left = 467.031850000000000000
          Top = 1.000000000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo A Receber')
        end
        object Memo12: TfrxMemoView
          Left = 586.606680000000000000
          Top = 1.000000000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Acomulado')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = fdsDebitosAcom
        DataSetName = 'DebitosAcom'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          Fill.BackColor = 16119285
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DIA_MOV'
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          Memo.UTF8W = (
            '[DebitosAcom."DIA_MOV"]')
        end
        object DebitosAcomANTERIOR: TfrxMemoView
          Left = 91.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."ANTERIOR"]')
        end
        object Memo4: TfrxMemoView
          Left = 216.212740000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS'
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."VENDAS"]')
        end
        object Memo5: TfrxMemoView
          Left = 341.275820000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PAGAMENTOS'
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."PAGAMENTOS"]')
        end
        object Memo3: TfrxMemoView
          Left = 467.811380000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ARECEBER'
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."ARECEBER"]')
        end
        object Memo8: TfrxMemoView
          Left = 594.945270000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS_ACOM'
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."VENDAS_ACOM"]')
        end
      end
    end
  end
  object fdqIOS: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'with ios as (select'
      '  cast(es.data_hora as date) data,'
      '  sum(iif(es.tipo > 0,es.valor,0)) entrada ,'
      '  sum(iif(es.tipo < 0,es.valor,0)) saida'
      'from'
      '  entrada_saida es'
      
        '  join temporadas t on es.data_hora between t.periodo_inicial an' +
        'd coalesce(t.periodo_final,cast('#39'01.01.2088'#39' as date) )'
      'where'
      '  t.ativo'
      '  and not es.excluido'
      '  group by data),'
      ' pags as('
      'Select'
      '  mv.dia_mov,'
      '  sum(mv.valor_total)*-1 pagamentos'
      'from'
      '  mov_produto mv'
      
        '  join temporadas t on mv.data_hora  between t.periodo_inicial a' +
        'nd coalesce(t.periodo_final,cast('#39'01.01.2088'#39' as date) )'
      'where'
      '  t.ativo'
      '  and not mv.excluido'
      '  and mv.pagamento'
      'group by mv.dia_mov'
      '             )'
      'select'
      '  coalesce(ios.data , pags.dia_mov) data ,'
      '  ios.entrada,'
      '  ios.saida,'
      '  pags.pagamentos,'
      '  pags.pagamentos+ios.entrada-ios.saida saldo_caixa,'
      
        '  sum(pags.pagamentos+ios.entrada-ios.saida ) over (partition by' +
        ' '#39'a'#39' order by coalesce(ios.data , pags.dia_mov)) acom'
      'from'
      '  pags'
      '  full outer join ios on ios.data = pags.dia_mov'
      '')
    Left = 272
    Top = 168
    object fdqIOSDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqIOSENTRADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSSAIDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSPAGAMENTOS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTOS'
      Origin = 'PAGAMENTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSSALDO_CAIXA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO_CAIXA'
      Origin = 'SALDO_CAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSACOM: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACOM'
      Origin = 'ACOM'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsIOS: TfrxDBDataset
    UserName = 'IOS'
    CloseDataSource = False
    DataSet = fdqIOS
    BCDToCurrency = False
    Left = 320
    Top = 168
  end
  object frepIOS: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43458.728088240700000000
    ReportOptions.LastChange = 43458.728088240700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 272
    Top = 224
    Datasets = <
      item
        DataSet = fdsIOS
        DataSetName = 'IOS'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entradas e Sa'#237'das')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo2: TfrxMemoView
          Align = baBottom
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo9: TfrxMemoView
          Align = baBottom
          Left = 211.346630000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Sa'#237'das')
        end
        object Memo10: TfrxMemoView
          Align = baBottom
          Left = 336.716760000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Pagtos do dia')
        end
        object Memo12: TfrxMemoView
          Align = baBottom
          Left = 597.945270000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Caixa')
        end
        object Memo3: TfrxMemoView
          Align = baBottom
          Left = 464.882190000000000000
          Top = 3.779530000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Difer Dia')
        end
        object Memo6: TfrxMemoView
          Align = baBottom
          Left = 90.708720000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Entradas')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = fdsIOS
        DataSetName = 'IOS'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          DataSet = fdsIOS
          DataSetName = 'IOS'
          Fill.BackColor = 16119285
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = fdsIOS
          DataSetName = 'IOS'
          Memo.UTF8W = (
            '[IOS."DATA"]')
        end
        object Memo4: TfrxMemoView
          Left = 212.126160000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'SAIDA'
          DataSet = fdsIOS
          DataSetName = 'IOS'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."SAIDA"]')
        end
        object Memo5: TfrxMemoView
          Left = 341.275820000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PAGAMENTOS'
          DataSet = fdsIOS
          DataSetName = 'IOS'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."PAGAMENTOS"]')
        end
        object Memo8: TfrxMemoView
          Left = 598.724800000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ACOM'
          DataSet = fdsIOS
          DataSetName = 'IOS'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."ACOM"]')
        end
        object Memo11: TfrxMemoView
          Align = baBottom
          Left = 469.441250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."SALDO_CAIXA"]')
        end
        object Memo14: TfrxMemoView
          Left = 91.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ENTRADA'
          DataSet = fdsIOS
          DataSetName = 'IOS'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."ENTRADA"]')
        end
      end
    end
  end
  object fdqVendaTipos: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'select distinct'
      '  mv.dia_mov,'
      
        '  sum(iif(mv.pagamento, 0, mv.valor_total)) over(partition by mv' +
        '.dia_mov) vendas,'
      
        '  sum(iif(mv.fk_caderneta is null, mv.valor_total, 0)) over(part' +
        'ition by mv.dia_mov) Balcao,'
      
        '   sum(iif(mv.fk_caderneta is not null, mv.valor_total, 0)) over' +
        '(partition by mv.dia_mov) Conta'
      'from'
      '  mov_produto mv'
      'where'
      '    not mv.excluido and'
      '    mv.dia_mov >= (select'
      '                     t.periodo_inicial'
      '                   from'
      '                     temporadas t'
      '                   where'
      '                       t.ativo) and'
      '    not mv.pagamento'
      'order by'
      '    mv.dia_mov')
    Left = 144
    Top = 240
    object fdqVendaTiposDIA_MOV: TDateField
      FieldName = 'DIA_MOV'
      Origin = 'DIA_MOV'
    end
    object fdqVendaTiposVENDAS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqVendaTiposBALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO'
      Origin = 'BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqVendaTiposCONTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsVendaTipos: TfrxDBDataset
    UserName = 'fdqVendaTipos'
    CloseDataSource = False
    DataSet = fdqVendaTipos
    BCDToCurrency = False
    Left = 192
    Top = 240
  end
  object frepVendaTipos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43458.728088240700000000
    ReportOptions.LastChange = 43458.728088240700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 144
    Top = 296
    Datasets = <
      item
        DataSet = fdsVendaTipos
        DataSetName = 'fdqVendaTipos'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas Pagamento/Anotado')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 22.677180000000000000
        ParentFont = False
        Top = 71.811070000000000000
        Width = 718.110700000000000000
        Stretched = True
        object Memo7: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo2: TfrxMemoView
          Align = baBottom
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          Align = baBottom
          Left = 123.708720000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Dia')
        end
        object Memo10: TfrxMemoView
          Align = baBottom
          Left = 353.716760000000000000
          Top = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Pg Balcao')
        end
        object Memo12: TfrxMemoView
          Align = baBottom
          Left = 597.945270000000000000
          Top = 3.779530000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Anotado')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = fdsVendaTipos
        DataSetName = 'fdqVendaTipos'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          Fill.BackColor = 16119285
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DIA_MOV'
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          Memo.UTF8W = (
            '[fdqVendaTipos."DIA_MOV"]')
        end
        object DebitosAcomANTERIOR: TfrxMemoView
          Left = 120.708720000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'VENDAS'
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdqVendaTipos."VENDAS"]')
        end
        object Memo5: TfrxMemoView
          Left = 358.275820000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'BALCAO'
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdqVendaTipos."BALCAO"]')
        end
        object Memo8: TfrxMemoView
          Left = 598.724800000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'CONTA'
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdqVendaTipos."CONTA"]')
        end
      end
    end
  end
  object fdqRelPedidos: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'select '
      '  m.id_mesa'
      '  ,m.codigo'
      '  ,m.descricao'
      '  ,m.ativa'
      '  ,p.id_pedido'
      '  ,p.fk_temporada'
      '  ,p.dthr_abertura'
      '  ,p.dthr_fexamento'
      '  ,p.fk_dependente'
      '  ,p.pago'
      '  ,p.nome_dependente'
      '  ,p.anotar'
      '  ,c.nome'
      '  ,c.codigo Cod_cliente'
      '  ,c.id_cliente'
      '  ,p.tp_pagamento'
      'from '
      '  mesa m'
      '  join pedido p on p.fk_mesa = m.id_mesa'
      '  join temporadas t on t.id_temporadas = p.fk_temporada'
      '  left join cliente c on c.id_cliente = p.fk_cliente'
      'where'
      '  t.ativo = true'
      
        '  and cast(p.dthr_fexamento as date) between cast(:datai as date' +
        ') and cast(:dataf as date)')
    Left = 336
    Top = 224
    ParamData = <
      item
        Name = 'DATAI'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'DATAF'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end>
    object fdqRelPedidosID_MESA: TLargeintField
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqRelPedidosCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqRelPedidosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqRelPedidosATIVA: TBooleanField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
      Required = True
    end
    object fdqRelPedidosID_PEDIDO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosFK_TEMPORADA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosDTHR_ABERTURA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTHR_ABERTURA'
      Origin = 'DTHR_ABERTURA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosDTHR_FEXAMENTO: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTHR_FEXAMENTO'
      Origin = 'DTHR_FEXAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosFK_DEPENDENTE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosPAGO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PAGO'
      Origin = 'PAGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosNOME_DEPENDENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_DEPENDENTE'
      Origin = 'NOME_DEPENDENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqRelPedidosANOTAR: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ANOTAR'
      Origin = 'ANOTAR'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqRelPedidosCOD_CLIENTE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLIENTE'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosID_CLIENTE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPedidosTP_PAGAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TP_PAGAMENTO'
      Origin = 'TP_PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object fdqrelPedidoProdutos: TFDQuery
    MasterSource = dtsRelPedidos
    MasterFields = 'ID_PEDIDO'
    DetailFields = 'ID_PEDIDO'
    ConnectionName = 'Condominio'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '  mv.fk_pedido as id_pedido,'
      '  pr.codigo  ,'
      '  pr.nome,'
      '  mv.quantidade ,'
      '  mv.pagamento ,'
      '  mv.valor_total'
      'FROM'
      '   mov_produto mv'
      '  LEFT JOIN produtos pr ON'
      '    pr.id_rodutos = mv.fk_produto  '
      'WHERE'
      '  mv.fk_pedido = :id_pedido'
      '  and not mv.excluido'
      '  and not mv.pagamento'
      'ORDER BY  '
      '     mv.data_hora,mv.id_mov_produto')
    Left = 304
    Top = 272
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 211
      end>
    object fdqrelPedidoProdutosID_PEDIDO: TLargeintField
      FieldName = 'ID_PEDIDO'
      Origin = 'FK_PEDIDO'
    end
    object fdqrelPedidoProdutosCODIGO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqrelPedidoProdutosNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqrelPedidoProdutosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
    end
    object fdqrelPedidoProdutosPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Required = True
    end
    object fdqrelPedidoProdutosVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtsRelPedidos: TDataSource
    DataSet = fdqRelPedidos
    Left = 368
    Top = 224
  end
  object fdqRelPedidosPagto: TFDQuery
    MasterSource = dtsRelPedidos
    MasterFields = 'ID_PEDIDO'
    DetailFields = 'ID_PEDIDO'
    ConnectionName = 'Condominio'
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT'
      '   mv.data_hora,'
      '  mv.fk_pedido as id_pedido,'
      '  tp.descricao,'
      '  mv.pagamento ,'
      '  (mv.valor_total *-1) valor_total'
      'FROM'
      '   mov_produto mv'
      '  LEFT JOIN tipo_pagamento tp ON'
      '    tp.id = mv.tipo_pagamento'
      'WHERE'
      '  mv.fk_pedido = :id_pedido'
      '  and not mv.excluido'
      '  and mv.pagamento'
      '  and mv.valor_total <0'
      ''
      'union all'
      ''
      'select'
      '  p.dthr_fexamento data_hora,'
      '  p.id_pedido,'
      '  '#39'ANOTADO'#39','
      '  true as pagamento ,'
      '  sum(mv.valor_total) valor_total'
      'FROM'
      '   pedido p'
      '  join mov_produto mv on  p.id_pedido = mv.fk_pedido'
      'WHERE'
      '  p.id_pedido = :id_pedido'
      '  and not mv.excluido'
      '  and p.anotar'
      '  group by 1,2,3,4')
    Left = 368
    Top = 272
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 211
      end>
    object fdqRelPedidosPagtoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object fdqRelPedidosPagtoID_PEDIDO: TLargeintField
      FieldName = 'ID_PEDIDO'
      Origin = 'FK_PEDIDO'
    end
    object fdqRelPedidosPagtoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqRelPedidosPagtoPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Required = True
    end
    object fdqRelPedidosPagtoVALOR_TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object dtsPedidoProdutos: TDataSource
    DataSet = fdqrelPedidoProdutos
    Left = 328
    Top = 272
  end
  object dtsPedidoPagto: TDataSource
    DataSet = fdqRelPedidosPagto
    Left = 392
    Top = 272
  end
  object fdsRelPedidos: TfrxDBDataset
    UserName = 'frxRelPedidos'
    CloseDataSource = True
    DataSource = dtsRelPedidos
    BCDToCurrency = True
    Left = 392
    Top = 224
  end
  object fdsPedidoPagto: TfrxDBDataset
    UserName = 'frxPedidoPagto'
    CloseDataSource = False
    DataSource = dtsPedidoPagto
    BCDToCurrency = True
    Left = 416
    Top = 272
  end
  object fdsPedidoProdutos: TfrxDBDataset
    UserName = 'frxPedidoProdutos'
    CloseDataSource = False
    DataSource = dtsPedidoProdutos
    BCDToCurrency = True
    Left = 352
    Top = 280
  end
  object frepRelPedidos: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43458.728088240700000000
    ReportOptions.LastChange = 43459.529065763900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 440
    Top = 232
    Datasets = <
      item
        DataSet = fdsPedidoPagto
        DataSetName = 'frxPedidoPagto'
      end
      item
        DataSet = fdsPedidoProdutos
        DataSetName = 'frxPedidoProdutos'
      end
      item
        DataSet = fdsRelPedidos
        DataSetName = 'frxRelPedidos'
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
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 30.236240000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedidos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 45.354360000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = fdsRelPedidos
        DataSetName = 'frxRelPedidos'
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 79.370130000000000000
          Top = 23.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haBlock
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 464.882190000000000000
          Top = 23.677180000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 586.165740000000000000
          Top = 23.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object frxRelPedidosDESCRICAO: TfrxMemoView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelPedidos
          DataSetName = 'frxRelPedidos'
          Memo.UTF8W = (
            '[frxRelPedidos."DESCRICAO"]')
        end
        object Memo3: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'MESA:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 272.126160000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Data Hora:')
          ParentFont = False
        end
        object frxRelPedidosDTHR_ABERTURA: TfrxMemoView
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'DTHR_ABERTURA'
          DataSet = fdsRelPedidos
          DataSetName = 'frxRelPedidos'
          Memo.UTF8W = (
            '[frxRelPedidos."DTHR_ABERTURA"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = fdsPedidoProdutos
        DataSetName = 'frxPedidoProdutos'
        RowCount = 0
        object Memo4: TfrxMemoView
          Align = baClient
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          Fill.BackColor = clMenu
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
        end
        object frxPedidoProdutosNOME: TfrxMemoView
          Left = 79.370130000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = fdsPedidoProdutos
          DataSetName = 'frxPedidoProdutos'
          Memo.UTF8W = (
            '[frxPedidoProdutos."NOME"]')
        end
        object frxPedidoProdutosVALOR_TOTAL: TfrxMemoView
          Left = 559.370440000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsPedidoProdutos
          DataSetName = 'frxPedidoProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoProdutos."VALOR_TOTAL"]')
        end
        object frxPedidoProdutosQUANTIDADE: TfrxMemoView
          Left = 464.882190000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = fdsPedidoProdutos
          DataSetName = 'frxPedidoProdutos'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoProdutos."QUANTIDADE"]')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = fdsPedidoPagto
        DataSetName = 'frxPedidoPagto'
        RowCount = 0
        object Memo7: TfrxMemoView
          Left = 249.448980000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Fill.BackColor = 16121825
        end
        object frxPedidoPagtoDESCRICAO: TfrxMemoView
          Left = 362.834880000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = fdsPedidoPagto
          DataSetName = 'frxPedidoPagto'
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoPagto."DESCRICAO"]')
        end
        object frxPedidoPagtoVALOR_TOTAL: TfrxMemoView
          Left = 559.370440000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsPedidoPagto
          DataSetName = 'frxPedidoPagto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoPagto."VALOR_TOTAL"]')
        end
        object Memo5: TfrxMemoView
          Left = 249.448980000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Highlight.ApplyFill = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clNone
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> <> 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clWhite
          Highlight.Fill.ForeColor = clWhite
          Highlight.Fill.Style = bsClear
          Memo.UTF8W = (
            '[IIF(<line> = 1,'#39'Forma Pagto'#39','#39#39')]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 7.559060000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Color = clBlack
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 11.338590000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Diagonal = True
        end
      end
    end
  end
end
