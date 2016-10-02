object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Condominio'
  ClientHeight = 742
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 1126
    Height = 742
    ActivePage = TabSheet4
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Mesas'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        TabOrder = 0
        DesignSize = (
          1114
          61)
        object btnAbrir: TButton
          Left = 16
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Gerenciar Mesa'
          TabOrder = 0
        end
        object btn2: TButton
          Left = 127
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Fechar Mesa'
          TabOrder = 1
        end
        object btnNovaMesa: TButton
          Left = 791
          Top = 8
          Width = 105
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'Cadastrar Mesas'
          TabOrder = 2
          OnClick = btnNovaMesaClick
        end
        object btn4: TButton
          Left = 238
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Cancelar Mesa'
          TabOrder = 3
        end
        object btn1: TButton
          Left = 902
          Top = 8
          Width = 105
          Height = 41
          Anchors = [akTop, akRight]
          Caption = 'Editar Mesas'
          TabOrder = 4
          OnClick = btn1Click
        end
        object chkMesasAtivas: TCheckBox
          Left = 1013
          Top = 20
          Width = 97
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'S'#243' mesas ativas'
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = chkMesasAtivasClick
        end
      end
      object dbgrdMesas: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 649
        Align = alClient
        DataSource = dtsmesas
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
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o Mesa'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTHR_ABERTURA'
            Title.Caption = 'Aberto Desde'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Cliente'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL'
            Title.Caption = 'A pagar'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Clientes'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        TabOrder = 0
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 649
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1118
        Height = 65
        Align = alTop
        BevelKind = bkSoft
        TabOrder = 0
        ExplicitLeft = -3
        ExplicitTop = -6
        object btnAddProduto: TButton
          Left = 16
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Adicionar'
          TabOrder = 0
        end
        object btnEdtProduto: TButton
          Left = 127
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Editar'
          TabOrder = 1
        end
        object btnDelProduto: TButton
          Left = 238
          Top = 8
          Width = 105
          Height = 41
          Caption = 'Excluir'
          TabOrder = 2
        end
      end
      object dbgProdutos: TJvDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 649
        Align = alClient
        DataSource = dtsprodutos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        CanDelete = False
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_RODUTOS'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Caption = 'C'#243'digo'
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FK_TEMPORADA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Width = 406
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_UNI'
            Title.Caption = 'Valor Unit'#225'rio'
            Width = 84
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Config/Relat'#243'rios'
      ImageIndex = 3
      object edt1: TEdit
        Left = 16
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 0
        Text = 'edt1'
      end
      object btnNovaTemporada: TButton
        Left = 814
        Top = 8
        Width = 105
        Height = 41
        Caption = 'Nova Temporada'
        TabOrder = 1
        OnClick = btnNovaTemporadaClick
      end
    end
  end
  object fdqMesas: TFDQuery
    BeforeOpen = fdqMesasBeforeOpen
    Connection = dtmcon.conexao
    UpdateOptions.AssignedValues = [uvEDelete, uvEInsert, uvEUpdate]
    UpdateOptions.EnableDelete = False
    UpdateOptions.EnableInsert = False
    UpdateOptions.EnableUpdate = False
    SQL.Strings = (
      'select '
      '  m.id_mesa'
      '  ,m.codigo'
      '  ,m.descricao'
      '  ,k.id_pedido'
      '  ,k.dthr_abertura'
      '  ,c.nome'
      '  ,c.codigo Cod_cliente'
      '  ,('
      '    select '
      '      sum(iif(v.pagamento, (- 1), 1) * v.valor_total)'
      '    from '
      '      mov_produto v'
      '    where '
      '      v.fk_pedido = k.id_pedido'
      '    ) Total'
      'from '
      '  mesa m'
      '  left join ('
      '    select '
      '      *'
      '    from '
      '      pedido p'
      '      left join temporadas t on t.id_temporadas = p.fk_temporada'
      '    where '
      '      t.ativo = true'
      '      and p.dthr_fexamento is null'
      '    ) k on k.fk_mesa = m.id_mesa'
      '  left join cliente c on c.id_cliente = k.fk_cliente'
      'where'
      '  ((m.ativa) or ( not :soativas))'
      '  or k.fk_mesa is not null')
    Left = 108
    Top = 176
    ParamData = <
      item
        Name = 'SOATIVAS'
        DataType = ftBoolean
        ParamType = ptInput
        Value = False
      end>
    object fdqMesasID_MESA: TLargeintField
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqMesasCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqMesasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 150
    end
    object fdqMesasID_PEDIDO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqMesasDTHR_ABERTURA: TSQLTimeStampField
      AutoGenerateValue = arDefault
      FieldName = 'DTHR_ABERTURA'
      Origin = 'DTHR_ABERTURA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqMesasNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object fdqMesasCOD_CLIENTE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'COD_CLIENTE'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqMesasTOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 2
    end
  end
  object dtsmesas: TDataSource
    DataSet = fdqMesas
    Left = 148
    Top = 176
  end
  object fdqProdutos: TFDQuery
    Connection = dtmcon.conexao
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
    Left = 268
    Top = 192
    object fdqProdutosID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
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
      Visible = False
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
      currency = True
      Precision = 18
    end
  end
  object dtsprodutos: TDataSource
    DataSet = fdqProdutos
    Left = 292
    Top = 192
  end
end
