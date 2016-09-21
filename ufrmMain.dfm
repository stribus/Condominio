object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Condominio'
  ClientHeight = 746
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
    Height = 746
    ActivePage = TabSheet1
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
          Caption = 'Editar Mesas'
          TabOrder = 4
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 653
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        Height = 653
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
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 653
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
    end
  end
  object fdqMesas: TFDQuery
    Connection = dtmcon.conexao
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
      '  left join cliente c on c.id_cliente = k.fk_cliente')
    Left = 108
    Top = 176
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
end
