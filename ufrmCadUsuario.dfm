inherited frmCadUsuario: TfrmCadUsuario
  Caption = 'Cadastrar Usuario'
  ClientHeight = 314
  ExplicitHeight = 352
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    Top = 266
    ExplicitTop = 266
    inherited btnOk: TButton
      Default = True
    end
  end
  inherited pnl2: TPanel
    Height = 266
    ExplicitHeight = 266
    object lbl1: TLabel [0]
      Left = 32
      Top = 24
      Width = 66
      Height = 13
      Caption = 'Nome Usu'#225'rio'
    end
    object lbl2: TLabel [1]
      Left = 32
      Top = 85
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object lbl3: TLabel [2]
      Left = 32
      Top = 133
      Width = 79
      Height = 13
      Caption = 'Confirme Senha '
    end
    object lbl4: TLabel [3]
      Left = 32
      Top = 189
      Width = 62
      Height = 13
      Caption = 'Senha Admin'
    end
    inherited dbedtCodigo: TDBEdit
      Left = 304
      DataField = 'ID'
      DataSource = dtsEdicao
      Enabled = False
      Visible = False
      ExplicitLeft = 304
    end
    inherited dbedtDescricao: TDBEdit
      Left = 32
      Top = 43
      Width = 203
      Height = 27
      DataField = 'NOME'
      DataSource = dtsEdicao
      Font.Height = -16
      ParentFont = False
      ExplicitLeft = 32
      ExplicitTop = 43
      ExplicitWidth = 203
      ExplicitHeight = 27
    end
    object edtPassword: TEdit
      Left = 32
      Top = 104
      Width = 203
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object edtRePassword: TEdit
      Left = 32
      Top = 152
      Width = 203
      Height = 21
      PasswordChar = '*'
      TabOrder = 3
    end
    object edtPasswordAdm: TEdit
      Left = 32
      Top = 208
      Width = 203
      Height = 21
      PasswordChar = '*'
      TabOrder = 4
    end
  end
  inherited fdqEdicao: TFDQuery
    CachedUpdates = False
    ConnectionName = 'Condominio'
    FormatOptions.AssignedValues = [fvSE2Null]
    FormatOptions.StrsEmpty2Null = True
    UpdateOptions.AssignedValues = [uvGeneratorName, uvCheckRequired, uvCheckReadOnly]
    UpdateOptions.GeneratorName = 'GEN_USUARIOS_ID'
    UpdateOptions.CheckRequired = False
    UpdateOptions.CheckReadOnly = False
    UpdateOptions.KeyFields = 'ID'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'Select'
      '*'
      'from'
      'usuarios'
      'where'
      'id = null')
    Left = 256
    Top = 56
    object fdqEdicaoID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqEdicaoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqEdicaoPWD: TStringField
      FieldName = 'PWD'
      Origin = 'PWD'
      Required = True
      Size = 255
    end
  end
  inherited dtsEdicao: TDataSource
    Left = 336
    Top = 56
  end
end
