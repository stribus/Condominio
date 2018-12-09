object frmValidaUsuario: TfrmValidaUsuario
  Left = 0
  Top = 0
  Caption = 'informe o usuario e senha'
  ClientHeight = 191
  ClientWidth = 444
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
    Width = 444
    Height = 143
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    ExplicitTop = -12
    ExplicitWidth = 494
    ExplicitHeight = 266
    object lbl1: TLabel
      Left = 32
      Top = 24
      Width = 66
      Height = 13
      Caption = 'Nome Usu'#225'rio'
    end
    object lbl2: TLabel
      Left = 32
      Top = 85
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object edtPassword: TEdit
      Left = 32
      Top = 104
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 1
    end
    object dbcbbUsuario: TDBLookupComboBox
      Left = 32
      Top = 43
      Width = 329
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'NOME'
      ListField = 'NOME'
      ListSource = dtsUsuario
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 143
    Width = 444
    Height = 48
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 206
    ExplicitWidth = 494
    object btnOk: TButton
      Left = 160
      Top = 9
      Width = 75
      Height = 33
      Caption = 'Ok'
      Default = True
      TabOrder = 0
      OnClick = btnOkClick
    end
    object btnCancelar: TButton
      Left = 248
      Top = 9
      Width = 75
      Height = 33
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object fdqUsuario: TFDQuery
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
      'habilitado')
    Left = 344
    Top = 8
    object fdqUsuarioID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqUsuarioPWD: TStringField
      FieldName = 'PWD'
      Origin = 'PWD'
      Required = True
      Size = 255
    end
    object fdqUsuarioHABILITADO: TBooleanField
      FieldName = 'HABILITADO'
      Origin = 'HABILITADO'
      Required = True
    end
  end
  object dtsUsuario: TDataSource
    DataSet = fdqUsuario
    Left = 384
    Top = 16
  end
end
