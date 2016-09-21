inherited frmCadMesas: TfrmCadMesas
  Caption = 'Mesas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl2: TPanel
    inherited dbedtCodigo: TDBEdit
      Left = 16
      Top = 32
      ExplicitLeft = 16
      ExplicitTop = 32
    end
    inherited dbedtDescricao: TDBEdit
      Left = 16
      Top = 82
      Width = 329
      ExplicitLeft = 16
      ExplicitTop = 82
      ExplicitWidth = 329
    end
  end
  inherited fdqEdicao: TFDQuery
    UpdateOptions.KeyFields = 'ID_MESA'
    SQL.Strings = (
      'select'
      '    m.id_mesa'
      '    , m.codigo'
      '    , m.descricao'
      '    , m.ativa'
      'from'
      '    mesa m'
      'Where'
      '    m.id_mesa = :id_mesa')
    Left = 208
    Top = 24
    ParamData = <
      item
        Name = 'ID_MESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object fdqEdicaoID_MESA: TLargeintField
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqEdicaoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqEdicaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqEdicaoATIVA: TBooleanField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
      Required = True
    end
  end
end
