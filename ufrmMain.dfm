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
    ActivePage = TabSheet4
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ReduceMemoryUse = True
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
          Left = 619
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
          Left = 730
          Top = 8
          Width = 105
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'Editar Mesas'
          TabOrder = 4
          OnClick = btn1Click
        end
        object chkMesasAtivas: TCheckBox
          Left = 841
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
        Font.Height = -21
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
        Font.Height = -21
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
          Visible = False
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
        Font.Height = -21
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
        RowsHeight = 29
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
            Width = 66
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
        object btnAddES: TButton
          Left = 16
          Top = 8
          Width = 101
          Height = 41
          Caption = 'Adicionar(F9)'
          TabOrder = 0
          OnClick = btnAddESClick
        end
        object btnEditES: TButton
          Left = 127
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Editar'
          TabOrder = 1
          Visible = False
          OnClick = btnEditESClick
        end
        object btnDelES: TButton
          Left = 238
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Excluir'
          TabOrder = 2
          Visible = False
          OnClick = btnDelESClick
        end
      end
      object dbgEntradasSaidas: TJvDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 646
        Align = alClient
        DataSource = dtsEntradasSaidas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
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
        AutoSizeColumns = True
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 29
        TitleRowHeight = 17
        BooleanEditor = False
        Columns = <
          item
            Expanded = False
            FieldName = 'DATA_HORA'
            Width = 187
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Width = 584
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Width = 208
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Config/&Relat'#243'rios'
      ImageIndex = 3
      OnShow = TabSheet4Show
      object spl1: TSplitter
        Left = 541
        Top = 0
        Height = 711
        Align = alRight
        Beveled = True
        ExplicitLeft = 0
        ExplicitTop = 200
        ExplicitHeight = 100
      end
      object pnl2: TPanel
        Left = 544
        Top = 0
        Width = 574
        Height = 711
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 0
        object grp6: TGroupBox
          Left = 61
          Top = 84
          Width = 156
          Height = 105
          Caption = 'Temporadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          object btnNovaTemporada: TButton
            Left = 16
            Top = 31
            Width = 89
            Height = 41
            Caption = 'Nova'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnNovaTemporadaClick
          end
        end
        object grp3: TGroupBox
          Left = 301
          Top = 84
          Width = 156
          Height = 89
          Caption = 'Usu'#225'rios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          object btnNovoUsuario: TButton
            Left = 32
            Top = 31
            Width = 105
            Height = 41
            Caption = 'Cadastrar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = btnNovoUsuarioClick
          end
        end
        object pnl4: TPanel
          Left = 0
          Top = 0
          Width = 574
          Height = 41
          Align = alTop
          Caption = 'Configura'#231#245'es'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
      end
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 541
        Height = 711
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object grp1: TGroupBox
          AlignWithMargins = True
          Left = 24
          Top = 64
          Width = 390
          Height = 169
          Hint = 'Gera relatorio de vendas conforme configurado'
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Caption = 'Vendas'
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object lbl3: TLabel
            Left = 15
            Top = 36
            Width = 33
            Height = 23
            Caption = 'De :'
          end
          object lbl4: TLabel
            Left = 199
            Top = 36
            Width = 40
            Height = 23
            Caption = 'Ate :'
          end
          object Edt_movimento_datai1: TJvDateEdit
            Left = 53
            Top = 33
            Width = 131
            Height = 26
            Hint = 'selecione uma data inicial do relatorio'
            MinDate = 40247.000000000000000000
            DefaultToday = True
            DialogTitle = 'Selecione uma Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowNullDate = False
            StartOfWeek = Sun
            TabOrder = 0
          end
          object Edt_movimento_dataf1: TJvDateEdit
            Left = 245
            Top = 33
            Width = 131
            Height = 26
            Hint = 'selecione data final do relatorio'
            MinDate = 40247.000000000000000000
            DefaultToday = True
            DialogTitle = 'Selecione uma Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowNullDate = False
            StartOfWeek = Sun
            TabOrder = 1
          end
          object btn_relVendas: TButton
            Left = 136
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Gerar'
            TabOrder = 2
            OnClick = btn_relVendasClick
          end
          object rgTipoRelVendas: TJvRadioGroup
            Left = 3
            Top = 59
            Width = 388
            Height = 43
            Hint = 
              'PEDIDOS: Gera relatorio das vendas conforme a mesa/pedido.'#13#10'PROD' +
              'UTO: Gera relatorio da quantidade de produtos vendidos.'
            Columns = 3
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              'Pedido'
              'Produto')
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            CaptionVisible = False
            EdgeBorders = []
            EdgeInner = esNone
            EdgeOuter = esNone
          end
        end
        object grp2: TGroupBox
          Left = 194
          Top = 379
          Width = 238
          Height = 118
          Caption = 'Debitos Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Black'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object btnDebitosClientes: TButton
            Left = 80
            Top = 72
            Width = 75
            Height = 25
            Caption = 'Gerar'
            TabOrder = 0
            OnClick = btnDebitosClientesClick
          end
          object rdgCliente: TJvRadioGroup
            Left = 3
            Top = 23
            Width = 235
            Height = 43
            Hint = 
              'PEDIDOS: Gera relatorio das vendas conforme a mesa/pedido.'#13#10'PROD' +
              'UTO: Gera relatorio da quantidade de produtos vendidos.'
            Caption = 'Tipo'
            Columns = 2
            Ctl3D = False
            ItemIndex = 0
            Items.Strings = (
              'Diario'
              'Detalhado')
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            CaptionVisible = False
            EdgeBorders = []
            EdgeInner = esNone
            EdgeOuter = esNone
          end
        end
        object grp5: TGroupBox
          Left = 16
          Top = 379
          Width = 172
          Height = 118
          Caption = 'Devedores'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          object btnDevedores: TButton
            Left = 52
            Top = 54
            Width = 75
            Height = 25
            Caption = 'gerar'
            TabOrder = 0
          end
        end
        object grp4: TGroupBox
          Left = 16
          Top = 236
          Width = 393
          Height = 137
          Caption = 'Pagamentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          object lbl1: TLabel
            Left = 15
            Top = 36
            Width = 26
            Height = 16
            Caption = 'De :'
          end
          object lbl2: TLabel
            Left = 199
            Top = 36
            Width = 33
            Height = 16
            Caption = 'Ate :'
          end
          object Edt_pg_datai1: TJvDateEdit
            Left = 53
            Top = 33
            Width = 131
            Height = 26
            Hint = 'selecione uma data inicial do relatorio'
            MinDate = 40247.000000000000000000
            DefaultToday = True
            DialogTitle = 'Selecione uma Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowNullDate = False
            StartOfWeek = Sun
            TabOrder = 0
          end
          object Edt_pg_dataf1: TJvDateEdit
            Left = 245
            Top = 33
            Width = 131
            Height = 26
            Hint = 'selecione data final do relatorio'
            MinDate = 40247.000000000000000000
            DefaultToday = True
            DialogTitle = 'Selecione uma Data'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            ShowNullDate = False
            StartOfWeek = Sun
            TabOrder = 1
          end
          object btnRelPagmnto: TButton
            Left = 135
            Top = 88
            Width = 75
            Height = 25
            Caption = 'Gerar'
            TabOrder = 2
            OnClick = btnRelatorioPgClick
          end
        end
        object pnl5: TPanel
          Left = 0
          Top = 0
          Width = 541
          Height = 41
          Align = alTop
          Caption = 'Relat'#243'rios'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          ExplicitWidth = 540
        end
      end
    end
  end
  object fdqMesas: TFDQuery
    BeforeOpen = fdqMesasBeforeOpen
    ConnectionName = 'Condominio'
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
    ConnectionName = 'Condominio'
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
    ConnectionName = 'Condominio'
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
    ConnectionName = 'Condominio'
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
    Left = 292
    Top = 296
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
    Left = 316
    Top = 296
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
  object fdqEntradasSaidas: TFDQuery
    ConnectionName = 'Condominio'
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate, uvUpdateChngFields]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    UpdateOptions.UpdateChangedFields = False
    SQL.Strings = (
      'select'
      '*'
      'from'
      'ENTRADA_SAIDA'
      'where'
      'not excluido')
    Left = 172
    Top = 259
    object fdqEntradasSaidasID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqEntradasSaidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqEntradasSaidasVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      DisplayFormat = '0.,00'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqEntradasSaidasTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      OnGetText = fdqEntradasSaidasTIPOGetText
    end
    object fdqEntradasSaidasDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object fdqEntradasSaidasEXCLUIDO: TBooleanField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
      Required = True
    end
    object fdqEntradasSaidasUSER_DEL: TStringField
      FieldName = 'USER_DEL'
      Origin = 'USER_DEL'
      Size = 150
    end
    object fdqEntradasSaidasDATA_HORA_EXC: TSQLTimeStampField
      FieldName = 'DATA_HORA_EXC'
      Origin = 'DATA_HORA_EXC'
    end
  end
  object dtsEntradasSaidas: TDataSource
    DataSet = fdqEntradasSaidas
    Left = 196
    Top = 259
  end
end
