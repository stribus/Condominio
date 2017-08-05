object frmPagamento: TfrmPagamento
  Left = 0
  Top = 0
  Caption = 'frmPagamento'
  ClientHeight = 281
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 437
    Height = 233
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    DesignSize = (
      437
      233)
    object lbl2: TLabel
      Left = 114
      Top = 21
      Width = 63
      Height = 16
      Caption = 'Valor Total'
    end
    object lbl1: TLabel
      Left = 114
      Top = 87
      Width = 93
      Height = 16
      Caption = 'Tipo Pagamento'
    end
    object lbl3: TLabel
      Left = 114
      Top = 139
      Width = 62
      Height = 16
      Caption = 'Valor Pago'
    end
    object dbcbbTpPag: TDBLookupComboBox
      Left = 114
      Top = 109
      Width = 223
      Height = 24
      KeyField = 'ID'
      ListField = 'DESCRICAO'
      ListSource = dtspag
      TabOrder = 0
    end
    object edtPago: TJvCalcEdit
      Left = 114
      Top = 161
      Width = 223
      Height = 24
      DisplayFormat = ',0.00'
      TabOrder = 1
      DecimalPlacesAlwaysShown = True
    end
    object pnl3: TPanel
      Left = 0
      Top = 40
      Width = 437
      Height = 49
      Anchors = [akLeft, akTop, akRight]
      BevelOuter = bvNone
      Enabled = False
      TabOrder = 2
      object edtTotal: TJvCalcEdit
        Left = 114
        Top = 3
        Width = 223
        Height = 33
        DisplayFormat = 'R$ ,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ShowButton = False
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 233
    Width = 437
    Height = 48
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    object btnOk: TButton
      Left = 160
      Top = 9
      Width = 75
      Height = 33
      Caption = 'Ok'
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
  object dtspag: TDataSource
    AutoEdit = False
    DataSet = fdqTipoPag
    Left = 392
    Top = 64
  end
  object fdqTipoPag: TFDQuery
    AutoCalcFields = False
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM TIPO_PAGAMENTO'
      'WHERE ATIVO')
    Left = 368
    Top = 64
    object fdqTipoPagID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqTipoPagDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
    end
    object fdqTipoPagATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
end
