object dtmRelatorios: TdtmRelatorios
  Height = 572
  Width = 756
  object fdqRelPagamentos_old: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT'
      #9'cast(m.DATA_HORA AS DATE) dia,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 3,-1,0 )*VALOR_TOTAL) Cheque,'#9
      #9'sum(iif(m.TIPO_PAGAMENTO = 4,-1,0 )*VALOR_TOTAL) Dinheiro,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 6,-1,0 )*VALOR_TOTAL) Cartao_C,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 7,-1,0 )*VALOR_TOTAL) Cartao_D,'
      
        '        sum(iif(m.TIPO_PAGAMENTO = 5,-1,0 )*VALOR_TOTAL) Descont' +
        'o'
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
    object fdqRelPagamentos_oldDIA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DIA'
      Origin = 'DIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqRelPagamentos_oldCHEQUE: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CHEQUE'
      Origin = 'CHEQUE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelPagamentos_oldDINHEIRO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DINHEIRO'
      Origin = 'DINHEIRO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelPagamentos_oldCARTAO_C: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CARTAO_C'
      Origin = 'CARTAO_C'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelPagamentos_oldCARTAO_D: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CARTAO_D'
      Origin = 'CARTAO_D'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelPagamentos_oldDESCONTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsRelPagamentos_old: TfrxDBDataset
    UserName = 'frxDBPagamnetos'
    CloseDataSource = True
    DataSet = fdqRelPagamentos_old
    BCDToCurrency = True
    DataSetOptions = []
    Left = 23
    Top = 11
  end
  object frepPagamentos_old: TfrxReport
    Version = '2023.1.3'
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
        DataSet = fdsRelPagamentos_old
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pagamentos')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 52.913420000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Dinheiro')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 196.212740000000000000
          Top = 52.913420000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cheque')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 284.819110000000000000
          Top = 52.913420000000000000
          Width = 109.606313860000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cart'#227'o Credito')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 52.913420000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 400.630180000000000000
          Top = 52.913420000000000000
          Width = 102.047253860000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Cart'#227'o Debito')
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 52.913420000000000000
          Width = 102.047253860000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        DataSet = fdsRelPagamentos_old
        DataSetName = 'frxDBPagamnetos'
        RowCount = 0
        object Memo18: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object frxDBPagamnetosDIA: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBPagamnetos."DIA"]')
        end
        object frxDBPagamnetosDINHEIRO: TfrxMemoView
          AllowVectorExport = True
          Left = 90.708720000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'DINHEIRO'
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."DINHEIRO"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 188.653680000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'CHEQUE'
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."CHEQUE"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 296.157700000000000000
          Width = 98.267718980000000000
          Height = 18.897650000000000000
          DataField = 'CARTAO_C'
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."CARTAO_C"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."DESCONTO"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 408.189240000000000000
          Width = 94.488188980000000000
          Height = 18.897650000000000000
          DataField = 'CARTAO_D'
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBPagamnetos."CARTAO_D"]')
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Width = 102.047253860000000000
          Height = 18.897650000000000000
          DataSet = fdsRelPagamentos_old
          DataSetName = 'frxDBPagamnetos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[(<frxDBPagamnetos."CHEQUE">+<frxDBPagamnetos."DINHEIRO">+<frxDB' +
              'Pagamnetos."CARTAO_C">+<frxDBPagamnetos."CARTAO_D">)]')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 699.213050000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 15.118120000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."DINHEIRO">,MasterData1)]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 196.212740000000000000
          Top = 15.118120000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CHEQUE">,MasterData1,2)]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 307.496290000000000000
          Top = 15.118120000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CARTAO_C">,MasterData1)]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 15.118120000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."DESCONTO">,MasterData1)]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 15.118120000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CARTAO_D">,MasterData1)]')
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 510.236550000000000000
          Top = 15.118120000000000000
          Width = 102.047253860000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBPagamnetos."CHEQUE">+<frxDBPagamnetos."DINHEIRO">+<fr' +
              'xDBPagamnetos."CARTAO_C">+<frxDBPagamnetos."CARTAO_D">,MasterDat' +
              'a1)]')
        end
      end
    end
  end
  object fdqProdutosVendidos: TFDQuery
    IndexFieldNames = 'CODIGO'
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
      'ORDER BY p.codigo,dia')
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
        Value = 43800d
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
    object fdqProdutosVendidosVALOR_TOT: TFMTBCDField
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
    DataSetOptions = []
    Left = 159
    Top = 11
  end
  object frepProdutosGrpProd: TfrxReport
    Version = '2023.1.3'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantide')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = fdsProdutosVendidos
        DataSetName = 'frxDBProdutosVendidos'
        RowCount = 0
        object Memo12: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Fill.BackColor = clGradientInactiveCaption
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object frxDBPagamnetosDINHEIRO: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."CODIGO"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 150.858380000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."NOME"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."VALOR_TOT"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."QUANT_TOTAL"]')
        end
        object frxDBProdutosVendidosDIA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."DIA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBProdutosVendidos."ID_RODUTOS"'
        KeepTogether = True
        object Memo15: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
          Fill.BackColor = 14214856
        end
        object Memo14: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 268.346630000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."NOME"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Produto :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBProdutosVendidos."VALOR_TOT">,MasterData1)]')
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBProdutosVendidos."QUANT_TOTAL">,MasterData1)]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBProdutosVendidos."VALOR_TOT">,MasterData1,2)]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Acomulado :')
          ParentFont = False
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
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
    Left = 300
    Top = 11
  end
  object frepExtratoCaderno: TfrxReport
    Version = '2023.1.3'
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
        AllowVectorExport = True
        Left = 80.000000000000000000
        Top = 56.000000000000000000
        Width = 80.000000000000000000
        Height = 16.000000000000000000
        Frame.Typ = []
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Extrato Clientes')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        AllowSplit = True
        DataSet = fdsRelClientes
        DataSetName = 'fdsRelClientes'
        KeepChild = True
        KeepFooter = True
        KeepHeader = True
        KeepTogether = True
        PrintChildIfInvisible = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo16: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 41.574830000000000000
          Visibility = [vsPreview, vsExport]
          Frame.Typ = []
          Fill.BackColor = clGradientActiveCaption
        end
        object fdsRelClientesNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Width = 366.614410000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = fdsRelClientes
          DataSetName = 'fdsRelClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsRelClientes."NOME"]')
        end
        object fdsRelClientesCONTATO: TfrxMemoView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 22.677180000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CONTATO'
          DataSet = fdsRelClientes
          DataSetName = 'fdsRelClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsRelClientes."CONTATO"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome:')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 22.677180000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Contato: ')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = fdsExtratoCliente
        DataSetName = 'fdsExtratoCliente'
        KeepChild = True
        KeepFooter = True
        KeepHeader = True
        KeepTogether = True
        RowCount = 0
        object fdsExtratoClienteDTHR_LANCAMENTO: TfrxMemoView
          AllowVectorExport = True
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'DTHR_LANCAMENTO'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsExtratoCliente."DTHR_LANCAMENTO"]')
        end
        object fdsExtratoClienteProduto: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          DataField = 'Produto'
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsExtratoCliente."Produto"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[IIF(<fdsExtratoCliente."PAGAMENTO">,'#39#39',<fdsExtratoCliente."SIGN' +
              'ATARIO">)]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoCliente
          DataSetName = 'fdsExtratoCliente'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIF(<fdsExtratoCliente."PAGAMENTO">,'#39#39',<fdsExtratoCliente."QUAN' +
              'TIDADE">)]')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoCliente."VALOR_TOTAL"]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Top = 2.377860000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd/mm/yyyy hh:mm'
          DisplayFormat.Kind = fkDateTime
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Hora')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Top = 2.377860000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 2.377860000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Retirado por')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 495.118430000000000000
          Top = 2.377860000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 2.377860000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Visibility = [vsPreview, vsExport]
          Frame.Typ = [ftTop]
          Fill.BackColor = clInactiveBorder
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.779530000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Total:')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<fdsExtratoCliente."VALOR_TOTAL">,DetailData1)]')
        end
      end
    end
  end
  object fdqRelClientes: TFDQuery
  Connection = dtmcon.conexao
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
        Value = 11
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
    object fdqRelClientesVALOR_GASTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_GASTO'
      Origin = 'VALOR_GASTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelClientesVALOR_PAGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelClientesSALDO: TFMTBCDField
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
    DataSetOptions = []
    Left = 64
    Top = 168
  end
  object fdsExtratoCliente: TfrxDBDataset
    UserName = 'fdsExtratoCliente'
    CloseDataSource = True
    DataSet = fdqExtratoCliente
    BCDToCurrency = True
    DataSetOptions = []
    Left = 56
    Top = 216
  end
  object fdqExtratoCliente: TFDQuery
    MasterSource = dtsRelClientes
    MasterFields = 'ID_CLIENTE;FK_TEMPORADA'
    DetailFields = 'ID_CLIENTE;FK_TEMPORADA'
  Connection = dtmcon.conexao
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
        Value = 273
      end
      item
        Name = 'FK_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 11
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
    object fdqExtratoClienteVALOR_TOTAL: TFMTBCDField
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
    object fdqExtratoClienteSALDO: TFMTBCDField
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
    Version = '2023.1.3'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Extrato Clientes')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        Condition = 'fdsExtratoDiario."ID_CLIENTE"'
        KeepTogether = True
        object Memo16: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Visibility = [vsPreview, vsExport]
          Frame.Typ = []
          Fill.BackColor = clGradientActiveCaption
        end
        object fdsExtratoDiarioNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 10.559060000000000000
          Width = 396.850650000000000000
          Height = 18.897650000000000000
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsExtratoDiario."CODIGO"] - [fdsExtratoDiario."NOME"]')
        end
        object fdsExtratoDiarioENDERECO: TfrxMemoView
          AllowVectorExport = True
          Left = 402.748300000000000000
          Top = 10.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'ENDERECO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsExtratoDiario."ENDERECO"]')
        end
        object fdsExtratoDiarioCONTATO: TfrxMemoView
          AllowVectorExport = True
          Left = 530.472790000000000000
          Top = 11.559060000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'CONTATO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsExtratoDiario."CONTATO"]')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        DataSet = fdsExtratoDiario
        DataSetName = 'fdsExtratoDiario'
        RowCount = 0
        object Memo6: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          Frame.Typ = []
          Fill.BackColor = clWhitesmoke
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_LANCAMENTO'
          DataSet = fdsExtratoDiario
          DataSetName = 'fdsExtratoDiario'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdsExtratoDiario."DATA_LANCAMENTO"]')
        end
        object DebitosAcomANTERIOR: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."ANTERIOR"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."VENDAS"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."PAGAMENTOS"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."ARECEBER"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsExtratoDiario."VENDAS_ACOM"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.645640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas do Dia')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pagtos do dia')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo A Receber')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Acomulado')
        end
      end
      object Line1: TfrxLineView
        Align = baBottom
        AllowVectorExport = True
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
    DataSetOptions = []
    Left = 184
    Top = 176
  end
  object fdqExtratoDiario: TFDQuery
  Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT'
      '  distinct'
      '  c.id_cliente'
      '  ,c.codigo'
      '  ,c.nome'
      '  ,c.endereco'
      '  ,c.contato'
      '  ,mv.dia_mov Data_lancamento'
      
        ' ,sum(mv.valor_total) over (partition by c.id_cliente order by m' +
        'v.dia_mov)'
      
        '   -sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,0,mv.valor_t' +
        'otal))  over (partition by c.id_cliente,mv.dia_mov order by mv.d' +
        'ia_mov )'
      
        '   -sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,mv.valor_tot' +
        'al,0))  over (partition by c.id_cliente,mv.dia_mov order by mv.d' +
        'ia_mov ) anterior'
      
        '   ,sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,0,mv.valor_t' +
        'otal))  over (partition by c.id_cliente,mv.dia_mov order by mv.d' +
        'ia_mov ) vendas'
      
        '   ,sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,mv.valor_tot' +
        'al*-1,0))  over (partition by c.id_cliente,mv.dia_mov order by m' +
        'v.dia_mov ) pagamentos'
      
        '   ,sum(mv.valor_total) over (partition by c.id_cliente order by' +
        ' mv.dia_mov) areceber'
      
        '   ,sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,0,mv.valor_t' +
        'otal)) over (partition by c.id_cliente  order by c.id_cliente,mv' +
        '.dia_mov)  Vendas_acom'
      'FROM'
      '  cliente  c '
      '  left join caderneta_cliente cc'
      '    on   c.id_cliente = cc.fk_cliente'
      '  left JOIN mov_produto mv ON'
      '    cc.id_caderneta = mv.fk_caderneta'
      'WHERE'
      '  not mv.excluido '
      '  AND mv.dia_mov between'
      '              (select'
      '                 t.periodo_inicial'
      '               from'
      '                 temporadas t'
      '               where'
      '                   t.ativo)'
      '               and (select'
      '                       coalesce(t.periodo_final, current_date)'
      '                     from'
      '                       temporadas t'
      '                     where'
      '                         t.ativo)'
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
    object fdqExtratoDiarioANTERIOR: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ANTERIOR'
      Origin = 'ANTERIOR'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioVENDAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioPAGAMENTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTOS'
      Origin = 'PAGAMENTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioARECEBER: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ARECEBER'
      Origin = 'ARECEBER'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqExtratoDiarioVENDAS_ACOM: TFMTBCDField
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
    Version = '2023.1.3'
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
    Left = 312
    Top = 64
    Datasets = <
      item
        DataSet = fdsRelPagamentos_old
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pagamentos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 1046.929810000000000000
        DataSet = fdsPagamentosTipo
        DataSetName = 'PagamentosTipo'
        RowCount = 0
        object Memo3: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
          Fill.BackColor = cl3DLight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object PagamentosTipoDATA: TfrxMemoView
          AllowVectorExport = True
          Left = 5.220470000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          Frame.Typ = []
          Memo.UTF8W = (
            '[PagamentosTipo."DATA"]')
        end
        object PagamentosTipoCHEQUE_BALCAO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CHEQUE_BALCAO"]')
        end
        object PagamentosTipoDINHEIRO_BALCAO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DINHEIRO_BALCAO"]')
        end
        object PagamentosTipoCREDITO_BALCAO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CREDITO_BALCAO"]')
        end
        object PagamentosTipoDEBITO_BALCAO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DEBITO_BALCAO"]')
        end
        object PagamentosTipoCHEQUE_CADERNO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CHEQUE_CADERNO"]')
        end
        object PagamentosTipoDINHEIRO_CADERNO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DINHEIRO_CADERNO"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '0.00'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<PagamentosTipo."CHEQUE_BALCAO">+<PagamentosTipo."DINHEIRO_BALC' +
              'AO">+<PagamentosTipo."CREDITO_BALCAO">+<PagamentosTipo."DEBITO_B' +
              'ALCAO">+<PagamentosTipo."CHEQUE_CADERNO">+<PagamentosTipo."DINHE' +
              'IRO_CADERNO">+<PagamentosTipo."CREDITO_CADERNO">+<PagamentosTipo' +
              '."DEBITO_CADERNO">]')
        end
        object PagamentosTipoCREDITO_CADERNO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."CREDITO_CADERNO"]')
        end
        object PagamentosTipoDEBITO_CADERNO: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PagamentosTipo."DEBITO_CADERNO"]')
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Fill.Style = bsClear
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Left = 5.220470000000000000
          Top = 31.747990000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsPagamentosTipo
          DataSetName = 'PagamentosTipo'
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CHEQUE')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DINHEIRO')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CREDITO')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DEBITO')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 925.984850000000000000
          Top = 31.747990000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '  TOTAL DO DIA')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CHEQUE')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DINHEIRO')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'CREDITO')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'DEBITO')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 86.929190000000000000
          Top = 52.913420000000000000
          Height = -52.913420000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 496.897960000000000000
          Top = 52.913420000000000000
          Height = -52.913420000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BALC'#195'O')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CADERNO')
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 914.646260000000000000
          Top = 52.913420000000000000
          Height = -52.913420000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object fdqPagamentosTipo: TFDQuery
    Connection = dtmcon.conexao
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
    Left = 392
    Top = 128
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
    object fdqPagamentosTipoCHEQUE_BALCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CHEQUE_BALCAO'
      Origin = 'CHEQUE_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDINHEIRO_BALCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DINHEIRO_BALCAO'
      Origin = 'DINHEIRO_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoCREDITO_BALCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO_BALCAO'
      Origin = 'CREDITO_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDEBITO_BALCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DEBITO_BALCAO'
      Origin = 'DEBITO_BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoCHEQUE_CADERNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CHEQUE_CADERNO'
      Origin = 'CHEQUE_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDINHEIRO_CADERNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DINHEIRO_CADERNO'
      Origin = 'DINHEIRO_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoCREDITO_CADERNO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CREDITO_CADERNO'
      Origin = 'CREDITO_CADERNO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqPagamentosTipoDEBITO_CADERNO: TFMTBCDField
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
    DataSetOptions = []
    Left = 456
    Top = 128
  end
  object fdqDebitosAcom: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      
        'SELECT DIA_MOV, ANTERIOR, VENDAS, PAGAMENTOS, ARECEBER, VENDAS_A' +
        'COM'
      'FROM VENDAS_ACOMULADO;')
    Left = 384
    Top = 16
    object fdqDebitosAcomDIA_MOV: TDateField
      FieldName = 'DIA_MOV'
      Origin = 'DIA_MOV'
    end
    object fdqDebitosAcomANTERIOR: TFMTBCDField
      FieldName = 'ANTERIOR'
      Origin = 'ANTERIOR'
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomVENDAS: TFMTBCDField
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomPAGAMENTOS: TFMTBCDField
      FieldName = 'PAGAMENTOS'
      Origin = 'PAGAMENTOS'
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomARECEBER: TFMTBCDField
      FieldName = 'ARECEBER'
      Origin = 'ARECEBER'
      Precision = 18
      Size = 2
    end
    object fdqDebitosAcomVENDAS_ACOM: TFMTBCDField
      FieldName = 'VENDAS_ACOM'
      Origin = 'VENDAS_ACOM'
      Precision = 18
      Size = 2
    end
  end
  object fdsDebitosAcom: TfrxDBDataset
    UserName = 'DebitosAcom'
    CloseDataSource = False
    DataSet = fdqDebitosAcom
    BCDToCurrency = False
    DataSetOptions = []
    Left = 432
    Top = 16
  end
  object frepDebitosAcom: TfrxReport
    Version = '2023.1.3'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.645640000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Anterior')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas do Dia')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pagtos do dia')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo A Receber')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Acomulado')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = fdsDebitosAcom
        DataSetName = 'DebitosAcom'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          Frame.Typ = []
          Fill.BackColor = clWhitesmoke
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DIA_MOV'
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DebitosAcom."DIA_MOV"]')
        end
        object DebitosAcomANTERIOR: TfrxMemoView
          AllowVectorExport = True
          Left = 91.488250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."ANTERIOR"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."VENDAS"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."PAGAMENTOS"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."ARECEBER"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DebitosAcom."VENDAS_ACOM"]')
        end
      end
    end
  end
  object fdqIOS: TFDQuery
    Connection = dtmcon.conexao
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
    Left = 384
    Top = 176
    object fdqIOSDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqIOSENTRADA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ENTRADA'
      Origin = 'ENTRADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSSAIDA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SAIDA'
      Origin = 'SAIDA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSPAGAMENTOS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTOS'
      Origin = 'PAGAMENTOS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSSALDO_CAIXA: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO_CAIXA'
      Origin = 'SALDO_CAIXA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqIOSACOM: TFMTBCDField
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
    DataSetOptions = []
    Left = 432
    Top = 176
  end
  object frepIOS: TfrxReport
    Version = '2023.1.3'
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
    Left = 384
    Top = 248
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Entradas e Sa'#237'das')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo2: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo9: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sa'#237'das')
        end
        object Memo10: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pagtos do dia')
        end
        object Memo12: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Caixa')
        end
        object Memo3: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Difer Dia')
        end
        object Memo6: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Entradas')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = fdsIOS
        DataSetName = 'IOS'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          DataSet = fdsIOS
          DataSetName = 'IOS'
          Frame.Typ = []
          Fill.BackColor = clWhitesmoke
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DATA'
          DataSet = fdsIOS
          DataSetName = 'IOS'
          Frame.Typ = []
          Memo.UTF8W = (
            '[IOS."DATA"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."SAIDA"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."PAGAMENTOS"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."ACOM"]')
        end
        object Memo11: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 469.441250000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."SALDO_CAIXA"]')
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[IOS."ENTRADA"]')
        end
      end
    end
  end
  object fdqVendaTipos: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select distinct'
      '  mv.dia_mov,'
      '  sum( mv.valor_total) over(partition by mv.dia_mov) vendas,'
      
        '  sum(iif(mv.fk_caderneta is null, mv.valor_total, 0)) over(part' +
        'ition by mv.dia_mov) Balcao,'
      
        '   sum(iif(mv.fk_caderneta is not null, mv.valor_total, 0)) over' +
        '(partition by mv.dia_mov) Conta'
      'from'
      '  mov_produto mv'
      'where'
      '    not mv.excluido '
      '    AND mv.dia_mov between'
      '              (select'
      '                 t.periodo_inicial'
      '               from'
      '                 temporadas t'
      '               where'
      '                   t.ativo)'
      '               and (select'
      '                       coalesce(t.periodo_final, current_date)'
      '                     from'
      '                       temporadas t'
      '                     where'
      '                         t.ativo)'
      '    AND (not mv.pagamento OR mv.TIPO_PAGAMENTO = 5)'
      'order by'
      '    mv.dia_mov')
    Left = 144
    Top = 240
    object fdqVendaTiposDIA_MOV: TDateField
      FieldName = 'DIA_MOV'
      Origin = 'DIA_MOV'
    end
    object fdqVendaTiposVENDAS: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VENDAS'
      Origin = 'VENDAS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqVendaTiposBALCAO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO'
      Origin = 'BALCAO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqVendaTiposCONTA: TFMTBCDField
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
    DataSetOptions = []
    Left = 192
    Top = 240
  end
  object frepVendaTipos: TfrxReport
    Version = '2023.1.3'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vendas Pagamento/Anotado')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo2: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Dia')
        end
        object Memo10: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Pg Balcao')
        end
        object Memo12: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendas Anotado')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = fdsVendaTipos
        DataSetName = 'fdqVendaTipos'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          Frame.Typ = []
          Fill.BackColor = clWhitesmoke
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object DebitosAcomDIA_MOV: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DIA_MOV'
          DataSet = fdsVendaTipos
          DataSetName = 'fdqVendaTipos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[fdqVendaTipos."DIA_MOV"]')
        end
        object DebitosAcomANTERIOR: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdqVendaTipos."VENDAS"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdqVendaTipos."BALCAO"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdqVendaTipos."CONTA"]')
        end
      end
    end
  end
  object fdqRelPedidos: TFDQuery
    Connection = dtmcon.conexao
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
    Left = 520
    Top = 216
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
    Connection = dtmcon.conexao
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
    Left = 480
    Top = 280
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
    object fdqrelPedidoProdutosVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object dtsRelPedidos: TDataSource
    DataSet = fdqRelPedidos
    Left = 552
    Top = 216
  end
  object fdqRelPedidosPagto: TFDQuery
    Indexes = <
      item
        Active = True
        Selected = True
        Name = 'ixdpgto'
        Fields = 'ATIVO;DATA_HORA'
      end>
    IndexName = 'ixdpgto'
    MasterSource = dtsRelPedidos
    MasterFields = 'ID_PEDIDO'
    DetailFields = 'ID_PEDIDO'
  Connection = dtmcon.conexao
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  mv.data_hora,'
      '  mv.fk_pedido as id_pedido,'
      '  tp.descricao,'
      '  tp.ativo,'
      '  mv.pagamento,'
      '  (mv.valor_total * -1) valor_total'
      'from'
      '  mov_produto mv'
      'left join'
      '    tipo_pagamento tp on tp.id = mv.tipo_pagamento'
      'where'
      '    mv.fk_pedido = :id_pedido and'
      '    not mv.excluido and'
      '    mv.pagamento and'
      '    mv.valor_total < 0'
      ''
      'union all'
      ''
      'select'
      '  p.dthr_fexamento data_hora,'
      '  p.id_pedido,'
      '  '#39'ANOTADO'#39','
      '  null,'
      '  true as pagamento,'
      '  sum(mv.valor_total) valor_total'
      'from'
      '  pedido p'
      'join'
      '    mov_produto mv on p.id_pedido = mv.fk_pedido'
      'where'
      '    p.id_pedido = :id_pedido and'
      '    not mv.excluido and'
      '    p.anotar'
      'group by'
      '    1, 2, 3, 4,5'
      'order by'
      '    4 asc nulls last')
    Left = 544
    Top = 280
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
    object fdqRelPedidosPagtoVALOR_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqRelPedidosPagtoATIVO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dtsPedidoProdutos: TDataSource
    DataSet = fdqrelPedidoProdutos
    Left = 504
    Top = 280
  end
  object dtsPedidoPagto: TDataSource
    DataSet = fdqRelPedidosPagto
    Left = 568
    Top = 280
  end
  object fdsRelPedidos: TfrxDBDataset
    UserName = 'frxRelPedidos'
    CloseDataSource = True
    DataSource = dtsRelPedidos
    BCDToCurrency = True
    DataSetOptions = []
    Left = 584
    Top = 216
  end
  object fdsPedidoPagto: TfrxDBDataset
    UserName = 'frxPedidoPagto'
    CloseDataSource = False
    DataSource = dtsPedidoPagto
    BCDToCurrency = True
    DataSetOptions = []
    Left = 592
    Top = 280
  end
  object fdsPedidoProdutos: TfrxDBDataset
    UserName = 'frxPedidoProdutos'
    CloseDataSource = False
    DataSource = dtsPedidoProdutos
    BCDToCurrency = True
    DataSetOptions = []
    Left = 528
    Top = 352
  end
  object frepRelPedidos: TfrxReport
    Version = '2023.1.3'
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
    Left = 608
    Top = 216
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pedidos')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 45.354360000000000000
        Top = 109.606370000000000000
        Width = 718.110700000000000000
        DataSet = fdsRelPedidos
        DataSetName = 'frxRelPedidos'
        RowCount = 0
        object Memo6: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor')
          ParentFont = False
        end
        object frxRelPedidosDESCRICAO: TfrxMemoView
          AllowVectorExport = True
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelPedidos
          DataSetName = 'frxRelPedidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRelPedidos."DESCRICAO"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MESA:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Data Hora:')
          ParentFont = False
        end
        object frxRelPedidosDTHR_ABERTURA: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'DTHR_ABERTURA'
          DataSet = fdsRelPedidos
          DataSetName = 'frxRelPedidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxRelPedidos."DTHR_ABERTURA"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = fdsPedidoProdutos
        DataSetName = 'frxPedidoProdutos'
        RowCount = 0
        object Memo4: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          Frame.Typ = []
          Fill.BackColor = clMenu
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object frxPedidoProdutosNOME: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = fdsPedidoProdutos
          DataSetName = 'frxPedidoProdutos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxPedidoProdutos."NOME"]')
        end
        object frxPedidoProdutosVALOR_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsPedidoProdutos
          DataSetName = 'frxPedidoProdutos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoProdutos."VALOR_TOTAL"]')
        end
        object frxPedidoProdutosQUANTIDADE: TfrxMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = fdsPedidoProdutos
          DataSetName = 'frxPedidoProdutos'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoProdutos."QUANTIDADE"]')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = fdsPedidoPagto
        DataSetName = 'frxPedidoPagto'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448980000000000000
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Fill.BackColor = 16121825
        end
        object frxPedidoPagtoDESCRICAO: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'DESCRICAO'
          DataSet = fdsPedidoPagto
          DataSetName = 'frxPedidoPagto'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoPagto."DESCRICAO"]')
        end
        object frxPedidoPagtoVALOR_TOTAL: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsPedidoPagto
          DataSetName = 'frxPedidoPagto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPedidoPagto."VALOR_TOTAL"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
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
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[IIF(<line> = 1,'#39'Forma Pagto'#39','#39#39')]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 7.559060000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 355.275820000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 11.338590000000000000
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Align = baWidth
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object fdqSaldo: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT'
      '   '#9'c.id_cliente'
      '  '#9',c.codigo'
      '  '#9',c.nome'
      '  '#9',c.endereco'
      #9',c.contato  '
      
        #9',sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,0,mv.valor_tot' +
        'al)) gasto'
      
        '   '#9',sum(iif(mv.pagamento AND mv.TIPO_PAGAMENTO <> 5,mv.valor_to' +
        'tal*-1,0))  Pago'
      '   '#9',sum(mv.valor_total) Saldo'
      'FROM'
      '  '#9'cliente  c '
      '  '#9'left join caderneta_cliente cc'
      '    '#9'on   c.id_cliente = cc.fk_cliente'
      '  '#9'left JOIN mov_produto mv ON'
      '    '#9'cc.id_caderneta = mv.fk_caderneta'
      'WHERE'
      '  '#9'not mv.excluido '
      '  '#9'AND mv.dia_mov between'
      '              (select'
      '                 t.periodo_inicial'
      '               from'
      '                 temporadas t'
      '               where'
      '                   t.ativo)'
      '               and (select'
      '                       coalesce(t.periodo_final, current_date)'
      '                     from'
      '                       temporadas t'
      '                     where'
      '                         t.ativo)'
      'GROUP BY '
      #9'c.id_cliente'
      '  '#9',c.codigo'
      '  '#9',c.nome'
      '  '#9',c.endereco'
      #9',c.contato'
      'order by'
      '  '#9'c.codigo'#9)
    Left = 256
    Top = 184
    object fdqSaldoID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqSaldoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqSaldoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqSaldoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object fdqSaldoCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 150
    end
    object fdqSaldoGASTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'GASTO'
      Origin = 'GASTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqSaldoPAGO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGO'
      Origin = 'PAGO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object fdqSaldoSALDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object fdsSaldo: TfrxDBDataset
    UserName = 'fdsSaldo'
    CloseDataSource = True
    DataSet = fdqSaldo
    BCDToCurrency = True
    DataSetOptions = []
    Left = 288
    Top = 184
  end
  object frepSaldo: TfrxReport
    Version = '2023.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43451.817160659700000000
    ReportOptions.LastChange = 43473.704227106480000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 264
    Top = 128
    Datasets = <
      item
        DataSet = fdsSaldo
        DataSetName = 'fdsSaldo'
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
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Clientes')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 158.740260000000000000
        Width = 718.110700000000000000
        DataSet = fdsSaldo
        DataSetName = 'fdsSaldo'
        RowCount = 0
        Stretched = True
        object Memo6: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Visibility = [vsPreview, vsExport]
          StretchMode = smMaxHeight
          Frame.Typ = []
          Fill.BackColor = clWhitesmoke
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<Line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 371.512060000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'GASTO'
          DataSet = fdsSaldo
          DataSetName = 'fdsSaldo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsSaldo."GASTO"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 471.590910000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PAGO'
          DataSet = fdsSaldo
          DataSetName = 'fdsSaldo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsSaldo."PAGO"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 598.724800000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsSaldo
          DataSetName = 'fdsSaldo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fdsSaldo."SALDO"]')
        end
        object fdsExtratoDiarioNOME: TfrxMemoView
          AllowVectorExport = True
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = fdsSaldo
          DataSetName = 'fdsSaldo'
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[fdsSaldo."CODIGO"] - [fdsSaldo."NOME"]')
          Formats = <
            item
            end
            item
            end>
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 219.212740000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[fdsSaldo."ENDERECO"] [IIF((<fdsSaldo."CONTATO">)='#39#39','#39#39','#39' ('#39'+Var' +
              'ToStr(<fdsSaldo."CONTATO">)+'#39') '#39')]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 0.999400000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 0.999400000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Endere'#231'o ( Fone )')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 370.732530000000000000
          Top = 0.999400000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Gasto')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 467.031850000000000000
          Top = 0.999400000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pago')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 590.386210000000000000
          Top = 0.999400000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataSet = fdsDebitosAcom
          DataSetName = 'DebitosAcom'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo')
        end
      end
      object Line1: TfrxLineView
        Align = baBottom
        AllowVectorExport = True
        Top = 1046.929810000000000000
        Width = 718.110700000000000000
        StretchMode = smMaxHeight
        Color = clBlack
        Frame.Typ = [ftTop]
      end
    end
  end
  object fdqRelExluido: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT'
      #9'c.CODIGO,'
      #9'c.NOME,'
      #9'COALESCE(p.NOME,'
      #9'tp.DESCRICAO) DESCRICAO,'
      #9'CASE'
      #9#9'mv.PAGAMENTO'
      #9#9'WHEN TRUE THEN '#39'PAGAMENTO'#39
      #9#9'ELSE '#39'PRODUTO'#39
      #9'END TIPO,'
      #9'MV.DATA_HORA,'
      #9'MV.DATA_HORA_EXC,'
      #9'CASE'
      #9#9'mv.PAGAMENTO'
      #9#9'WHEN TRUE THEN null'
      #9#9'ELSE MV.QUANTIDADE'
      #9'END QUANTIDADE,'
      #9'MV.VALOR_TOTAL,'
      #9'mv.USER_DEL'
      'FROM'
      #9'MOV_PRODUTO mv'
      'LEFT JOIN PRODUTOS p ON'
      #9'mv.FK_PRODUTO = p.ID_RODUTOS'
      'LEFT JOIN TIPO_PAGAMENTO tp ON'
      #9'mv.TIPO_PAGAMENTO = tp.ID'
      'LEFT JOIN CADERNETA_CLIENTE cc ON'
      #9'mv.FK_CADERNETA = cc.ID_CADERNETA'
      'LEFT JOIN CLIENTE c ON'
      #9'cc.FK_CLIENTE = c.ID_CLIENTE'
      'WHERE'
      #9'EXCLUIDO and'
      '        mv.dia_mov between'
      '              (select'
      '                 t.periodo_inicial'
      '               from'
      '                 temporadas t'
      '               where'
      '                   t.ativo)'
      '               and (select'
      '                       coalesce(t.periodo_final, current_date)'
      '                     from'
      '                       temporadas t'
      '                     where'
      '                         t.ativo)')
    Left = 255
    Top = 299
    object fdqRelExluidoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
    end
    object fdqRelExluidoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 150
    end
    object fdqRelExluidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object fdqRelExluidoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 9
    end
    object fdqRelExluidoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
      Required = True
    end
    object fdqRelExluidoDATA_HORA_EXC: TSQLTimeStampField
      FieldName = 'DATA_HORA_EXC'
      Origin = 'DATA_HORA_EXC'
    end
    object fdqRelExluidoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
    end
    object fdqRelExluidoVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqRelExluidoUSER_DEL: TStringField
      FieldName = 'USER_DEL'
      Origin = 'USER_DEL'
      Size = 150
    end
  end
  object fdsRelExcluidos: TfrxDBDataset
    UserName = 'frxDBrelExcluido'
    CloseDataSource = True
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'NOME=NOME'
      'DESCRICAO=DESCRICAO'
      'TIPO=TIPO'
      'DATA_HORA=DATA_HORA'
      'DATA_HORA_EXC=DATA_HORA_EXC'
      'QUANTIDADE=QUANTIDADE'
      'VALOR_TOTAL=VALOR_TOTAL'
      'USER_DEL=USER_DEL')
    DataSet = fdqRelExluido
    BCDToCurrency = True
    DataSetOptions = []
    Left = 255
    Top = 251
  end
  object frepRelExcluido: TfrxReport
    Version = '2023.1.3'
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
    Left = 303
    Top = 251
    Datasets = <
      item
        DataSet = fdsRelExcluidos
        DataSetName = 'frxDBrelExcluido'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Height = 71.811070000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Exclus'#245'es')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Lancamento')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 128.504020000000000000
          Top = 52.913420000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data Exlus'#227'o')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 737.008350000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantide')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 257.008040000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Conta')
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Usu'#225'rio')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 151.181200000000000000
        Width = 1046.929810000000000000
        DataSet = fdsRelExcluidos
        DataSetName = 'frxDBrelExcluido'
        RowCount = 0
        object Memo13: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Fill.BackColor = clBtnFace
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 128.181200000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_HORA_EXC'
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBrelExcluido."DATA_HORA_EXC"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 820.158010000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBrelExcluido."VALOR_TOTAL"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 438.425480000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBrelExcluido."TIPO"]')
        end
        object frxDBProdutosVendidosDIA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'DATA_HORA'
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBrelExcluido."DATA_HORA"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 260.787570000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBrelExcluido."CODIGO"] - [frxDBrelExcluido."NOME"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBrelExcluido."DESCRICAO"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 737.008350000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[frxDBrelExcluido."QUANTIDADE"]')
        end
        object frxDBrelExcluidoUSER_DEL: TfrxMemoView
          AllowVectorExport = True
          Left = 952.441560000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = fdsRelExcluidos
          DataSetName = 'frxDBrelExcluido'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBrelExcluido."USER_DEL"]')
        end
      end
    end
  end
  object frepProdutosGrpDia: TfrxReport
    Version = '2023.1.3'
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
    Left = 215
    Top = 59
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
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
          AllowVectorExport = True
          Left = 253.228510000000000000
          Top = 3.779530000000000000
          Width = 139.842610000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendas')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 52.913420000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Data')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Top = 52.913420000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 52.913420000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 472.441250000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Quantide')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 196.535560000000000000
        Width = 718.110700000000000000
        DataSet = fdsProdutosVendidos
        DataSetName = 'frxDBProdutosVendidos'
        RowCount = 0
        object Memo12: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Fill.BackColor = clGradientInactiveCaption
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<line> mod 2 = 1'
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
        end
        object frxDBPagamnetosDINHEIRO: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."CODIGO"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 150.858380000000000000
          Width = 275.905690000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."NOME"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
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
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."VALOR_TOT"]')
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%g'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."QUANT_TOTAL"]')
        end
        object frxDBProdutosVendidosDIA: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBProdutosVendidos."DIA"]')
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        Condition = 'frxDBProdutosVendidos."DIA"'
        object Memo15: TfrxMemoView
          Align = baClient
          AllowVectorExport = True
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Frame.Typ = [ftBottom]
          Fill.BackColor = 14214856
        end
        object Memo14: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 238.110390000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Data : [frxDBProdutosVendidos."DIA"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 238.110390000000000000
        Width = 718.110700000000000000
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Dia:')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 559.370440000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBProdutosVendidos."VALOR_TOT">,MasterData1)]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 321.260050000000000000
        Width = 718.110700000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 563.149970000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataSet = fdsProdutosVendidos
          DataSetName = 'frxDBProdutosVendidos'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBProdutosVendidos."VALOR_TOT">,MasterData1,2)]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Acomulado :')
          ParentFont = False
        end
      end
    end
  end
  object frepPagamentos: TfrxReport
    Version = '2023.1.3'
    DataSet = fdsRelPagamentos
    DataSetName = 'fdqRelPagamentos'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45778.967552291700000000
    ReportOptions.LastChange = 45780.543542280100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      
        'procedure DBCross1OnPrintCell(Memo: TfrxMemoView; RowIndex, Colu' +
        'mnIndex, CellIndex: Integer; RowValues, ColumnValues, Value: Var' +
        'iant);'
      'begin'
      '  '
      '  if( vartostr(Value) = '#39#39') then'
      '  begin'
      '    Memo.Text := '#39'0,00'#39'            '
      '  end'
      '  else'
      '  begin'
      '     Memo.Text :=FormatFloat('#39'0,.00'#39', Value);            '
      '  end                    '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 624
    Top = 16
    Datasets = <
      item
        DataSet = fdsRelPagamentos
        DataSetName = 'fdqRelPagamentos'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 356.000000000000000000
      PaperHeight = 216.000000000000000000
      PaperSize = 256
      LeftMargin = 1.000000000000000000
      TopMargin = 1.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object DBCross1: TfrxDBCrossView
        AllowVectorExport = True
        Left = 15.120000000000000000
        Top = 30.220940000000000000
        Width = 450.000000000000000000
        Height = 88.000000000000000000
        AddWidth = 755.905511811024000000
        AutoSize = False
        DownThenAcross = False
        MaxWidth = 99999999
        MinWidth = 70
        OnPrintCell = 'DBCross1OnPrintCell'
        CellFields.Strings = (
          'TOTAL')
        ColumnFields.Strings = (
          'DESCRICAO')
        DataSet = fdsRelPagamentos
        DataSetName = 'fdqRelPagamentos'
        RowFields.Strings = (
          'DIA')
        Memos = {
          3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
          662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
          6C6C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563746F
          724578706F72743D225472756522204C6566743D223136352C31322220546F70
          3D2237342C3232303934222057696474683D2231353022204865696768743D22
          323222205265737472696374696F6E733D22323422204F6E4166746572446174
          613D22444243726F73733143656C6C304F6E41667465724461746122204F6E42
          65666F72655072696E743D22444243726F73733143656C6C304F6E4265666F72
          655072696E742220416C6C6F7745787072657373696F6E733D2246616C736522
          204672616D652E5479703D2231352220476170583D22332220476170593D2233
          222048416C69676E3D2268615269676874222056416C69676E3D22766143656E
          7465722220546578743D2230222F3E3C546672784D656D6F5669657720416C6C
          6F77566563746F724578706F72743D225472756522204C6566743D223136352C
          31322220546F703D2239362C3232303934222057696474683D22313530222048
          65696768743D22323222205265737472696374696F6E733D2232342220416C6C
          6F7745787072657373696F6E733D2246616C736522204672616D652E5479703D
          2231352220476170583D22332220476170593D2233222048416C69676E3D2268
          615269676874222056416C69676E3D22766143656E7465722220546578743D22
          30222F3E3C546672784D656D6F5669657720416C6C6F77566563746F72457870
          6F72743D225472756522204C6566743D223331352C31322220546F703D223734
          2C3232303934222057696474683D2231353022204865696768743D2232322220
          5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
          6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
          332220476170593D2233222048416C69676E3D22686152696768742220576F72
          64577261703D2246616C7365222056416C69676E3D22766143656E7465722220
          546578743D2230222F3E3C546672784D656D6F5669657720416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D223331352C3132222054
          6F703D2239362C3232303934222057696474683D223135302220486569676874
          3D22323222205265737472696374696F6E733D2232342220416C6C6F77457870
          72657373696F6E733D2246616C736522204672616D652E5479703D2231352220
          476170583D22332220476170593D2233222048416C69676E3D22686152696768
          742220576F7264577261703D2246616C7365222056416C69676E3D2276614365
          6E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C
          6C6865616465726D656D6F733E3C546672784D656D6F5669657720416C6C6F77
          566563746F724578706F72743D225472756522204C6566743D22302220546F70
          3D2230222057696474683D223022204865696768743D22302220526573747269
          6374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C
          736522204672616D652E5479703D2231352220476170583D2233222047617059
          3D2233222056416C69676E3D22766143656E7465722220546578743D22544F54
          414C222F3E3C546672784D656D6F5669657720416C6C6F77566563746F724578
          706F72743D225472756522204C6566743D22302220546F703D22302220576964
          74683D223022204865696768743D223022205265737472696374696F6E733D22
          382220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
          652E5479703D2231352220476170583D22332220476170593D2233222056416C
          69676E3D22766143656E7465722220546578743D22544F54414C222F3E3C2F63
          656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672
          784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
          6522204C6566743D223136352C31322220546F703D2235322C32323039342220
          57696474683D2231353022204865696768743D22323222205265737472696374
          696F6E733D2232342220537472657463684D6F64653D22736D4D617848656967
          68742220416C6C6F7745787072657373696F6E733D2246616C73652220467261
          6D652E5479703D2231352220476170583D22332220476170593D223322204841
          6C69676E3D22686143656E7465722220576F7264577261703D2246616C736522
          2056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F636F
          6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672
          784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
          6522204C6566743D223331352C31322220546F703D2235322C32323039342220
          57696474683D2231353022204865696768743D22323222205265737472696374
          696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
          2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
          2220466F6E742E4865696768743D222D31332220466F6E742E4E616D653D2241
          7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
          31352220476170583D22332220476170593D2233222048416C69676E3D226861
          43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
          6E3D22766143656E7465722220546578743D22546F74616C222F3E3C2F636F6C
          756D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C54667278
          4D656D6F5669657720416C6C6F77566563746F724578706F72743D2254727565
          22204C6566743D2231352C31322220546F703D2233302C323230393422205769
          6474683D2231353022204865696768743D22323222205265737472696374696F
          6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
          7465722220546578743D22506167616D656E746F222F3E3C546672784D656D6F
          5669657720416C6C6F77566563746F724578706F72743D225472756522204C65
          66743D223136352C31322220546F703D2233302C323230393422205769647468
          3D2233303022204865696768743D22323222205265737472696374696F6E733D
          22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
          6D652E5479703D2231352220476170583D22332220476170593D223322204841
          6C69676E3D22686143656E746572222056416C69676E3D22766143656E746572
          2220546578743D225469706F20506167616D656E746F222F3E3C546672784D65
          6D6F5669657720416C6C6F77566563746F724578706F72743D22547275652220
          4C6566743D22302220546F703D2230222057696474683D223022204865696768
          743D223022205265737472696374696F6E733D2238222056697369626C653D22
          46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
          4672616D652E5479703D2231352220476170583D22332220476170593D223322
          2048416C69676E3D22686143656E746572222056416C69676E3D22766143656E
          7465722220546578743D22222F3E3C546672784D656D6F5669657720416C6C6F
          77566563746F724578706F72743D225472756522204C6566743D2231352C3132
          2220546F703D2235322C3232303934222057696474683D223135302220486569
          6768743D22323222205265737472696374696F6E733D22382220416C6C6F7745
          787072657373696F6E733D2246616C736522204672616D652E5479703D223135
          2220476170583D22332220476170593D2233222048416C69676E3D2268614365
          6E746572222056416C69676E3D22766143656E7465722220546578743D224449
          41222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C546672
          784D656D6F5669657720416C6C6F77566563746F724578706F72743D22547275
          6522204C6566743D2231352C31322220546F703D2237342C3232303934222057
          696474683D2231353022204865696768743D2232322220526573747269637469
          6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
          22204672616D652E5479703D2231352220476170583D22332220476170593D22
          33222048416C69676E3D22686143656E746572222056416C69676E3D22766143
          656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C726F7774
          6F74616C6D656D6F733E3C546672784D656D6F5669657720416C6C6F77566563
          746F724578706F72743D225472756522204C6566743D2231352C31322220546F
          703D2239362C3232303934222057696474683D2231353022204865696768743D
          22323222205265737472696374696F6E733D22382220416C6C6F774578707265
          7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
          466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313322
          20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231
          22204672616D652E5479703D2231352220476170583D22332220476170593D22
          33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
          2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
          546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E
          6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E
          3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E736F72
          743E3C726F77736F72743E3C6974656D20302F3E3C2F726F77736F72743E3C2F
          63726F73733E}
      end
    end
  end
  object fdqRelPagamentos: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'WITH DATAS AS ('
      #9'SELECT '
      #9#9'DISTINCT '
      #9#9'cast(m.data_hora AS DATE) dia'
      #9'FROM '
      #9#9'MOV_PRODUTO m'
      #9'WHERE '
      
        #9#9'cast(m.data_hora as date) between cast(:datainicio as date) an' +
        'd cast(:datafim as date)'#9
      ')'
      'SELECT'
      #9'D.dia  '
      #9',tp.descricao'
      #9',COALESCE(sum(-1*COALESCE(valor_total,0)),0) total'
      'FROM'
      #9'DATAS D '
      #9'JOIN TIPO_PAGAMENTO TP ON TP.ativo '
      #9'LEFT JOIN MOV_PRODUTO M ON '
      #9#9'CAST(M.data_hora AS DATE) = D.dia  '
      ' '#9#9'AND M.pagamento = TRUE'
      ' '#9#9'AND M.tipo_pagamento = tp.id'
      '    '#9'AND NOT M.excluido '
      'GROUP BY  dia,TP.descricao'
      'ORDER BY dia')
    Left = 528
    Top = 16
    ParamData = <
      item
        Name = 'DATAINICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = 42005d
      end
      item
        Name = 'DATAFIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 54789d
      end>
  end
  object fdsRelPagamentos: TfrxDBDataset
    UserName = 'fdqRelPagamentos'
    CloseDataSource = True
    FieldAliases.Strings = (
      'DIA=DIA'
      'DESCRICAO=DESCRICAO'
      'TOTAL=TOTAL')
    DataSet = fdqRelPagamentos
    BCDToCurrency = True
    DataSetOptions = []
    Left = 544
    Top = 72
  end
  object frxHTMLObject1: TfrxHTMLObject
    Left = 632
    Top = 128
  end
end
