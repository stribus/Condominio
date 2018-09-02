object frmPesqProduto: TfrmPesqProduto
  Left = 0
  Top = 0
  Caption = 'frmPesqProduto'
  ClientHeight = 503
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    667
    503)
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 447
    Width = 667
    Height = 56
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 439
    ExplicitWidth = 558
    object lbl1: TLabel
      Left = 11
      Top = 5
      Width = 4
      Height = 13
      Caption = '.'
    end
    object btn1: TButton
      Left = 240
      Top = 8
      Width = 97
      Height = 41
      Cancel = True
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
    end
  end
  object dbgrdProduto: TDBGrid
    Left = 11
    Top = 8
    Width = 648
    Height = 433
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Width = 86
        Visible = True
      end
      item
        DropDownRows = 0
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end>
  end
  object fdqProdutos: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'select'
      '  p.id_rodutos,'
      '  p.codigo,'
      '  p.fk_temporada,'
      '  p.nome,'
      '  p.valor_uni'
      'from'
      '  produtos p'
      '  join temporadas t'
      '    on t.id_temporadas = p.fk_temporada'
      'where'
      '  t.ativo   ')
    Left = 448
    Top = 152
    object fdqProdutosID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqProdutosCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutosFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
    end
    object fdqProdutosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutosVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Required = True
      Precision = 18
    end
  end
  object dtsProdutos: TDataSource
    DataSet = fdqProdutos
    Left = 496
    Top = 168
  end
end
