object frmPagamento: TfrmPagamento
  Left = 0
  Top = 0
  Caption = 'Pagamento'
  ClientHeight = 305
  ClientWidth = 451
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 16
  object pgc1: TJvPageControl
    Left = 0
    Top = 0
    Width = 451
    Height = 305
    ActivePage = tsPagamento
    Align = alClient
    OwnerDraw = True
    Style = tsFlatButtons
    TabOrder = 0
    TabStop = False
    object tsPagamento: TTabSheet
      TabVisible = False
      OnShow = tsPagamentoShow
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 247
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          443
          247)
        object lbl2: TLabel
          Left = 114
          Top = 8
          Width = 63
          Height = 16
          Caption = 'Valor Total'
        end
        object lbl1: TLabel
          Left = 114
          Top = 69
          Width = 93
          Height = 16
          Caption = 'Tipo Pagamento'
        end
        object lbl3: TLabel
          Left = 114
          Top = 177
          Width = 62
          Height = 16
          Caption = 'Valor Pago'
        end
        object edtPago: TJvCalcEdit
          Left = 114
          Top = 199
          Width = 223
          Height = 31
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          DecimalPlacesAlwaysShown = True
          OnKeyPress = edtPagoKeyPress
        end
        object pnl3: TPanel
          Left = 0
          Top = 27
          Width = 451
          Height = 49
          Anchors = [akLeft, akTop, akRight]
          BevelOuter = bvNone
          Enabled = False
          TabOrder = 0
          object edtTotal: TJvCalcEdit
            Left = 114
            Top = 3
            Width = 223
            Height = 33
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = True
          end
        end
        object dblklstTpPagto: TDBLookupListBox
          Left = 114
          Top = 91
          Width = 223
          Height = 84
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = dtspag
          TabOrder = 1
        end
      end
      object pnl1: TPanel
        Left = 0
        Top = 247
        Width = 443
        Height = 48
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        object btnOk: TButton
          Left = 160
          Top = 9
          Width = 75
          Height = 33
          Caption = 'Ok'
          TabOrder = 0
          OnClick = btnOkClick
        end
        object btnCancelar: TButton
          Left = 248
          Top = 9
          Width = 75
          Height = 33
          Cancel = True
          Caption = 'Cancelar'
          ModalResult = 2
          TabOrder = 1
        end
      end
    end
    object tsAnotar: TTabSheet
      ImageIndex = 1
      TabVisible = False
      OnShow = tsAnotarShow
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 443
        Height = 247
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object lbl4: TLabel
          Left = 49
          Top = 35
          Width = 63
          Height = 16
          Caption = 'Valor Total'
        end
        object lbl5: TLabel
          Left = 49
          Top = 93
          Width = 39
          Height = 16
          Caption = 'Cliente'
        end
        object edtTotalAnotar: TJvCalcEdit
          Left = 49
          Top = 57
          Width = 333
          Height = 33
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = True
        end
        object dbcbbNomeDependente: TDBLookupComboBox
          Left = 49
          Top = 166
          Width = 333
          Height = 27
          DataField = 'FK_DEPENDENTE'
          DataSource = dtsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_DEPENDENTES'
          ListField = 'NOME'
          ListSource = dtsDependentes
          ParentFont = False
          TabOrder = 3
        end
        object edtCodigoCliente: TEdit
          Left = 49
          Top = 112
          Width = 57
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          OnExit = edtCodigoClienteExit
        end
        object dbcbbCliente: TDBLookupComboBox
          Left = 110
          Top = 112
          Width = 272
          Height = 27
          DataField = 'ID_CLIENTE'
          DataSource = dtsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          KeyField = 'ID_CLIENTE'
          ListField = 'CODIGO;NOME'
          ListFieldIndex = 1
          ListSource = dtsClientes
          ParentFont = False
          TabOrder = 2
          OnClick = dbcbbClienteExit
          OnExit = dbcbbClienteExit
        end
      end
      object pnl5: TPanel
        Left = 0
        Top = 247
        Width = 443
        Height = 48
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        object btnokAnota: TButton
          Left = 160
          Top = 9
          Width = 75
          Height = 33
          Caption = 'Ok'
          TabOrder = 0
          OnClick = btnokAnotaClick
        end
        object btnCancelarAnotar: TButton
          Left = 248
          Top = 9
          Width = 75
          Height = 33
          Cancel = True
          Caption = 'Cancelar'
          ModalResult = 2
          TabOrder = 1
        end
      end
    end
    object tsModoFechamento: TTabSheet
      ImageIndex = 2
      TabVisible = False
      object btnAnotar: TBitBtn
        Left = 56
        Top = 104
        Width = 137
        Height = 89
        Caption = '&Anotar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        OnClick = btnAnotarClick
      end
      object btnPagar: TBitBtn
        Left = 232
        Top = 104
        Width = 137
        Height = 89
        Caption = '&Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
        OnClick = btnPagarClick
      end
    end
  end
  object dtspag: TDataSource
    AutoEdit = False
    DataSet = fdqTipoPag
    Left = 392
    Top = 64
  end
  object fdqTipoPag: TFDQuery
    AutoCalcFields = False
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM TIPO_PAGAMENTO'
      'WHERE ATIVO'
      'order by ID')
    Left = 368
    Top = 64
    object fdqTipoPagID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqTipoPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
    end
    object fdqTipoPagATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object fdqDependentes: TFDQuery
    AutoCalcFields = False
    MasterSource = dtsClientes
    MasterFields = 'ID_CLIENTE'
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM DEPENDENTES'
      'WHERE '
      'FK_CLIENTE = :ID_CLIENTE'
      'AND '
      'PERMITIR_RETIRAR = TRUE')
    Left = 368
    Top = 128
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object fdqDependentesID_DEPENDENTES: TLargeintField
      FieldName = 'ID_DEPENDENTES'
      Origin = 'ID_DEPENDENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqDependentesCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqDependentesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqDependentesFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqDependentesFONE: TStringField
      FieldName = 'FONE'
      Origin = 'FONE'
      Size = 150
    end
    object fdqDependentesOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object fdqDependentesPERMITIR_RETIRAR: TBooleanField
      FieldName = 'PERMITIR_RETIRAR'
      Origin = 'PERMITIR_RETIRAR'
      Required = True
    end
  end
  object dtsDependentes: TDataSource
    AutoEdit = False
    DataSet = fdqDependentes
    Left = 392
    Top = 128
  end
  object fdqPedido: TFDQuery
    AutoCalcFields = False
    Connection = dtmcon.conexao
    UpdateOptions.AssignedValues = [uvEDelete, uvCountUpdatedRecords, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable]
    UpdateOptions.EnableDelete = False
    UpdateOptions.CountUpdatedRecords = False
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.CheckUpdatable = False
    UpdateOptions.KeyFields = 'ID_PEDIDO'
    SQL.Strings = (
      'SELECT'
      #9'ID_MESA,'
      #9'CODIGO,'
      #9'DESCRICAO,'
      #9'ATIVA,'
      #9'ID_PEDIDO,'
      #9'FK_TEMPORADA,'
      #9'DTHR_ABERTURA,'
      #9'DTHR_FEXAMENTO,'
      #9'FK_DEPENDENTE,'
      #9'DESCONTO,'
      #9'VALOR_DESCONTO,'
      #9'PAGO,'
      #9'NOME_DEPENDENTE,'
      #9'ANOTAR,'
      #9'NOME,'
      #9'COD_CLIENTE,'
      #9'ID_CLIENTE,'
      #9'TP_PAGAMENTO,'
      #9'TOTAL'
      'FROM'
      #9'MESA_PEDIDO'
      'WHERE '
      ' '#9'ID_PEDIDO = :ID_PEDIDO')
    Left = 224
    Top = 168
    ParamData = <
      item
        Name = 'ID_PEDIDO'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object fdqPedidoID_MESA: TLargeintField
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
    end
    object fdqPedidoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object fdqPedidoATIVA: TBooleanField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoID_PEDIDO: TLargeintField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
    end
    object fdqPedidoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoDTHR_ABERTURA: TSQLTimeStampField
      FieldName = 'DTHR_ABERTURA'
      Origin = 'DTHR_ABERTURA'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoDTHR_FEXAMENTO: TSQLTimeStampField
      FieldName = 'DTHR_FEXAMENTO'
      Origin = 'DTHR_FEXAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoFK_DEPENDENTE: TLargeintField
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoDESCONTO: TBooleanField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object fdqPedidoPAGO: TBooleanField
      FieldName = 'PAGO'
      Origin = 'PAGO'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoNOME_DEPENDENTE: TStringField
      FieldName = 'NOME_DEPENDENTE'
      Origin = 'NOME_DEPENDENTE'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object fdqPedidoANOTAR: TBooleanField
      FieldName = 'ANOTAR'
      Origin = 'ANOTAR'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object fdqPedidoCOD_CLIENTE: TLargeintField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoTP_PAGAMENTO: TIntegerField
      FieldName = 'TP_PAGAMENTO'
      Origin = 'TP_PAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object dtsPedido: TDataSource
    AutoEdit = False
    DataSet = fdqPedido
    Left = 248
    Top = 168
  end
  object fdqClientes: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  cliente')
    Left = 344
    Top = 200
    object fdqClientesID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqClientesCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object fdqClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 150
    end
    object fdqClientesOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object fdqClientesPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
    object fdqClientesATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object dtsClientes: TDataSource
    DataSet = fdqClientes
    Left = 392
    Top = 200
  end
  object fdqCaderneta: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'Select * '
      'from'
      'CADERNETA_CLIENTE'
      'where '
      ' id_caderneta is null')
    Left = 220
    Top = 22
    object fdqCadernetaID_CADERNETA: TLargeintField
      FieldName = 'ID_CADERNETA'
      Origin = 'ID_CADERNETA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqCadernetaDTHR_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DTHR_LANCAMENTO'
      Origin = 'DTHR_LANCAMENTO'
      Required = True
    end
    object fdqCadernetaFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqCadernetaFK_DEPENDENTE: TLargeintField
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
      Required = True
    end
    object fdqCadernetaFK_PEDIDO: TLargeintField
      FieldName = 'FK_PEDIDO'
      Origin = 'FK_PEDIDO'
    end
  end
  object fdqMovProduto: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  id_mov_produto,'
      '  fk_pedido,'
      '  quantidade,'
      '  pagamento,'
      '  valor_total,'
      '  TIPO_PAGAMENTO'
      'from'
      '  mov_produto mp'
      'where'
      '  mp.fk_pedido = -1')
    Left = 100
    Top = 214
    object fdqMovProdutoID_MOV_PRODUTO: TLargeintField
      FieldName = 'ID_MOV_PRODUTO'
      Origin = 'ID_MOV_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqMovProdutoFK_PEDIDO: TLargeintField
      FieldName = 'FK_PEDIDO'
      Origin = 'FK_PEDIDO'
    end
    object fdqMovProdutoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
    end
    object fdqMovProdutoPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Required = True
    end
    object fdqMovProdutoVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqMovProdutoTIPO_PAGAMENTO: TIntegerField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
    end
  end
  object fdspPagar: TFDStoredProc
    ConnectionName = 'Condominio'
    StoredProcName = 'PR_FECHAR_PAGAR'
    Left = 132
    Top = 22
    ParamData = <
      item
        Position = 3
        Name = 'IN_PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IN_TP_PAGAMENTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 1
        Name = 'IN_VALOR'
        DataType = ftFMTBcd
        FDDataType = dtCurrency
        Precision = 15
        NumericScale = 2
        ParamType = ptInput
      end>
  end
  object fdspAnotar: TFDStoredProc
    ConnectionName = 'Condominio'
    StoredProcName = 'PR_FECHAR_ANOTAR'
    Left = 52
    Top = 70
    ParamData = <
      item
        Position = 1
        Name = 'IN_PEDIDO'
        DataType = ftInteger
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
        FDDataType = dtWideString
        ParamType = ptInput
        Size = 150
        Value = '0'
      end>
  end
  object fdqTotais: TFDQuery
    BeforeOpen = fdqTotaisBeforeOpen
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      '  cc.fk_temporada ,'
      '  c.id_cliente ,'
      '  c.permitir_saldo_negativo,'
      '  sum(iif(NOT mv.PAGAMENTO,mv.VALOR_TOTAL,0)) valor_gasto,  '
      '  sum(iif(mv.PAGAMENTO,mv.VALOR_TOTAL,0)*-1) valor_pago  ,'
      '  SUM(mv.valor_total) Saldo'
      'FROM'
      '  cliente  c '
      '  left join caderneta_cliente cc'
      
        '    on   c.id_cliente = cc.fk_cliente  AND cc.FK_TEMPORADA = (se' +
        'lect'
      '                          t.id_temporadas'
      '                        from'
      '                          temporadas t'
      '                        where t.ativo)'
      '  left JOIN mov_produto mv ON'
      '    cc.id_caderneta = mv.fk_caderneta'
      '  LEFT JOIN produtos pr ON'
      '    pr.id_rodutos = mv.fk_produto'
      '  LEFT JOIN pedido ped ON'
      '    ped.id_pedido = mv.fk_pedido'
      'WHERE'
      '  c.id_cliente=:id_cliente'
      'GROUP BY fk_temporada,c.id_cliente,permitir_saldo_negativo'
      '')
    Left = 24
    Top = 168
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 46
      end>
    object fdqTotaisFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqTotaisID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqTotaisPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
    object fdqTotaisVALOR_GASTO: TBCDField
      FieldName = 'VALOR_GASTO'
      Origin = 'VALOR_GASTO'
      Precision = 18
      Size = 2
    end
    object fdqTotaisVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 18
      Size = 2
    end
    object fdqTotaisSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
  object dts1: TDataSource
    DataSet = fdqTotais
    Left = 60
    Top = 166
  end
end
