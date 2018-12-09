object frmConta: TfrmConta
  Left = 100
  Top = 100
  Caption = 'Conta'
  ClientHeight = 514
  ClientWidth = 968
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object jvpnl1: TJvPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 459
    Align = alLeft
    BevelOuter = bvNone
    Enabled = False
    TabOrder = 0
    object lbl5: TLabel
      Left = 24
      Top = 41
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object lbl6: TLabel
      Left = 24
      Top = 99
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
    end
    object lbl1: TLabel
      Left = 24
      Top = 157
      Width = 42
      Height = 13
      Caption = 'Telefone'
    end
    object dbedt_nome: TDBEdit
      Left = 24
      Top = 66
      Width = 265
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = dtsCliente
      ReadOnly = True
      TabOrder = 0
    end
    object dbedt_endereco: TDBEdit
      Left = 24
      Top = 124
      Width = 265
      Height = 21
      DataField = 'ENDERECO'
      DataSource = dtsCliente
      ReadOnly = True
      TabOrder = 1
    end
    object dbedt_Telefone: TDBEdit
      Left = 24
      Top = 182
      Width = 265
      Height = 21
      DataField = 'CONTATO'
      DataSource = dtsCliente
      ReadOnly = True
      TabOrder = 2
    end
  end
  object jvpnl2: TJvPanel
    Left = 321
    Top = 0
    Width = 647
    Height = 459
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object dbgjvdbgrd1: TJvDBGrid
      Left = 0
      Top = 25
      Width = 637
      Height = 369
      Align = alClient
      DataSource = dtsCaderneta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -16
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      AutoAppend = False
      AutoSort = False
      BeepOnError = False
      AutoSizeColumns = True
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      CanDelete = False
      ColumnResize = gcrDataSet
      EditControls = <>
      RowsHeight = 27
      TitleRowHeight = 23
      BooleanEditor = False
      Columns = <
        item
          Expanded = False
          FieldName = 'DTHR_LANCAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = 'Data/Hora'
          Width = 128
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NomeProduto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          Title.Caption = 'Produto'
          Width = 220
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'Quant'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_TOTAL'
          Title.Caption = 'Valor Total'
          Width = 101
          Visible = True
        end
        item
          Color = clCream
          Expanded = False
          FieldName = 'SALDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = 'Acomulado'
          Width = 118
          Visible = True
        end>
    end
    object jvpnl3: TJvPanel
      Left = 0
      Top = 0
      Width = 647
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        647
        25)
      object btn_incluir: TJvXPButton
        Left = 584
        Top = 2
        Width = 20
        Height = 20
        Hint = 'Incluir'
        TabOrder = 0
        TabStop = False
        Glyph.Data = {
          0954474946496D61676547494638396110001000E60000257C40EAF4EBA2E86C
          73CE50AEBAC21FAC1D85B8904878695CBF43B4EE8823982CD9E8DD73D24BA3F5
          5A92A2AB59A46948B73761D043C9E3CDB1DAB330914273B282FAFCFBBDFC6438
          7C5595E85864B56B4B995C95C49F2FB12BC4F395C0F77B34665D81CE6BAAE87B
          D0FF71449949E5F0E7BCD0C86FA48233A13D52966A6CCB5045B633388057D2FF
          68EFF2F3D6ECD65B8E7463C24A46B643B2F26DC5F98079CF5ACCF9906DD44197
          E36B7ED55EDFEFE13C93439DA9B5FFFFFF73C75ED0DBD9BED6C6DEE6DEB7F27B
          99CB9DF9FAFA81BC8A46BD2E43895D52BA3EC9FC97E6F7E63BA04145B339EEF5
          F0A4E67759C33E259F2D5CA1703BB32CAEEC78CAFE7941A44CC1CDCE6CC84ED1
          FAA068DD4375CD5BDFE8E3000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000021F904000700FF002C
          000000001000100086257C40EAF4EBA2E86C73CE50AEBAC21FAC1D85B8904878
          695CBF43B4EE8823982CD9E8DD73D24BA3F55A92A2AB59A46948B73761D043C9
          E3CDB1DAB330914273B282FAFCFBBDFC64387C5595E85864B56B4B995C95C49F
          2FB12BC4F395C0F77B34665D81CE6BAAE87BD0FF71449949E5F0E7BCD0C86FA4
          8233A13D52966A6CCB5045B633388057D2FF68EFF2F3D6ECD65B8E7463C24A46
          B643B2F26DC5F98079CF5ACCF9906DD44197E36B7ED55EDFEFE13C93439DA9B5
          FFFFFF73C75ED0DBD9BED6C6DEE6DEB7F27B99CB9DF9FAFA81BC8A46BD2E4389
          5D52BA3EC9FC97E6F7E63BA04145B339EEF5F0A4E67759C33E259F2D5CA1703B
          B32CAEEC78CAFE7941A44CC1CDCE6CC84ED1FAA068DD4375CD5BDFE8E3000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000078D803D8283848586873D2F320588844352591D8D3D01
          1A460D52133A0187122837172B433D0A552584161C50192D1045824B111B4D82
          0B0F4C33234815830635391B3D40142A3454085116830B3B493E001438361F31
          292EA82721585A4E1E425747A785263B091E0953032C5B87443035220203183F
          8D3C24190C1856932E074F18084C12E400048F8108070502003B}
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Style.Theme = OfficeXP
        Style.UseStyleManager = False
        OnClick = btn_incluirClick
      end
      object btn_excluir: TJvXPButton
        Left = 556
        Top = 2
        Width = 20
        Height = 20
        Hint = 'Excluir item selecionado'
        TabOrder = 1
        TabStop = False
        Glyph.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000000467414D410000AFC837058AE90000001974
          455874536F6674776172650041646F626520496D616765526561647971C9653C
          000003024944415478DA85926B48935118C79FF3EEDD45E705152FC942DA74A0
          2EEDD5E62A4D33742696961569EA0711334A53A3B01544885891891122495AC4
          8274521678CB0B6A6A8697F48B9AF821DC724EC45A29BAE9DED3FB2E950CA53F
          9C0FCFED77CE739E07618CA15F11CEE751B29743FA196DE6DBFA7CF88F5A6262
          E34867E7CBE94D0D19E8D381081E9F92F507508114CDD0AA1A9B6A2ED4BF49DE
          AEB0212CDCCDC5C7A739F8E8917D46B319A5979424A09EA4F39A5079F019F3CA
          0A105C2E904221A83BBB5AD334B531987DDEBABAE24FAAC4F2E0C2DD522939AD
          D5AE6457555F7D373E56815264B2789542F1CADFD3D3C6CCE1004208B80C4433
          30D09F515717AA8E523A7AB9B975FA85EC0FE092244C6A753FF3349A9CC6C92F
          2F5830622F71B5B515957AECAA4CB3B78B5DF3F7078B9717F06D6CA0796C7CD4
          5328F4F09588DDB90401233ADDC28DE696CCD4A0A0D7A9B535B009D850995CFE
          ECDCE0E059176F6FE16A6424089C9CC04CD38098E2CFFAD9B9C28F7DE9295450
          239BBB2D80D513654C81A2A33DDBCBCE4E044A25705C5DC16832D117BBBA4F27
          5354FD46DE8E802AA9AF224CAF6B152E2EDAAF0904C08B88009E48041513138F
          6FF7F65EF977325B003D01D441EFE9AFAD66E30FE12A632F03588024099E5C8E
          1CC562B8363090A79E9C7CB42DA04546ED95EA756DB030EFB66A8D20788E503B
          13359EC238919048809448E8CC9191E84183A1630BA0C13FD0C367DED0C39933
          484C8C93C79C6A82F8506CB184B349C709223707E3326427841957F7A9EC6FBA
          9025B3F9BB15502FF5E38B8D0BDD02C36CC8F27A710B418CE6D1F830C6F42F76
          2F58452174290BE372CCD8EF1D1C2A9F1A8D5956C0B0A7E89EED8CAE802D669B
          D12362291570C4024D0FFDE9046DF67B0C215512C6C5263E1F1E1044D8D4F272
          2FCA23B9F9596BABA5C6F564154237DB2D96BB9B3DFE05601587505122C6B786
          0582B6729329DAFA07D749B23295A633D5803A4A30AD647C969D00AC4E303B17
          CDE1E416631C6C05900891458742EFDFE9EB7DB882F1CC96316D03E00070F700
          244C3393FF0DA9AE41BD54559B220000000049454E44AE426082}
        Anchors = [akTop, akRight]
        ParentShowHint = False
        ShowHint = True
        Style.Theme = OfficeXP
        Style.UseStyleManager = False
        OnClick = btn_excluirClick
      end
    end
    object jvpnl4: TJvPanel
      Left = 0
      Top = 394
      Width = 647
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        647
        65)
      object lbl2: TLabel
        Left = 244
        Top = 16
        Width = 61
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'consumido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 364
        Top = 16
        Width = 28
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 492
        Top = 3
        Width = 32
        Height = 16
        Anchors = [akTop, akRight]
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbedt_consumido: TDBEdit
        Left = 244
        Top = 32
        Width = 114
        Height = 27
        ParentCustomHint = False
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = 15527167
        Ctl3D = True
        DataField = 'VALOR_GASTO'
        DataSource = dtsTotais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 0
      end
      object dbedt_pago: TDBEdit
        Left = 364
        Top = 32
        Width = 117
        Height = 21
        Anchors = [akTop, akRight]
        Color = 15794145
        DataField = 'VALOR_PAGO'
        DataSource = dtsTotais
        ReadOnly = True
        TabOrder = 1
      end
      object dbedt_total: TDBEdit
        Left = 487
        Top = 22
        Width = 138
        Height = 37
        Anchors = [akTop, akRight]
        Color = 14680063
        DataField = 'SALDO'
        DataSource = dtsTotais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
    end
    object jvpnl6: TJvPanel
      Left = 637
      Top = 25
      Width = 10
      Height = 369
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
  end
  object jvpnl5: TJvPanel
    Left = 0
    Top = 459
    Width = 968
    Height = 55
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      968
      55)
    object btn_ok: TButton
      Left = 199
      Top = 6
      Width = 95
      Height = 40
      Cancel = True
      Caption = '&OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object btn_relatorio: TButton
      Left = 327
      Top = 6
      Width = 95
      Height = 40
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object btn_pagar: TButton
      Left = 669
      Top = 6
      Width = 95
      Height = 40
      Anchors = [akTop]
      Caption = 'Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_pagarClick
    end
  end
  object fdqCliente: TFDQuery
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT *'
      'FROM CLIENTE'
      'where'
      ' id_cliente = :id_cliente')
    Left = 264
    Top = 16
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsCliente: TDataSource
    DataSet = fdqCliente
    Left = 288
    Top = 16
  end
  object fdqTotais: TFDQuery
    BeforeOpen = fdqTotaisBeforeOpen
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      #9'cc.fk_temporada ,'
      #9'cc.fk_cliente ,'#9
      #9'sum(iif(NOT mv.PAGAMENTO,mv.VALOR_TOTAL,0)) valor_gasto,'#9
      #9'sum(iif(mv.PAGAMENTO,mv.VALOR_TOTAL,0)*-1) valor_pago'#9','
      #9'SUM(mv.valor_total) Saldo'
      'FROM'
      #9'caderneta_cliente cc'
      #9'JOIN mov_produto mv ON'
      #9#9'cc.id_caderneta = mv.fk_caderneta'
      #9'LEFT JOIN produtos pr ON'
      #9#9'pr.id_rodutos = mv.fk_produto'
      #9'LEFT JOIN pedido ped ON'
      #9#9'ped.id_pedido = mv.fk_pedido'
      'WHERE'
      #9'cc.FK_CLIENTE =:id_cliente'
      #9'AND cc.FK_TEMPORADA = :id_temporada'
      'and not mv.excluido '
      'GROUP BY fk_temporada,FK_CLIENTE')
    Left = 224
    Top = 232
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 26
      end
      item
        Name = 'ID_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 10
      end>
    object fdqTotaisFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqTotaisFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqTotaisVALOR_GASTO: TBCDField
      FieldName = 'VALOR_GASTO'
      Origin = 'VALOR_GASTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqTotaisVALOR_PAGO: TBCDField
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqTotaisSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      currency = True
      Precision = 18
      Size = 2
    end
  end
  object dtsTotais: TDataSource
    DataSet = fdqTotais
    Left = 248
    Top = 232
  end
  object fdqCaderneta: TFDQuery
    BeforeOpen = fdqCadernetaBeforeOpen
    ConnectionName = 'Condominio'
    SQL.Strings = (
      'SELECT'
      #9'cc.id_caderneta ,'
      #9'cc.dthr_lancamento ,'
      #9'cc.fk_temporada ,'
      #9'cc.fk_cliente ,'
      #9'cc.fk_dependente ,'
      #9'mv.id_mov_produto ,'
      
        #9'CAST(COALESCE(mv.fk_produto,'#39'T'#39' || mv.tipo_pagamento) AS VARCHA' +
        'R(20)) fks ,'
      #9'mv.quantidade ,'
      #9'mv.pagamento ,'
      #9'mv.valor_total ,'
      '        mv.excluido,'
      
        #9'SUM(mv.valor_total) OVER (PARTITION BY cc.fk_temporada,cc.fk_cl' +
        'iente ORDER BY'#9'dthr_lancamento,mv.id_mov_produto) Saldo'
      'FROM'
      #9'caderneta_cliente cc'
      #9'JOIN mov_produto mv ON'
      #9#9'cc.id_caderneta = mv.fk_caderneta'
      #9'LEFT JOIN produtos pr ON'
      #9#9'pr.id_rodutos = mv.fk_produto'#9
      'WHERE'
      #9'cc.FK_CLIENTE =:id_cliente'
      #9'AND cc.FK_TEMPORADA = :id_temporada'
      '        and not mv.excluido '
      'ORDER BY'#9
      '     dthr_lancamento,mv.id_mov_produto'#9)
    Left = 408
    Top = 152
    ParamData = <
      item
        Position = 10
        Name = 'ID_CLIENTE'
        DataType = ftLargeint
        ParamType = ptInput
        Value = 26
      end
      item
        Name = 'ID_TEMPORADA'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object fdqCadernetaID_CADERNETA: TLargeintField
      FieldName = 'ID_CADERNETA'
      Origin = 'ID_CADERNETA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqCadernetaDTHR_LANCAMENTO: TSQLTimeStampField
      FieldName = 'DTHR_LANCAMENTO'
      Origin = 'DTHR_LANCAMENTO'
      Required = True
    end
    object fdqCadernetaFK_TEMPORADA: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadernetaFK_CLIENTE: TLargeintField
      FieldName = 'FK_CLIENTE'
      Origin = 'FK_CLIENTE'
      Required = True
    end
    object fdqCadernetaFK_DEPENDENTE: TLargeintField
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
      Required = True
    end
    object fdqCadernetaID_MOV_PRODUTO: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MOV_PRODUTO'
      Origin = 'ID_MOV_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadernetaFKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FKS'
      Origin = 'FKS'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadernetaQUANTIDADE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object fdqCadernetaPAGAMENTO: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqCadernetaVALOR_TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqCadernetaSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqCadernetaNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeProduto'
      LookupDataSet = fdqProdutoslookup
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FKS'
      Size = 150
      Lookup = True
    end
  end
  object dtsCaderneta: TDataSource
    DataSet = fdqCaderneta
    Left = 432
    Top = 152
  end
  object fdqProdutoslookup: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  cast(ID_RODUTOS as varchar(20)) ID,'
      '  CODIGO,'
      '  FK_TEMPORADA,'
      '  NOME,'
      '  VALOR_UNI'
      'from'
      '  produtos p'
      'where p.fk_temporada = (select'
      '                          t.id_temporadas'
      '                        from'
      '                          temporadas t'
      '                        where t.ativo) '
      'union all'
      'select'
      '  cast('#39'T'#39'||tp.id as varchar(20)) id,'
      '  tp.id,'
      '  null,'
      '  cast(tp.descricao as varchar(150)),'
      '  null'
      'from'
      '  tipo_pagamento tp')
    Left = 272
    Top = 136
    object fdqProdutoslookupID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdqProdutoslookupCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutoslookupFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
    end
    object fdqProdutoslookupNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutoslookupVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Precision = 18
    end
  end
  object dtsProdutoslookup: TDataSource
    DataSet = fdqProdutoslookup
    Left = 312
    Top = 136
  end
  object fdspPagar: TFDStoredProc
    ConnectionName = 'Condominio'
    StoredProcName = 'PR_PAGAR_CADERNETA_DIRETO'
    Left = 393
    Top = 256
    ParamData = <
      item
        Position = 1
        Name = 'IN_DTHR_LANCAMENTO'
        DataType = ftTimeStamp
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IN_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'IN_TP_PAGAMENTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'IN_TEMPORADA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = 'IN_VALOR_TOTAL'
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 4
        ParamType = ptInput
      end>
  end
end
