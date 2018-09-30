object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Condominio'
  ClientHeight = 742
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pgcMain: TJvPageControl
    Left = 0
    Top = 0
    Width = 1126
    Height = 742
    ActivePage = tsClientes
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tsMesas: TTabSheet
      Caption = '&Mesas'
      OnShow = tsMesasShow
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          1114
          61)
        object btnAbrirMesa: TButton
          Left = 16
          Top = 8
          Width = 121
          Height = 41
          Caption = '&Gerenciar Mesa(F2)'
          TabOrder = 0
          OnClick = btnAbrirMesaClick
        end
        object btn2: TButton
          Left = 143
          Top = 8
          Width = 114
          Height = 41
          Caption = '&Fechar Mesa(F4)'
          TabOrder = 1
          OnClick = btn2Click
        end
        object btnNovaMesa: TButton
          Left = 671
          Top = 8
          Width = 105
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'Cadastrar Mesas'
          TabOrder = 2
          OnClick = btnNovaMesaClick
        end
        object btn4: TButton
          Left = 263
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Cancelar Mesa'
          TabOrder = 3
          OnClick = btn4Click
        end
        object btn1: TButton
          Left = 782
          Top = 8
          Width = 105
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'Editar Mesas'
          TabOrder = 4
          OnClick = btn1Click
        end
        object chkMesasAtivas: TCheckBox
          Left = 893
          Top = 20
          Width = 97
          Height = 17
          Anchors = [akTop, akRight]
          Caption = '&S'#243' mesas ativas'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = chkMesasAtivasClick
        end
      end
      object dbgrdMesas: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 646
        Align = alClient
        DataSource = dtsmesas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgrdMesasDblClick
        OnTitleClick = dbgrdMesasTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o Mesa'
            Width = 233
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTHR_ABERTURA'
            Title.Caption = 'Aberto Desde'
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 217
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'A pagar'
            Width = 161
            Visible = True
          end>
      end
    end
    object tsClientes: TTabSheet
      Caption = '&Clientes'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        TabOrder = 0
        object btnAddCliente: TButton
          Left = 16
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Incluir Cliente'
          TabOrder = 0
          OnClick = btnAddClienteClick
        end
        object btnAlterCliente: TButton
          Left = 127
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Alterar Cliente'
          TabOrder = 1
          OnClick = btnAlterClienteClick
        end
        object btnCaderneta: TButton
          Left = 238
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Conta(F3)'
          TabOrder = 2
          OnClick = btnCadernetaClick
        end
      end
      object dbgrdClientes: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 646
        Align = alClient
        DataSource = dtsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Caption = 'Endere'#231'o'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTATO'
            Title.Caption = 'Contato'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Caption = 'Ativo'
            Visible = True
          end>
      end
    end
    object tsProdutos: TTabSheet
      Caption = '&Produtos'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        TabOrder = 0
        object btnAddProduto: TButton
          Left = 16
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Adicionar'
          TabOrder = 0
          OnClick = btnAddProdutoClick
        end
        object btnEdtProduto: TButton
          Left = 127
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Editar'
          TabOrder = 1
          OnClick = btnEdtProdutoClick
        end
        object btnDelProduto: TButton
          Left = 238
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btnDelProdutoClick
        end
        object btnEditProdutoGrd: TButton
          Left = 680
          Top = 8
          Width = 121
          Height = 41
          Caption = 'Editar na Grade'
          TabOrder = 3
          OnClick = btnEditProdutoGrdClick
        end
      end
      object dbgProdutos: TJvDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 646
        Align = alClient
        DataSource = dtsprodutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbgProdutosTitleClick
        SortMarker = smUp
        TitleButtons = True
        SortedField = 'NOME'
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 23
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_RODUTOS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FK_TEMPORADA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 396
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNI'
            Visible = True
          end>
      end
    end
    object tsEntradasSaidas: TTabSheet
      Caption = '&Entradas/Saidas'
      ImageIndex = 4
      object pnl1: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        TabOrder = 0
        object btn3: TButton
          Left = 16
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Adicionar(F9)'
          TabOrder = 0
          OnClick = btn3Click
        end
        object btn5: TButton
          Left = 127
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Editar'
          TabOrder = 1
          OnClick = btn5Click
        end
        object btn6: TButton
          Left = 238
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btn6Click
        end
      end
      object dbg1: TJvDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 646
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = dbgProdutosTitleClick
        SortMarker = smUp
        TitleButtons = True
        SortedField = 'NOME'
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 23
        TitleRowHeight = 17
        BooleanEditor = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Config/&Relat'#243'rios'
      ImageIndex = 3
      object btnNovaTemporada: TButton
        Left = 814
        Top = 8
        Width = 105
        Height = 41
        Caption = 'Nova Temporada'
        TabOrder = 0
        OnClick = btnNovaTemporadaClick
      end
      object grp3: TGroupBox
        Left = 16
        Top = 16
        Width = 137
        Height = 105
        Caption = 'Pagamentos'
        TabOrder = 1
        object btnRelatorioPg: TButton
          Left = 31
          Top = 48
          Width = 75
          Height = 25
          Caption = 'Gerar'
          TabOrder = 0
          OnClick = btnRelatorioPgClick
        end
      end
    end
  end
  object fdqMesas: TFDQuery
    BeforeOpen = fdqMesasBeforeOpen
    Connection = dtmcon.conexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select '
      ' *'
      'from '
      '  MESA_PEDIDO m'
      'where'
      '  ((m.ativa) or ( not Cast(:soativas as Boolean)))'
      '  or m.ativa is null')
    Left = 108
    Top = 176
    ParamData = <
      item
        Name = 'SOATIVAS'
        DataType = ftBoolean
        ParamType = ptInput
        Value = False
      end>
    object fdqMesasID_MESA: TLargeintField
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqMesasCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqMesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqMesasID_PEDIDO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqMesasDTHR_ABERTURA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTHR_ABERTURA'
      Origin = 'DTHR_ABERTURA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqMesasNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqMesasCOD_CLIENTE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLIENTE'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqMesasTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqMesasATIVA: TBooleanField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
    end
    object fdqMesasFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqMesasDTHR_FEXAMENTO: TSQLTimeStampField
      FieldName = 'DTHR_FEXAMENTO'
      Origin = 'DTHR_FEXAMENTO'
    end
    object fdqMesasFK_DEPENDENTE: TLargeintField
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
    end
    object fdqMesasDESCONTO: TBooleanField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object fdqMesasVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqMesasPAGO: TBooleanField
      FieldName = 'PAGO'
      Origin = 'PAGO'
    end
    object fdqMesasNOME_DEPENDENTE: TStringField
      FieldName = 'NOME_DEPENDENTE'
      Origin = 'NOME_DEPENDENTE'
      Size = 150
    end
    object fdqMesasANOTAR: TBooleanField
      FieldName = 'ANOTAR'
      Origin = 'ANOTAR'
    end
    object fdqMesasID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
  end
  object dtsmesas: TDataSource
    DataSet = fdqMesas
    Left = 148
    Top = 176
  end
  object fdqProdutos: TFDQuery
    AfterInsert = fdqProdutosAfterInsert
    BeforePost = fdqProdutosBeforePost
    Connection = dtmcon.conexao
    OnError = fdqProdutosError
    SQL.Strings = (
      'select'
      '  p.id_rodutos,'
      '  p.codigo,'
      '  p.fk_temporada,'
      '  p.nome,'
      '  p.valor_uni'
      'from'
      '  produtos p'
      '  join temporadas t'
      '    on t.id_temporadas = p.fk_temporada'
      'where'
      '  t.ativo   ')
    Left = 268
    Top = 192
    object fdqProdutosID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object fdqProdutosFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
      Visible = False
    end
    object fdqProdutosCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutosNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutosVALOR_UNI: TBCDField
      DisplayLabel = 'R$'
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Required = True
      DisplayFormat = '0.,00'
      Precision = 18
    end
  end
  object dtsprodutos: TDataSource
    DataSet = fdqProdutos
    Left = 292
    Top = 192
  end
  object fdqConfiguracoes: TFDQuery
    Connection = dtmcon.conexao
    FormatOptions.AssignedValues = [fvDefaultParamDataType]
    FormatOptions.DefaultParamDataType = ftLargeint
    SQL.Strings = (
      'select'
      '  t.id_temporadas,'
      '  t.cod_temp,'
      '  t.periodo_inicial,'
      '  t.periodo_final,'
      '  t.descricao,'
      '  t.ativo,'
      '  exists('
      '      select'
      '        1'
      '      from'
      '        pedido p'
      '      where'
      '        p.fk_temporada = t.id_temporadas'
      '  ) tem_movimentacao'
      'from'
      '  temporadas t'
      'where t.ativo   ')
    Left = 492
    Top = 184
    object fdqConfiguracoesID_TEMPORADAS: TLargeintField
      FieldName = 'ID_TEMPORADAS'
      Origin = 'ID_TEMPORADAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqConfiguracoesCOD_TEMP: TSmallintField
      FieldName = 'COD_TEMP'
      Origin = 'COD_TEMP'
      Required = True
    end
    object fdqConfiguracoesPERIODO_INICIAL: TDateField
      FieldName = 'PERIODO_INICIAL'
      Origin = 'PERIODO_INICIAL'
      Required = True
    end
    object fdqConfiguracoesPERIODO_FINAL: TDateField
      FieldName = 'PERIODO_FINAL'
      Origin = 'PERIODO_FINAL'
    end
    object fdqConfiguracoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqConfiguracoesATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
    object fdqConfiguracoesTEM_MOVIMENTACAO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'TEM_MOVIMENTACAO'
      Origin = 'TEM_MOVIMENTACAO'
      ProviderFlags = []
    end
  end
  object dtsConfiguracoes: TDataSource
    DataSet = fdqConfiguracoes
    Left = 516
    Top = 184
  end
  object bdsdb1: TBindSourceDB
    DataSet = fdqConfiguracoes
    ScopeMappings = <>
    Left = 560
    Top = 376
  end
  object bdl1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 60
    Top = 189
    object lpfVisible: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = bdsdb1
      FieldName = 'TEM_MOVIMENTACAO'
      Component = btnEditProdutoGrd
      CustomFormat = 'IfThen(%s='#39'False'#39', True,False)'
      ComponentProperty = 'Visible'
    end
  end
  object fdqClientes: TFDQuery
    AfterInsert = fdqProdutosAfterInsert
    BeforePost = fdqProdutosBeforePost
    Connection = dtmcon.conexao
    OnError = fdqProdutosError
    SQL.Strings = (
      'select'
      '  id_cliente,'
      '  codigo,'
      '  nome,'
      '  endereco,'
      '  contato,'
      '  iif(ativo,'#39'Sim'#39','#39'N'#227'o'#39') ativo'
      'from'
      '  cliente')
    Left = 172
    Top = 288
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
    object fdqClientesATIVO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
  end
  object dtsClientes: TDataSource
    DataSet = fdqClientes
    Left = 196
    Top = 288
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
    Left = 732
    Top = 107
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
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cheque')
        end
        object Memo5: TfrxMemoView
          Left = 434.645950000000000000
          Top = 52.913420000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Cart'#227'o')
        end
        object Memo6: TfrxMemoView
          Left = 600.945270000000000000
          Top = 52.913420000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'Total')
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
          Left = 257.008040000000000000
          Width = 120.944960000000000000
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
          Left = 408.189240000000000000
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
            '[frxDBPagamnetos."CARTAO"]')
        end
        object Memo9: TfrxMemoView
          Left = 566.929500000000000000
          Width = 147.401670000000000000
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
              'Pagamnetos."CARTAO">)]')
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
          Left = 257.008040000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
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
          Left = 408.189240000000000000
          Top = 15.118120000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBPagamnetos."CARTAO">,MasterData1)]')
        end
        object Memo14: TfrxMemoView
          Left = 566.929500000000000000
          Top = 15.118120000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBPagamnetos."CHEQUE">+<frxDBPagamnetos."DINHEIRO">+<fr' +
              'xDBPagamnetos."CARTAO">,MasterData1)]')
        end
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
    Left = 508
    Top = 291
  end
  object fdsRelPagamentos: TfrxDBDataset
    UserName = 'frxDBPagamnetos'
    CloseDataSource = True
    DataSet = fdqRelPagamentos
    BCDToCurrency = True
    Left = 764
    Top = 107
  end
  object fdqRelPagamentos: TFDQuery
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT'
      #9'cast(m.DATA_HORA AS DATE) dia,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 1,-1,0 )*VALOR_TOTAL) Anotar,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 3,-1,0 )*VALOR_TOTAL) Cheque,'#9
      #9'sum(iif(m.TIPO_PAGAMENTO = 4,-1,0 )*VALOR_TOTAL) Dinheiro,'
      #9'sum(iif(m.TIPO_PAGAMENTO = 6,-1,0 )*VALOR_TOTAL) Cartao'
      'FROM'
      #9'MOV_PRODUTO m'
      'WHERE'
      ' '#9'm.PAGAMENTO = TRUE'
      'GROUP BY  dia'
      'ORDER BY dia')
    Left = 764
    Top = 155
  end
  object actlst1: TActionList
    Left = 324
    Top = 131
    object actGerenciaMesa: TAction
      Category = 'Mesa'
      Caption = 'actGerenciaMesa'
      ShortCut = 113
      OnExecute = btnAbrirMesaClick
    end
    object actFecharMesa: TAction
      Category = 'Mesa'
      Caption = 'actFecharMesa'
      ShortCut = 115
    end
    object actConta: TAction
      Category = 'Cliente'
      Caption = 'actConta'
      ShortCut = 114
      OnExecute = btnCadernetaClick
    end
    object actAdicionarEntrada: TAction
      Category = 'Entradas'
      Caption = 'actAdicionarEntrada'
      ShortCut = 120
    end
  end
end
