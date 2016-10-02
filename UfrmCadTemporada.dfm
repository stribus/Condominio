inherited frmCadTemporada: TfrmCadTemporada
  Caption = 'frmCadTemporada'
  ClientHeight = 215
  ClientWidth = 464
  ExplicitWidth = 480
  ExplicitHeight = 253
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Top = 167
    Width = 464
    ExplicitTop = 167
    ExplicitWidth = 464
  end
  inherited pnl2: TPanel
    Width = 464
    Height = 167
    ExplicitWidth = 464
    ExplicitHeight = 167
    object lbl1: TLabel [0]
      Left = 16
      Top = 96
      Width = 53
      Height = 13
      Caption = 'Data Inicial'
      FocusControl = dbedtPERIODO_INICIAL
    end
    object lbl2: TLabel [1]
      Left = 156
      Top = 96
      Width = 48
      Height = 13
      Caption = 'Data Final'
      FocusControl = dbedtPERIODO_FINAL
    end
    object lbl3: TLabel [2]
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbl4: TLabel [3]
      Left = 16
      Top = 51
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited dbedtCodigo: TDBEdit
      Left = 16
      Top = 24
      DataField = 'COD_TEMP'
      DataSource = dtsEdicao
      ExplicitLeft = 16
      ExplicitTop = 24
    end
    inherited dbedtDescricao: TDBEdit
      Left = 16
      Top = 69
      Width = 274
      DataField = 'DESCRICAO'
      DataSource = dtsEdicao
      ExplicitLeft = 16
      ExplicitTop = 69
      ExplicitWidth = 274
    end
    object dbchkATIVO: TDBCheckBox
      Left = 143
      Top = 26
      Width = 97
      Height = 17
      Caption = 'Ativo'
      DataField = 'ATIVO'
      DataSource = dtsEdicao
      TabOrder = 2
    end
    object dbedtPERIODO_INICIAL: TJvDBDatePickerEdit
      Left = 16
      Top = 112
      Width = 134
      Height = 21
      AllowNoDate = True
      AutoSize = True
      DataField = 'PERIODO_INICIAL'
      DataSource = dtsEdicao
      TabOrder = 3
    end
    object dbedtPERIODO_FINAL: TJvDBDatePickerEdit
      Left = 156
      Top = 112
      Width = 134
      Height = 21
      AllowNoDate = True
      AutoSize = True
      DataField = 'PERIODO_FINAL'
      DataSource = dtsEdicao
      DirectInput = False
      TabOrder = 4
    end
  end
  inherited fdqEdicao: TFDQuery
    UpdateOptions.KeyFields = 'ID_TEMPORADAS'
    SQL.Strings = (
      'Select '
      ' *'
      'from '
      '  Temporadas t '
      'where'
      '  t.id_temporadas = :id_temporadas')
    ParamData = <
      item
        Name = 'ID_TEMPORADAS'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object fdqEdicaoID_TEMPORADAS: TLargeintField
      FieldName = 'ID_TEMPORADAS'
      Origin = 'ID_TEMPORADAS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqEdicaoCOD_TEMP: TSmallintField
      FieldName = 'COD_TEMP'
      Origin = 'COD_TEMP'
      Required = True
    end
    object fdqEdicaoPERIODO_INICIAL: TDateField
      FieldName = 'PERIODO_INICIAL'
      Origin = 'PERIODO_INICIAL'
      Required = True
    end
    object fdqEdicaoPERIODO_FINAL: TDateField
      FieldName = 'PERIODO_FINAL'
      Origin = 'PERIODO_FINAL'
    end
    object fdqEdicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqEdicaoATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
end
