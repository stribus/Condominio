inherited frmCadClientes: TfrmCadClientes
  Caption = 'Clientes'
  ClientHeight = 411
  ClientWidth = 961
  ExplicitWidth = 977
  ExplicitHeight = 449
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Top = 363
    Width = 961
    TabOrder = 1
    ExplicitTop = 363
    ExplicitWidth = 961
    inherited btnOk: TButton
      Left = 384
      Top = 6
      ExplicitLeft = 384
      ExplicitTop = 6
    end
    inherited btnCancelar: TButton
      Left = 480
      Top = 6
      ExplicitLeft = 480
      ExplicitTop = 6
    end
  end
  inherited pnl2: TPanel
    Width = 961
    Height = 363
    TabOrder = 0
    ExplicitWidth = 961
    ExplicitHeight = 363
    inherited dbedtCodigo: TDBEdit
      Left = 40
      Top = 24
      TabOrder = 2
      Visible = False
      ExplicitLeft = 40
      ExplicitTop = 24
    end
    inherited dbedtDescricao: TDBEdit
      Left = 40
      Top = 51
      TabOrder = 3
      Visible = False
      ExplicitLeft = 40
      ExplicitTop = 51
    end
    object pnl4: TPanel
      Left = 408
      Top = 0
      Width = 553
      Height = 363
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pnl3: TPanel
        Left = 0
        Top = 0
        Width = 553
        Height = 41
        Align = alTop
        TabOrder = 0
        object btn_Add: TButton
          Left = 16
          Top = 10
          Width = 90
          Height = 25
          Caption = 'Adicionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object btn_Remove: TButton
          Left = 112
          Top = 10
          Width = 91
          Height = 25
          Caption = 'Editar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object btn1: TButton
          Left = 257
          Top = 10
          Width = 91
          Height = 25
          Caption = 'Remover'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object pnl5: TPanel
        Left = 547
        Top = 41
        Width = 6
        Height = 322
        Align = alRight
        Caption = 'pnl5'
        TabOrder = 2
      end
      object dbgrd_Dependetes: TJvDBGrid
        Left = 0
        Top = 41
        Width = 547
        Height = 322
        Align = alClient
        DataSource = dtsDependente
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbgrd_DependetesDblClick
        AutoAppend = False
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 23
        TitleRowHeight = 23
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FONE'
            Title.Caption = 'Telefone'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Title.Caption = 'Observa'#231#227'o'
            Width = 167
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERMITIR_RETIRAR'
            Title.Caption = 'Pode retirar'
            Visible = True
          end>
      end
    end
    object pnl6: TPanel
      Left = 0
      Top = 0
      Width = 408
      Height = 363
      Align = alLeft
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lbl1: TLabel
        Left = 24
        Top = 41
        Width = 89
        Height = 19
        Caption = 'Identifica'#231#227'o'
        FocusControl = dbedt_nome
      end
      object lbl2: TLabel
        Left = 24
        Top = 99
        Width = 65
        Height = 19
        Caption = 'Endere'#231'o'
      end
      object lbl3: TLabel
        Left = 24
        Top = 215
        Width = 89
        Height = 19
        Caption = 'Observa'#231#245'es'
      end
      object lbl4: TLabel
        Left = 24
        Top = 157
        Width = 61
        Height = 19
        Caption = 'Telefone'
      end
      object lbl5: TLabel
        Left = 120
        Top = 9
        Width = 78
        Height = 23
        Caption = 'CLIENTE'
        Color = clMenuBar
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object dbedt_nome: TDBEdit
        Left = 24
        Top = 66
        Width = 265
        Height = 27
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = dtsEdicao
        TabOrder = 1
      end
      object dbedt_endereco: TDBEdit
        Left = 24
        Top = 124
        Width = 265
        Height = 27
        DataField = 'ENDERECO'
        DataSource = dtsEdicao
        TabOrder = 3
      end
      object dbedt_Telefone: TDBEdit
        Left = 24
        Top = 182
        Width = 265
        Height = 27
        DataField = 'CONTATO'
        DataSource = dtsEdicao
        TabOrder = 4
      end
      object dbmmoOBSERVACAO: TDBMemo
        Left = 24
        Top = 240
        Width = 265
        Height = 65
        DataField = 'OBS'
        DataSource = dtsEdicao
        TabOrder = 5
      end
      object dbedtCODIGO1: TDBEdit
        Left = 24
        Top = 10
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'CODIGO'
        DataSource = dtsEdicao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object dbchkATIVO: TDBCheckBox
        Left = 320
        Top = 71
        Width = 97
        Height = 17
        Caption = 'ATIVO'
        DataField = 'ATIVO'
        DataSource = dtsEdicao
        TabOrder = 2
      end
      object dbchkPERMITIR_SALDO_NEGATIVO: TDBCheckBox
        Left = 24
        Top = 320
        Width = 265
        Height = 17
        Caption = 'Permitir Saldo Negativo'
        DataField = 'PERMITIR_SALDO_NEGATIVO'
        DataSource = dtsEdicao
        TabOrder = 6
      end
    end
  end
  inherited fdqEdicao: TFDQuery
    UpdateOptions.AssignedValues = [uvEInsert, uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE'
    UpdateOptions.UpdateTableName = 'CLIENTE'
    UpdateOptions.KeyFields = 'ID_CLIENTE'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE'
    UpdateObject = fduedicao
    SQL.Strings = (
      'SELECT'
      #9'ID_CLIENTE,'
      #9'CODIGO,'
      #9'NOME,'
      #9'ENDERECO,'
      #9'CONTATO,'
      #9'OBS,'
      #9'PERMITIR_SALDO_NEGATIVO,'
      #9'ATIVO'
      'FROM'
      #9'CLIENTE'
      'where '
      '     ID_CLIENTE = cast(:id_cliente as bigint)')
    Left = 56
    Top = 88
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqEdicaoID_CLIENTE: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqEdicaoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqEdicaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqEdicaoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object fdqEdicaoCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 150
    end
    object fdqEdicaoOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object fdqEdicaoPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
    object fdqEdicaoATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  inherited dtsEdicao: TDataSource
    Left = 104
    Top = 88
  end
  object fdqDependente: TFDQuery
    BeforeOpen = fdqDependenteBeforeOpen
    CachedUpdates = True
    Connection = dtmcon.conexao
    UpdateOptions.KeyFields = 'ID_DEPENDENTES'
    SQL.Strings = (
      'SELECT'
      #9'ID_DEPENDENTES,'
      #9'CODIGO,'
      #9'NOME,'
      #9'FK_CLIENTE,'
      #9'FONE,'
      #9'OBS,'
      #9'PERMITIR_RETIRAR'
      'FROM'
      #9'DEPENDENTES'
      'WHERE'
      #9'FK_CLIENTE = CAST(:FK_CLIENTE AS BIGINT )')
    Left = 565
    Top = 144
    ParamData = <
      item
        Name = 'FK_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqDependenteID_DEPENDENTES: TLargeintField
      FieldName = 'ID_DEPENDENTES'
      Origin = 'ID_DEPENDENTES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    end
  end
  object dtsDependente: TDataSource
    DataSet = fdqDependente
    Left = 517
    Top = 144
  end
  object fduedicao: TFDUpdateSQL
    Connection = dtmcon.conexao
    Left = 72
    Top = 144
  end
end
