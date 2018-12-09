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
        Value = 43412d
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43412d
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
    ReportOptions.CreateDate = 43364.710290277780000000
    ReportOptions.LastChange = 43364.710290277780000000
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
    ReportOptions.LastChange = 43387.580923576390000000
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
            'Pagamentos')
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
        Top = 181.417440000000000000
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
        Height = 7.559060000000000000
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
end
