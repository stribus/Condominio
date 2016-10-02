inherited frmCadMesas: TfrmCadMesas
  Caption = 'Mesas'
  ClientHeight = 172
  ClientWidth = 411
  ExplicitWidth = 427
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Top = 124
    Width = 411
    ExplicitTop = 124
    ExplicitWidth = 411
  end
  inherited pnl2: TPanel
    Width = 411
    Height = 124
    ExplicitWidth = 411
    ExplicitHeight = 124
    object lbl1: TLabel [0]
      Left = 16
      Top = 63
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    object lbl2: TLabel [1]
      Left = 16
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited dbedtCodigo: TDBEdit
      Left = 16
      Top = 32
      DataField = 'CODIGO'
      DataSource = dtsEdicao
      ExplicitLeft = 16
      ExplicitTop = 32
    end
    inherited dbedtDescricao: TDBEdit
      Left = 16
      Top = 82
      Width = 329
      DataField = 'DESCRICAO'
      DataSource = dtsEdicao
      ExplicitLeft = 16
      ExplicitTop = 82
      ExplicitWidth = 329
    end
    object dbchkATIVA: TDBCheckBox
      Left = 160
      Top = 34
      Width = 97
      Height = 17
      Caption = 'Ativa'
      DataField = 'ATIVA'
      DataSource = dtsEdicao
      TabOrder = 2
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
