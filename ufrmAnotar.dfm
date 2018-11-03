object frmAnotar: TfrmAnotar
  Left = 0
  Top = 0
  Caption = 'Adicionar'
  ClientHeight = 368
  ClientWidth = 662
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
    Width = 662
    Height = 320
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      662
      320)
    object lbl8: TLabel
      Left = 222
      Top = 13
      Width = 75
      Height = 13
      Anchors = [akLeft, akTop, akRight]
      Caption = 'Autorizado por:'
    end
    object lbl5: TLabel
      Left = 18
      Top = 59
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object lbl1: TLabel
      Left = 189
      Top = 78
      Width = 11
      Height = 19
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl6: TLabel
      Left = 222
      Top = 59
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Produto'
    end
    object JvDateTimePicker1: TJvDateTimePicker
      Left = 17
      Top = 32
      Width = 96
      Height = 21
      Date = 43385.503391666670000000
      Time = 43385.503391666670000000
      TabOrder = 4
      DropDownDate = 43385.000000000000000000
    end
    object JvDateTimePicker2: TJvDateTimePicker
      Left = 119
      Top = 32
      Width = 81
      Height = 21
      Date = 43385.503391666670000000
      Time = 43385.503391666670000000
      Kind = dtkTime
      TabOrder = 5
      DropDownDate = 43385.000000000000000000
    end
    object dbcbbAUTORIZADO: TDBLookupComboBox
      Left = 222
      Top = 32
      Width = 417
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'FK_DEPENDENTE'
      KeyField = 'ID_DEPENDENTES'
      ListField = 'NOME'
      TabOrder = 0
    end
    object edtQtd: TJvCalcEdit
      Left = 18
      Top = 78
      Width = 159
      Height = 24
      Alignment = taLeftJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MinValue = 0.010000000000000000
      ParentFont = False
      TabOrder = 1
      Value = 1.000000000000000000
      DecimalPlacesAlwaysShown = False
    end
    object edtProduto: TEdit
      Left = 222
      Top = 78
      Width = 196
      Height = 24
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object pnlPesquisa: TPanel
      Left = 17
      Top = 108
      Width = 632
      Height = 206
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      DesignSize = (
        632
        206)
      object dbfdtProduto: TJvDBFindEdit
        Left = 72
        Top = 13
        Width = 329
        Height = 21
        TabStop = False
        TabOrder = 0
        Text = ''
        DataField = 'NOME'
        DataSource = dtsPesqProduto
        FindStyle = fsFilter
      end
      object dbgPesquisaProduto: TJvDBGrid
        Left = 16
        Top = 40
        Width = 606
        Height = 158
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtsPesqProduto
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        BooleanEditor = False
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 296
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNI'
            Title.Caption = 'Valor'
            Width = 70
            Visible = True
          end>
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 320
    Width = 662
    Height = 48
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
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
    MasterFields = 'ID_CLIENTE'
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM DEPENDENTES'
      'WHERE '
      'FK_CLIENTE = :ID_CLIENTE'
      'AND '
      'PERMITIR_RETIRAR = TRUE')
    Left = 416
    Top = 100
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsDependentes: TDataSource
    DataSet = fdqDependente
    Left = 464
    Top = 100
  end
end