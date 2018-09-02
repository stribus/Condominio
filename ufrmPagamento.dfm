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
  PixelsPerInch = 96
  TextHeight = 16
  object pgc1: TJvPageControl
    Left = 0
    Top = 0
    Width = 437
    Height = 281
    ActivePage = tsModoFechamento
    Align = alClient
    OwnerDraw = True
    Style = tsFlatButtons
    TabOrder = 0
    TabStop = False
    object tsPagamento: TTabSheet
      Caption = 'tsPagamento'
      TabVisible = False
      ExplicitHeight = 223
      object pnl2: TPanel
        Left = 0
        Top = 0
        Width = 429
        Height = 223
        Align = alClient
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        ExplicitHeight = 177
        DesignSize = (
          429
          223)
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
            DisplayFormat = ',0.00'
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
        Top = 223
        Width = 429
        Height = 48
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 233
        ExplicitWidth = 437
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
    end
    object tsAnotar: TTabSheet
      Caption = 'tsAnotar'
      ImageIndex = 1
      TabVisible = False
      ExplicitTop = 30
      ExplicitHeight = 199
      object pnl4: TPanel
        Left = 0
        Top = 0
        Width = 429
        Height = 223
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitLeft = 32
        ExplicitTop = 48
        ExplicitWidth = 185
        ExplicitHeight = 41
        object lbl4: TLabel
          Left = 100
          Top = 29
          Width = 63
          Height = 16
          Caption = 'Valor Total'
        end
        object edt1: TJvCalcEdit
          Left = 100
          Top = 51
          Width = 223
          Height = 33
          DisplayFormat = ',0.00'
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
        object dbcbb1: TDBLookupComboBox
          Left = 100
          Top = 120
          Width = 223
          Height = 24
          TabOrder = 1
        end
      end
      object pnl5: TPanel
        Left = 0
        Top = 223
        Width = 429
        Height = 48
        Align = alBottom
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 233
        ExplicitWidth = 437
        object btn1: TButton
          Left = 160
          Top = 9
          Width = 75
          Height = 33
          Caption = 'Ok'
          TabOrder = 0
          OnClick = btnOkClick
        end
        object btn2: TButton
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
    end
    object tsModoFechamento: TTabSheet
      ImageIndex = 2
      TabVisible = False
      ExplicitTop = 30
      ExplicitHeight = 199
      object btnAnotar: TBitBtn
        Left = 40
        Top = 80
        Width = 137
        Height = 89
        Caption = 'Anotar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object btnPagar: TBitBtn
        Left = 216
        Top = 80
        Width = 137
        Height = 89
        Caption = 'Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
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
  object fdqDependentes: TFDQuery
    AutoCalcFields = False
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM DEPENDENTES'
      'WHERE '
      'FK_CLIENTE = :CLIENTE'
      'AND '
      'PERMITIR_RETIRAR = TRUE')
    Left = 368
    Top = 128
    ParamData = <
      item
        Name = 'CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
    end
    object BooleanField1: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object dtsDependentes: TDataSource
    AutoEdit = False
    DataSet = fdqDependentes
    Left = 392
    Top = 128
  end
end
