inherited frmCadProduto: TfrmCadProduto
  Caption = 'Produto'
  ClientWidth = 439
  ExplicitWidth = 455
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Width = 439
  end
  inherited pnl2: TPanel
    Width = 439
    object lbl1: TLabel [0]
      Left = 16
      Top = 105
      Width = 64
      Height = 13
      Caption = 'Valor Unit'#225'rio'
      FocusControl = dbedtVALOR_UNI
    end
    object lbl2: TLabel [1]
      Left = 16
      Top = 13
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object lbl3: TLabel [2]
      Left = 16
      Top = 59
      Width = 27
      Height = 13
      Caption = 'Nome'
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
      Top = 78
      Width = 385
      DataField = 'NOME'
      DataSource = dtsEdicao
      ExplicitLeft = 16
      ExplicitTop = 78
      ExplicitWidth = 385
    end
    object dbedtVALOR_UNI: TDBEdit
      Left = 16
      Top = 124
      Width = 145
      Height = 21
      DataField = 'VALOR_UNI'
      DataSource = dtsEdicao
      TabOrder = 2
    end
  end
  inherited fdqEdicao: TFDQuery
    UpdateOptions.KeyFields = 'ID_RODUTOS'
    SQL.Strings = (
      ' select'
      '   p.id_rodutos,'
      '   p.codigo,'
      '   p.fk_temporada,'
      '   p.nome,'
      '   p.valor_uni'
      ' from'
      '   produtos p'
      ' where'
      '   p.id_rodutos = cast(:id_rodutos as bigint)')
    ParamData = <
      item
        Name = 'ID_RODUTOS'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object fdqEdicaoID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqEdicaoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqEdicaoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
    end
    object fdqEdicaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqEdicaoVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Required = True
      currency = True
      Precision = 18
    end
  end
end
