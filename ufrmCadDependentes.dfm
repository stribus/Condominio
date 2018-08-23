inherited frmCadDependente: TfrmCadDependente
  Caption = 'Dependentes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    TabOrder = 1
  end
  inherited pnl2: TPanel
    TabOrder = 0
    object lbl1: TLabel [0]
      Left = 16
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbl2: TLabel [1]
      Left = 16
      Top = 63
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object lbl3: TLabel [2]
      Left = 16
      Top = 112
      Width = 58
      Height = 13
      Caption = 'Observa'#231#227'o'
    end
    inherited dbedtCodigo: TDBEdit
      Left = 16
      Top = 83
      Width = 169
      DataField = 'FONE'
      DataSource = dtsEdicao
      TabOrder = 1
      ExplicitLeft = 16
      ExplicitTop = 83
      ExplicitWidth = 169
    end
    inherited dbedtDescricao: TDBEdit
      Left = 16
      Top = 34
      Width = 345
      DataField = 'NOME'
      DataSource = dtsEdicao
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 34
      ExplicitWidth = 345
    end
    object dbedtObs: TDBEdit
      Left = 16
      Top = 133
      Width = 345
      Height = 21
      DataField = 'OBS'
      DataSource = dtsEdicao
      TabOrder = 3
    end
    object chkPERMITIR_RETIRAR: TJvDBCheckBox
      Left = 240
      Top = 84
      Width = 97
      Height = 17
      Caption = 'Permitir Retirada'
      DataField = 'PERMITIR_RETIRAR'
      DataSource = dtsEdicao
      TabOrder = 2
    end
  end
  inherited fdqEdicao: TFDQuery
    Left = 376
    Top = 136
  end
  inherited dtsEdicao: TDataSource
    DataSet = frmCadClientes.fdqDependente
  end
end
