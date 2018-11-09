object frmAnotar: TfrmAnotar
  Left = 0
  Top = 0
  Caption = 'Adicionar'
  ClientHeight = 461
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 695
    Height = 413
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 662
    ExplicitHeight = 320
    DesignSize = (
      695
      413)
    object lbl8: TLabel
      Left = 238
      Top = 13
      Width = 108
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Autorizado por:'
    end
    object lbl5: TLabel
      Left = 18
      Top = 65
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object lbl1: TLabel
      Left = 189
      Top = 82
      Width = 14
      Height = 25
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 222
      Top = 65
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Produto'
    end
    object edtData: TJvDateTimePicker
      Left = 17
      Top = 32
      Width = 128
      Height = 27
      Date = 43385.503391666670000000
      Time = 43385.503391666670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      DropDownDate = 43385.000000000000000000
    end
    object edtHota: TJvDateTimePicker
      Left = 151
      Top = 32
      Width = 81
      Height = 27
      Date = 43385.503391666670000000
      Time = 43385.503391666670000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 5
      DropDownDate = 43385.000000000000000000
    end
    object dbcbbAUTORIZADO: TDBLookupComboBox
      Left = 238
      Top = 32
      Width = 434
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'ID_DEPENDENTES'
      ListField = 'NOME'
      ListSource = dtsDependentes
      ParentFont = False
      TabOrder = 0
    end
    object edtQtd: TJvCalcEdit
      Left = 18
      Top = 84
      Width = 159
      Height = 27
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      MinValue = 0.010000000000000000
      ParentFont = False
      TabOrder = 1
      Value = 1.000000000000000000
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edtQtdKeyPress
    end
    object edtProduto: TEdit
      Left = 222
      Top = 84
      Width = 229
      Height = 27
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edtProdutoKeyPress
    end
    object pnlPesquisa: TPanel
      Left = 17
      Top = 117
      Width = 665
      Height = 290
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      DesignSize = (
        665
        290)
      object dbfdtProduto: TJvDBFindEdit
        Left = 72
        Top = 13
        Width = 329
        Height = 27
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = ''
        DataField = 'NOME'
        DataSource = dtsPesqProduto
        FindStyle = fsFilter
      end
      object dbgPesquisaProduto: TJvDBGrid
        Left = 16
        Top = 46
        Width = 639
        Height = 236
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtsPesqProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgPesquisaProdutoDblClick
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 27
        TitleRowHeight = 17
        BooleanEditor = False
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 378
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNI'
            Title.Caption = 'Valor'
            Width = 121
            Visible = True
          end>
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 413
    Width = 695
    Height = 48
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 320
    ExplicitWidth = 662
    object btnOk: TButton
      Left = 224
      Top = 6
      Width = 75
      Height = 33
      Caption = 'Ok'
      Default = True
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancelar: TButton
      Left = 312
      Top = 6
      Width = 75
      Height = 33
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object fdsp_lancamentos: TFDStoredProc
    ConnectionName = 'Condominio'
    StoredProcName = 'PR_LANCAR_CADERNETA_DIRETO'
    Left = 352
    Top = 16
    ParamData = <
      item
        Position = 1
        Name = 'IN_DTHR_LANCAMENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IN_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'IN_DEPENDENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'IN_DESC_DEPENDENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 150
      end
      item
        Position = 5
        Name = 'IN_TEMPORADA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 6
        Name = 'IN_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 7
        Name = 'IN_QUANT'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 4
        ParamType = ptInput
      end
      item
        Position = 8
        Name = 'IN_VALOR_TOTAL'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 4
        ParamType = ptInput
      end>
  end
  object fdqPesqProduto: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  produtos p'
      'where p.fk_temporada = (select'
      '                          t.id_temporadas'
      '                        from'
      '                          temporadas t'
      '                        where t.ativo) '
      'order by nome')
    Left = 392
    Top = 216
    object fdqPesqProdutoID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPesqProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqPesqProdutoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
    end
    object fdqPesqProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqPesqProdutoVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Required = True
      currency = True
      Precision = 18
    end
  end
  object dtsPesqProduto: TDataSource
    DataSet = fdqPesqProduto
    Left = 432
    Top = 216
  end
  object fdqProduto: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  produtos p'
      'where p.fk_temporada = (select'
      '                          t.id_temporadas'
      '                        from'
      '                          temporadas t'
      '                        where t.ativo) '
      'and p.CODIGO = :codigo')
    Left = 280
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object fdqProdutoID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
    end
    object fdqProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutoVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Required = True
      Precision = 18
    end
  end
  object dtsProduto: TDataSource
    DataSet = fdqProduto
    Left = 320
    Top = 200
  end
  object fdqDependente: TFDQuery
    BeforeOpen = fdqDependenteBeforeOpen
    MasterFields = 'ID_CLIENTE'
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM DEPENDENTES'
      'WHERE '
      'FK_CLIENTE = :ID_CLIENTE'
      'AND '
      'PERMITIR_RETIRAR')
    Left = 416
    Top = 100
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Size = 10
        Value = 0
      end>
    object fdqDependenteID_DEPENDENTES: TLargeintField
      FieldName = 'ID_DEPENDENTES'
      Origin = 'ID_DEPENDENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqDependenteCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqDependenteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqDependenteFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqDependenteFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 150
    end
    object fdqDependenteOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object fdqDependentePERMITIR_RETIRAR: TBooleanField
      FieldName = 'PERMITIR_RETIRAR'
      Origin = 'PERMITIR_RETIRAR'
      Required = True
    end
  end
  object dtsDependentes: TDataSource
    DataSet = fdqDependente
    Left = 464
    Top = 100
  end
  object fdqTotais: TFDQuery
    BeforeOpen = fdqTotaisBeforeOpen
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      '  cc.fk_temporada ,'
      '  cc.fk_cliente ,  '
      '  c.permitir_saldo_negativo,'
      '  sum(iif(NOT mv.PAGAMENTO,mv.VALOR_TOTAL,0)) valor_gasto,  '
      '  sum(iif(mv.PAGAMENTO,mv.VALOR_TOTAL,0)*-1) valor_pago  ,'
      '  SUM(mv.valor_total) Saldo'
      'FROM'
      '  caderneta_cliente cc'
      '  join cliente  c'
      '    on   c.id_cliente = cc.fk_cliente'
      '  JOIN mov_produto mv ON'
      '    cc.id_caderneta = mv.fk_caderneta'
      '  LEFT JOIN produtos pr ON'
      '    pr.id_rodutos = mv.fk_produto'
      '  LEFT JOIN pedido ped ON'
      '    ped.id_pedido = mv.fk_pedido'
      'WHERE'
      '  cc.FK_CLIENTE =:id_cliente'
      '  AND cc.FK_TEMPORADA = :id_temporada'
      'GROUP BY fk_temporada,FK_CLIENTE,permitir_saldo_negativo')
    Left = 224
    Top = 232
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 26
      end
      item
        Name = 'ID_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 10
      end>
    object fdqTotaisFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqTotaisFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqTotaisVALOR_GASTO: TBCDField
      FieldName = 'VALOR_GASTO'
      Origin = 'VALOR_GASTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqTotaisVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqTotaisSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqTotaisPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
  end
end
