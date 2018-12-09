inherited frmEntradasSaidas: TfrmEntradasSaidas
  Caption = 'Entradas/Saidas'
  ClientHeight = 268
  ClientWidth = 456
  ExplicitWidth = 472
  ExplicitHeight = 306
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Top = 220
    Width = 456
    TabOrder = 1
    ExplicitTop = 220
    ExplicitWidth = 456
  end
  inherited pnl2: TPanel
    Width = 456
    Height = 220
    Font.Height = -16
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 456
    ExplicitHeight = 220
    object lbl1: TLabel [0]
      Left = 32
      Top = 89
      Width = 67
      Height = 19
      Caption = 'Descri'#231#227'o'
    end
    object lbl2: TLabel [1]
      Left = 32
      Top = 143
      Width = 37
      Height = 19
      Caption = 'Valor'
    end
    object lbl3: TLabel [2]
      Left = 32
      Top = 35
      Width = 32
      Height = 19
      Caption = 'Tipo'
    end
    inherited dbedtCodigo: TDBEdit
      Left = 352
      Width = 65
      Height = 27
      TabStop = False
      DataField = 'ID'
      DataSource = dtsEdicao
      Enabled = False
      ReadOnly = True
      Visible = False
      ExplicitLeft = 352
      ExplicitWidth = 65
      ExplicitHeight = 27
    end
    inherited dbedtDescricao: TDBEdit
      Left = 32
      Top = 112
      Width = 361
      Height = 27
      DataField = 'DESCRICAO'
      DataSource = dtsEdicao
      TabOrder = 2
      ExplicitLeft = 32
      ExplicitTop = 112
      ExplicitWidth = 361
      ExplicitHeight = 27
    end
    object dbcdtValor: TJvDBCalcEdit
      Left = 32
      Top = 166
      Width = 361
      Height = 27
      DisplayFormat = ',0.00'
      TabOrder = 3
      DecimalPlacesAlwaysShown = True
      OnKeyPress = dbcdtValorKeyPress
      DataField = 'VALOR'
      DataSource = dtsEdicao
    end
    object JvDBComboBox1: TJvDBComboBox
      Left = 32
      Top = 58
      Width = 145
      Height = 27
      DataField = 'TIPO'
      DataSource = dtsEdicao
      Items.Strings = (
        'ENTRADA'
        'SAIDA')
      TabOrder = 1
      Values.Strings = (
        '1'
        '-1')
      ListSettings.OutfilteredValueFont.Charset = DEFAULT_CHARSET
      ListSettings.OutfilteredValueFont.Color = clRed
      ListSettings.OutfilteredValueFont.Height = -11
      ListSettings.OutfilteredValueFont.Name = 'Tahoma'
      ListSettings.OutfilteredValueFont.Style = []
    end
  end
  inherited fdqEdicao: TFDQuery
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_ENTRADA_SAIDA_ID'
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'ENTRADA_SAIDA'
      'WHERE'
      'ID =:ID')
    Left = 424
    Top = 112
    ParamData = <
      item
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object fdqEdicaoID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqEdicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqEdicaoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object fdqEdicaoTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object fdqEdicaoDATA_HORA: TSQLTimeStampField
      FieldName = 'DATA_HORA'
      Origin = 'DATA_HORA'
    end
    object fdqEdicaoEXCLUIDO: TBooleanField
      FieldName = 'EXCLUIDO'
      Origin = 'EXCLUIDO'
    end
    object fdqEdicaoUSER_DEL: TStringField
      FieldName = 'USER_DEL'
      Origin = 'USER_DEL'
      Size = 150
    end
    object fdqEdicaoDATA_HORA_EXC: TSQLTimeStampField
      FieldName = 'DATA_HORA_EXC'
      Origin = 'DATA_HORA_EXC'
    end
    object fdqEdicaoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
    end
  end
  inherited dtsEdicao: TDataSource
    Left = 432
    Top = 24
  end
end
