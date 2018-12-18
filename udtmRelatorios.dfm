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
    DataSet = fdsExtratoCliente
    DataSetName = 'fdsExtratoCliente'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43451.817160659720000000
    ReportOptions.LastChange = 43451.817160659720000000
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
        Height = 56.692950000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 264.567100000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Extrato Clientes')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        DataSet = fdsRelClientes
        DataSetName = 'fdsRelClientes'
        RowCount = 0
        object fdsRelClientesNOME: TfrxMemoView
          Left = 22.677180000000000000
          Top = 3.779530000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = fdsRelClientes
          DataSetName = 'fdsRelClientes'
          Memo.UTF8W = (
            '[fdsRelClientes."NOME"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        Child = frepExtratoCaderno.Child1
        DataSet = fdsExtratoCliente
        DataSetName = 'fdsExtratoCliente'
        RowCount = 0
        object fdsExtratoClienteDTHR_LANCAMENTO: TfrxMemoView
          Left = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'DTHR_LANCAMENTO'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            '[fdsExtratoCliente."DTHR_LANCAMENTO"]')
        end
        object fdsExtratoClienteNomeProduto: TfrxMemoView
          Left = 109.606370000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'NomeProduto'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            '[fdsExtratoCliente."NomeProduto"]')
        end
        object fdsExtratoClienteQUANTIDADE: TfrxMemoView
          Left = 340.157700000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            '[fdsExtratoCliente."QUANTIDADE"]')
        end
        object fdsExtratoClienteVALOR_TOTAL: TfrxMemoView
          Left = 449.764070000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_TOTAL'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Memo.UTF8W = (
            '[fdsExtratoCliente."VALOR_TOTAL"]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 570.709030000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
    MasterFields = 'ID_CLIENTE'
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      '  cc.id_caderneta ,'
      '  cc.dthr_lancamento ,'
      '  cc.fk_temporada ,'
      '  cc.fk_cliente ,'
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
      '  cc.FK_CLIENTE =:id_cliente'
      '  AND cc.FK_TEMPORADA = :fk_temporada'
      '        and not mv.excluido '
      'ORDER BY  '
      '     dthr_lancamento,mv.id_mov_produto  ')
    Left = 24
    Top = 216
    ParamData = <
      item
        Position = 10
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 26
      end
      item
        Name = 'FK_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
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
      AutoGenerateValue = arDefault
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoClienteFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
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
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoClienteNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = fdqProdutoslookup
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FKS'
      Size = 150
      Lookup = True
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
  end
  object fdqProdutoslookup: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
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
    ReportOptions.CreateDate = 43451.817160659710000000
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
        Height = 56.692950000000000000
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
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 37.795300000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'DATA')
        end
        object Memo3: TfrxMemoView
          Left = 200.315090000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            'VALOR GASTO')
        end
        object Memo4: TfrxMemoView
          Left = 400.630180000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            'VALOR PAGO')
        end
        object Memo5: TfrxMemoView
          Left = 566.929500000000000000
          Top = 37.795300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Memo.UTF8W = (
            'SALDO DO DIA')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 136.063080000000000000
        Width = 718.110700000000000000
        Condition = 'fdsExtratoDiario."ID_CLIENTE"'
        KeepTogether = True
        object fdsExtratoDiarioNOME: TfrxMemoView
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Memo.UTF8W = (
            '[fdsExtratoDiario."NOME"]')
        end
        object fdsExtratoDiarioENDERECO: TfrxMemoView
          Left = 438.425480000000000000
          Top = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Memo.UTF8W = (
            '[fdsExtratoDiario."ENDERECO"]')
        end
        object Line1: TfrxLineView
          Align = baBottom
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          Left = 574.488560000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsExtratoDiario."SALDO">,MasterData1)]')
        end
        object Line2: TfrxLineView
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo7: TfrxMemoView
          Left = 525.354670000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total:')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 185.196970000000000000
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
        object fdsExtratoDiarioDATA_LANCAMENTO: TfrxMemoView
          Left = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_LANCAMENTO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.Kind = fkDateTime
          Memo.UTF8W = (
            '[fdsExtratoDiario."DATA_LANCAMENTO"]')
        end
        object fdsExtratoDiarioVALOR_GASTO: TfrxMemoView
          Left = 200.315090000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_GASTO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."VALOR_GASTO"]')
        end
        object fdsExtratoDiarioVALOR_PAGO: TfrxMemoView
          Left = 400.630180000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_PAGO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."VALOR_PAGO"]')
        end
        object fdsExtratoDiarioSALDO: TfrxMemoView
          Left = 566.929500000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'SALDO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."SALDO"]')
        end
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
      '  c.nome,'
      '  c.endereco,'
      '  c.contato,'
      '  cast(cc.dthr_lancamento as Date) Data_lancamento,'
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
      'WHERE'
      '  not mv.excluido '
      'GROUP BY fk_temporada,c.id_cliente,permitir_saldo_negativo,'
      'nome,endereco,contato,c.codigo,Data_lancamento'
      'order by c.codigo,Data_lancamento')
    Left = 152
    Top = 176
    ParamData = <
      item
        Name = 'ID_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 10
      end>
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
      Origin = 'DATA_LANCAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoDiarioFK_TEMPORADA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqExtratoDiarioID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqExtratoDiarioPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
    object fdqExtratoDiarioVALOR_GASTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_GASTO'
      Origin = 'VALOR_GASTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
end
