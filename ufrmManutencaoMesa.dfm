object frmManutencaoMesa: TfrmManutencaoMesa
  Left = 0
  Top = 0
  Caption = 'Mesa - x'
  ClientHeight = 546
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl2: TLabel
    Left = 528
    Top = 16
    Width = 16
    Height = 13
    Caption = 'lbl2'
  end
  object pnl1: TPanel
    Left = 0
    Top = 498
    Width = 851
    Height = 48
    Align = alBottom
    ParentBackground = False
    TabOrder = 1
    object btnOk: TButton
      Left = 208
      Top = 6
      Width = 75
      Height = 33
      Caption = 'Ok'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancelar: TButton
      Left = 527
      Top = 6
      Width = 75
      Height = 33
      Cancel = True
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 3
    end
    object btnFechar: TButton
      Left = 289
      Top = 6
      Width = 90
      Height = 33
      Caption = 'Fechar Conta'
      TabOrder = 1
      OnClick = btnFecharClick
    end
    object btnPagar: TButton
      Left = 398
      Top = 6
      Width = 106
      Height = 33
      Caption = 'Pagar Sem Fechar'
      TabOrder = 2
      OnClick = btnPagarClick
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 498
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 0
    object pnl3: TPanel
      Left = 480
      Top = 0
      Width = 371
      Height = 498
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object lbl1: TLabel
        Left = 111
        Top = 221
        Width = 11
        Height = 19
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 18
        Top = 97
        Width = 25
        Height = 13
        Caption = 'Mesa'
      end
      object lbl4: TLabel
        Left = 18
        Top = 151
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object lbl5: TLabel
        Left = 18
        Top = 201
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object lbl6: TLabel
        Left = 128
        Top = 201
        Width = 74
        Height = 13
        Caption = 'C'#243'digo Produto'
      end
      object lbl8: TLabel
        Left = 6
        Top = 322
        Width = 75
        Height = 13
        Caption = 'Autorizado por:'
      end
      object dbcbbCliente: TDBLookupComboBox
        Left = 79
        Top = 170
        Width = 242
        Height = 24
        DataField = 'ID_CLIENTE'
        DataSource = dtsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID_CLIENTE'
        ListField = 'CODIGO;NOME'
        ListFieldIndex = 1
        ListSource = dtsClientes
        ParentFont = False
        TabOrder = 3
        OnClick = dbcbbClienteExit
        OnExit = dbcbbClienteExit
      end
      object btnBuscaProduto: TJvBitBtn
        Left = 327
        Top = 220
        Width = 24
        Height = 24
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F0F06B6B6A89898AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F06B6B6A4E4C495A5A5BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F06A6A
          694F4D495A5B5CEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0F06A6A694E4D495A5A5CF1F1F1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6B6A694E4D495A5A
          5CF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F8EAE9E6E9E7E4F4F3F2FF
          FFFFFFFFFF6666654C4A475B5B5DF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          D7D4CDD1CDC6DCD8D2DDD9D3D4CFC9D0CDC6D8D5CD7D7A765B5B5DF1F1F1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFECFCCC5E5E3DEFAF9F8FDFDFCFDFDFCF9F8F6E9
          E7E3D7D3CCD9D6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCD7E0DDD8
          FBFAF9FBFBFAFBFAFAFAFAF9F9F8F6F6F4F2E6E3DED1CDC6FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCDCAC1EEECE8F8F7F6FBFAF9FDFDFDFCFBFBF9F8F7F1
          EFECEAE7E2D0CBC3F3F2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCAC2EEEBE8
          F6F5F3FBFBFAFDFCFCFCFCFBFAF9F8F1EFECE7E3DED4CFC8E7E4E1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCDC9C1EAE6E2F6F4F3FCFBFBFCFCFBFCFBFBFAF9F8F5
          F3F0E6E2DCD1CCC4E9E7E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCBC3E3DED9
          FAF9F8FBFBFAFBFBFAFBFBFAFAF9F8FBFAF9E6E2DDCAC5BCF8F7F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEAE8E5D0CBC3F6F4F2FFFFFFFFFFFEFEFEFEFFFFFFFE
          FEFDDAD6CFD6D3CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD8D3
          D3CFC8F2F0EEFDFDFDFFFEFEF8F7F5DFDBD6CECAC3FDFDFCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E7E4CFCBC4CFCBC4D0CCC4CEC9C3DD
          DBD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 8
        OnClick = btnBuscaProdutoClick
      end
      object btnMoveMesa: TButton
        Left = 309
        Top = 116
        Width = 42
        Height = 25
        Caption = 'Mover'
        TabOrder = 1
        OnClick = btnMoveMesaClick
      end
      object dbedtMesa: TDBEdit
        Left = 18
        Top = 116
        Width = 285
        Height = 24
        DataField = 'DESCRICAO'
        DataSource = dtsPedido
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object btn2: TJvBitBtn
        Left = 327
        Top = 170
        Width = 24
        Height = 24
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F0F06B6B6A89898AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F06B6B6A4E4C495A5A5BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F06A6A
          694F4D495A5B5CEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF0F0F06A6A694E4D495A5A5CF1F1F1FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6B6A694E4D495A5A
          5CF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F8EAE9E6E9E7E4F4F3F2FF
          FFFFFFFFFF6666654C4A475B5B5DF1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
          D7D4CDD1CDC6DCD8D2DDD9D3D4CFC9D0CDC6D8D5CD7D7A765B5B5DF1F1F1FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFECFCCC5E5E3DEFAF9F8FDFDFCFDFDFCF9F8F6E9
          E7E3D7D3CCD9D6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDCD7E0DDD8
          FBFAF9FBFBFAFBFAFAFAFAF9F9F8F6F6F4F2E6E3DED1CDC6FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCDCAC1EEECE8F8F7F6FBFAF9FDFDFDFCFBFBF9F8F7F1
          EFECEAE7E2D0CBC3F3F2F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCAC2EEEBE8
          F6F5F3FBFBFAFDFCFCFCFCFBFAF9F8F1EFECE7E3DED4CFC8E7E4E1FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCDC9C1EAE6E2F6F4F3FCFBFBFCFCFBFCFBFBFAF9F8F5
          F3F0E6E2DCD1CCC4E9E7E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCBC3E3DED9
          FAF9F8FBFBFAFBFBFAFBFBFAFAF9F8FBFAF9E6E2DDCAC5BCF8F7F6FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFEAE8E5D0CBC3F6F4F2FFFFFFFFFFFEFEFEFEFFFFFFFE
          FEFDDAD6CFD6D3CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD8D3
          D3CFC8F2F0EEFDFDFDFFFEFEF8F7F5DFDBD6CECAC3FDFDFCFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E7E4CFCBC4CFCBC4D0CCC4CEC9C3DD
          DBD6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 4
        OnClick = btn2Click
      end
      object btnAdicionar: TJvBitBtn
        Left = 303
        Top = 220
        Width = 24
        Height = 24
        Default = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFAF9FAF7F4F6F5F4F4EFF4F1EFF4F1F4F3F4F6F2F4F9F8F9FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4F6E7F4EEA1E4C467D3A34D
          CC954DCC9567D3A3A2E3C3E6F3ECF4F0F2FEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
          F8F4F6C1EBD548C9901DBF7D1DC07F22C18322C1821DBF7E1DBF7C49C98EC0EA
          D3F3EFF1FEFEFEFFFFFFFFFFFFF7F3F5BDE9CE2DC17F1DC0801DC08146CB97DB
          F5EBDBF2E34DC0761DC1831DC0802EC07CBCE8CCF1EEF0FFFFFFFAF9FAE3F0E5
          3EC3801DC08125C2841DC0804ECD9CFFFFFFFFFEFA57BF721CC18325C2841EC0
          813FC27EDFEDE1F8F7F8F7F3F693DAAB1BBD791EC0811DC08014BE7B46CB97FF
          FFFFFFFCF64EBD6E13BF7F1DC0801EC1831BBD7892D9A9F1EDF0F0F1EF5CCA8A
          35C88F45CB954DCD994ECC9884DAB5FFFFFFFEFCF880CD904ECD9A4DCD9946C9
          9036C5895DCA88E9EBE8E5EEE447C37D50D0A1E1F7EFFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEDFECD24EC48049C580DFE8DEE5EEE147C178
          53D0A0E5F6EDFFFFFFFFFFFEFEFEFEFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFE0EC
          D24EC58149C37ADFE7DBEFEFEB58C17452C37A79CA8482CF9382CF949AD8AAFF
          FFFFFDFDF891CC8A83D09681CF9277C77F51C07459C171E8E8E4F5F2F68BC879
          49AA375AB95F58BD6856BE6C7DCD8FFFFFFFFDFCF771BE6856BF6E58BC675AB9
          5E49A9348BC876EFECF0F9F9FAD9E8CF48A0185BAF3F5EB65456B6587BC882FF
          FFFFFFFFFF72BC6257B75A5EB5525BAE3D4AA118D4E3CBF7F6F7FFFFFFF4F1F6
          ACD2964097095CAA315BAE3977BD60E5F2DDE3F0DA70B54D5CAE3A5CAA314097
          0AABD195EEEBF0FFFFFFFFFFFFFEFEFEF3F1F6ACD0964999184B9A195AA42B60
          AA3560A9355AA42B4B9A194A9918ABD096EEEBF0FEFEFEFFFFFFFFFFFFFFFFFF
          FEFEFEF3F1F5D7E4CF8BBC6F5FA337519A23519A2360A3378BBC6FD5E2CDEEEC
          F1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F7F8F2EFF3EAEBE9DF
          E6DCDFE6DCE8EAE7EFEDF1F7F6F7FFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 7
        OnClick = btnAdicionarClick
      end
      object edtQtd: TJvCalcEdit
        Left = 18
        Top = 220
        Width = 87
        Height = 24
        Alignment = taLeftJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MinValue = 0.010000000000000000
        ParentFont = False
        ShowButton = False
        TabOrder = 5
        Value = 1.000000000000000000
        DecimalPlacesAlwaysShown = False
      end
      object edtProduto: TEdit
        Left = 128
        Top = 220
        Width = 169
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = edtProdutoKeyPress
      end
      object edtCodigoCliente: TEdit
        Left = 18
        Top = 170
        Width = 57
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
        OnExit = edtCodigoClienteExit
      end
      object mmoOBS: TJvMemo
        Left = 6
        Top = 368
        Width = 355
        Height = 124
        TabStop = False
        Color = 14803425
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFlat = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object dbcbbAUTORIZADO: TDBLookupComboBox
        Left = 6
        Top = 341
        Width = 315
        Height = 21
        DataField = 'FK_DEPENDENTE'
        DataSource = dtsPedido
        KeyField = 'ID_DEPENDENTES'
        ListField = 'NOME'
        ListSource = dtsDependentes
        TabOrder = 10
      end
    end
    object pnl4: TPanel
      Left = 0
      Top = 0
      Width = 480
      Height = 498
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        480
        498)
      object lbl7: TLabel
        Left = 227
        Top = 463
        Width = 31
        Height = 13
        Caption = 'Total :'
      end
      object dbgrd1: TDBGrid
        Left = 16
        Top = 16
        Width = 458
        Height = 425
        Anchors = [akLeft, akTop, akRight, akBottom]
        DataSource = dtsMovProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyDown = dbgrd1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOV_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FK_PEDIDO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'FK_PRODUTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'nomeProduto'
            Title.Caption = 'Produto'
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Vlr_uni'
            Title.Caption = 'Vlr uni'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Title.Caption = 'Qtd'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGAMENTO'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Title.Caption = 'Total'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FK_CADERNETA'
            Visible = False
          end>
      end
      object btnExcluir: TJvBitBtn
        Left = 450
        Top = 447
        Width = 24
        Height = 24
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFAFAF9F9F8F4F0F4F4E3EBF5E3EBF5EFF2F3F7F6F2F9F9F8FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F8F4D6E0F67896EE3C60E627
          4CE2274BE23C60E67896EED5DFF5F5F4F0FEFEFEFFFFFFFFFFFFFFFFFFFEFEFE
          FAF8F4A2B3F31E3EDF0724DB142FDC1734DC1734DC142EDB0723DA1F3DE0A2B2
          F3F4F4EFFEFEFEFFFFFFFFFFFFF8F7F3A2B0F30E28DB122EDC2E4AD5123EDB19
          49E01948DF1240DE2E4CD91229D30E28DDA2AEF3F3F2EDFFFFFFFAFAF9D8DBF6
          2033DD122FDB8297EDE4E5F24C66CE0848DD084AE04A75E6E4E8F6838CD5122A
          D42133DFD4D7F2F8F8F7F8F8F37D84EC0920D92C4FE0EEF2FCFFFFFFEEECF441
          65CE3E77E4EDF2FCFFFFFFEEF0F92C4AD8091FDA7E83ECF2F1EDEFEFF34C54E2
          2C46E00F3DDD4977E7EDF2FDFFFFFFEDEDF6EDEFF8FFFFFFEDF2FD4975E60F3C
          DE2C44E04D55E3E8E8ECE2E3F23B47DD4761E52851E10834DC4364E4E8EDFCFF
          FFFFFFFFFFE9EBF84462E10933DD2850E1475FE43C47DDDCDDECE2E2F13B47DB
          485FE54955E22433DD455DE2E8ECFBFFFFFFFFFFFFE9EAF54454CB2331DB4A56
          E3485EE43C47DCDCDCEBEEEEF04A54DB434EDA454AD97276E5F0F1FCFFFFFFF0
          F1FCF1F2FDFFFFFFEDECF46267CE4349D6444EDB4B54DCE7E7EAF6F6F17D83DE
          2F37C85A60D8F1F2FCFFFFFFF0F1FC6A6FE36B70E4F1F2FDFFFFFFECECF55359
          CE3038C97D82DDF0EFEBF9F9F8D5D6EE3038C3444BCB9DA1E6EAEAFA7176DD3F
          47D44047D47277DEEAEBFA9DA1E5454CCB3139C3D0D1EAF7F7F6FFFFFFF4F4F1
          A1A5E3262DBB444BC85B61D1444BCC4A51CE4A51CE444BCC5B61D1444AC7262E
          BBA0A4E1EFEEEBFFFFFFFFFFFFFEFEFEF4F4F0A1A4E13038BB3037BC444AC449
          4FC6494FC6444AC32F37BB3139BCA0A4E0EFEEEAFEFEFEFFFFFFFFFFFFFFFFFF
          FEFEFEF4F3EFD2D4EB7B81D24A51C23C43BC3C43BC4A51C27B81D2D0D2E9EFEF
          EBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F7F3F2EFE9E9ECDC
          DDE9DCDDE9E7E7EBF0F0EDF7F7F6FFFFFFFFFFFFFFFFFFFFFFFF}
        TabOrder = 2
        OnClick = btnExcluirClick
      end
      object dbedt_total: TDBEdit
        Left = 264
        Top = 447
        Width = 153
        Height = 37
        TabStop = False
        Color = clInfoBk
        DataField = 'Total'
        DataSource = dtsMovProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object fdqPedido: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    UpdateOptions.AssignedValues = [uvEInsert, uvEUpdate, uvUpdateChngFields, uvUpdateNonBaseFields]
    UpdateOptions.EnableInsert = False
    UpdateOptions.UpdateChangedFields = False
    UpdateOptions.UpdateNonBaseFields = True
    UpdateOptions.KeyFields = 'ID_MESA'
    UpdateObject = fduPedidos
    SQL.Strings = (
      'select'
      '  id_mesa,'
      '  ativa,'
      '  DESCRICAO,'
      '  id_pedido,'
      '  fk_temporada,'
      '  dthr_abertura,'
      '  dthr_fexamento,'
      '  fk_dependente,'
      '  desconto,'
      '  valor_desconto,'
      '  pago,'
      '  nome_dependente,'
      '  anotar,'
      '  id_cliente,'
      '  tp_pagamento,'
      '  total'
      'from'
      '  mesa_pedido'
      'where'
      '  id_mesa = cast(:id_mesa as bigint)'
      
        '  and ((cast(:id_pedido as bigint) is null) or (id_pedido = cast' +
        '(:id_pedido as bigint))) '
      '')
    Left = 264
    Top = 40
    ParamData = <
      item
        Name = 'ID_MESA'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ID_PEDIDO'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object fdqPedidoID_MESA: TLargeintField
      FieldName = 'ID_MESA'
      Origin = 'ID_MESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqPedidoATIVA: TBooleanField
      FieldName = 'ATIVA'
      Origin = 'ATIVA'
    end
    object fdqPedidoID_PEDIDO: TLargeintField
      FieldName = 'ID_PEDIDO'
      Origin = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object fdqPedidoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object fdqPedidoDTHR_ABERTURA: TSQLTimeStampField
      FieldName = 'DTHR_ABERTURA'
      Origin = 'DTHR_ABERTURA'
    end
    object fdqPedidoDTHR_FEXAMENTO: TSQLTimeStampField
      FieldName = 'DTHR_FEXAMENTO'
      Origin = 'DTHR_FEXAMENTO'
    end
    object fdqPedidoFK_DEPENDENTE: TLargeintField
      FieldName = 'FK_DEPENDENTE'
      Origin = 'FK_DEPENDENTE'
    end
    object fdqPedidoDESCONTO: TBooleanField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
    end
    object fdqPedidoVALOR_DESCONTO: TBCDField
      FieldName = 'VALOR_DESCONTO'
      Origin = 'VALOR_DESCONTO'
      Precision = 18
      Size = 2
    end
    object fdqPedidoPAGO: TBooleanField
      FieldName = 'PAGO'
      Origin = 'PAGO'
    end
    object fdqPedidoNOME_DEPENDENTE: TStringField
      FieldName = 'NOME_DEPENDENTE'
      Origin = 'NOME_DEPENDENTE'
      Size = 150
    end
    object fdqPedidoANOTAR: TBooleanField
      FieldName = 'ANOTAR'
      Origin = 'ANOTAR'
      ProviderFlags = [pfInUpdate]
    end
    object fdqPedidoID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
    end
    object fdqPedidoTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
    object fdqPedidoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
    object fdqPedidoTP_PAGAMENTO: TIntegerField
      FieldName = 'TP_PAGAMENTO'
      Origin = 'TP_PAGAMENTO'
    end
  end
  object dtsPedido: TDataSource
    DataSet = fdqPedido
    Left = 304
    Top = 40
  end
  object fdqMovProduto: TFDQuery
    BeforeOpen = fdqMovProdutoBeforeOpen
    CachedUpdates = True
    Aggregates = <
      item
        Name = 'Total'
        Expression = 'SUM(VALOR_TOTAL)'
        Active = True
      end>
    AggregatesActive = True
    Connection = dtmcon.conexao
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_MOV_PRODUTO'
    UpdateOptions.KeyFields = 'ID_MOV_PRODUTO'
    UpdateOptions.AutoIncFields = 'ID_MOV_PRODUTO'
    UpdateObject = fduMovProduto
    SQL.Strings = (
      'select'
      '  id_mov_produto,'
      '  fk_pedido,'
      '  fk_produto,'
      '  quantidade,'
      '  pagamento,'
      '  valor_total,'
      '  fk_caderneta,'
      '  TIPO_PAGAMENTO,'
      
        '  cast(coalesce(fk_produto, '#39'T'#39'||TIPO_PAGAMENTO) as varchar(20))' +
        ' fks'
      'from'
      '  mov_produto mp'
      'where'
      '  mp.fk_pedido = :pedido')
    Left = 112
    Top = 104
    ParamData = <
      item
        Name = 'PEDIDO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object fdqMovProdutoID_MOV_PRODUTO: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_MOV_PRODUTO'
      Origin = 'ID_MOV_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdqMovProdutoFK_PEDIDO: TLargeintField
      FieldName = 'FK_PEDIDO'
      Origin = 'FK_PEDIDO'
    end
    object fdqMovProdutoFK_PRODUTO: TLargeintField
      FieldName = 'FK_PRODUTO'
      Origin = 'FK_PRODUTO'
    end
    object fdqMovProdutoQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      Precision = 18
    end
    object fdqMovProdutoPAGAMENTO: TBooleanField
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Required = True
    end
    object fdqMovProdutoFK_CADERNETA: TLargeintField
      FieldName = 'FK_CADERNETA'
      Origin = 'FK_CADERNETA'
      Visible = False
    end
    object fdqMovProdutonomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'nomeProduto'
      LookupDataSet = fdqProdutoslookup
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'FKS'
      Size = 100
      Lookup = True
    end
    object fdqMovProdutoVALOR_TOTAL: TBCDField
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      currency = True
      Precision = 18
      Size = 2
    end
    object fdqMovProdutoVlr_uni: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Vlr_uni'
      LookupDataSet = fdqProdutoslookup
      LookupKeyFields = 'ID'
      LookupResultField = 'VALOR_UNI'
      KeyFields = 'FK_PRODUTO'
      Lookup = True
    end
    object fdqMovProdutoTIPO_PAGAMENTO: TIntegerField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
    end
    object fdqMovProdutoFKS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FKS'
      Origin = 'FKS'
      ProviderFlags = []
    end
    object fdqMovProdutoTotal: TAggregateField
      FieldName = 'Total'
      Visible = True
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(VALOR_TOTAL)'
    end
  end
  object dtsMovProduto: TDataSource
    DataSet = fdqMovProduto
    Left = 152
    Top = 104
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
  object fdqClientes: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  cliente')
    Left = 344
    Top = 272
    object fdqClientesID_CLIENTE: TLargeintField
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqClientesCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqClientesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object fdqClientesCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 150
    end
    object fdqClientesOBS: TMemoField
      FieldName = 'OBS'
      Origin = 'OBS'
      BlobType = ftMemo
    end
    object fdqClientesPERMITIR_SALDO_NEGATIVO: TBooleanField
      FieldName = 'PERMITIR_SALDO_NEGATIVO'
      Origin = 'PERMITIR_SALDO_NEGATIVO'
      Required = True
    end
    object fdqClientesATIVO: TBooleanField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
    end
  end
  object dtsClientes: TDataSource
    DataSet = fdqClientes
    Left = 384
    Top = 272
  end
  object fdqProduto: TFDQuery
    CachedUpdates = True
    Connection = dtmcon.conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  produtos p'
      'where p.fk_temporada = (select'
      '                          t.id_temporadas'
      '                        from'
      '                          temporadas t'
      '                        where t.ativo) '
      'and p.CODIGO = :codigo')
    Left = 280
    Top = 200
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object fdqProdutoID_RODUTOS: TLargeintField
      FieldName = 'ID_RODUTOS'
      Origin = 'ID_RODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdqProdutoCODIGO: TLargeintField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object fdqProdutoFK_TEMPORADA: TLargeintField
      FieldName = 'FK_TEMPORADA'
      Origin = 'FK_TEMPORADA'
      Required = True
    end
    object fdqProdutoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 150
    end
    object fdqProdutoVALOR_UNI: TBCDField
      FieldName = 'VALOR_UNI'
      Origin = 'VALOR_UNI'
      Required = True
      Precision = 18
    end
  end
  object dtsProduto: TDataSource
    DataSet = fdqProduto
    Left = 320
    Top = 200
  end
  object fduPedidos: TFDUpdateSQL
    Connection = dtmcon.conexao
    InsertSQL.Strings = (
      ' update or insert into pedido'
      '    ('
      '      ID_PEDIDO'
      '      , fk_temporada'
      '      '
      '      , dthr_fexamento'
      '      , fk_mesa'
      '      , fk_dependente'
      '      , fk_cliente'
      '      , nome_dependente'
      '      , anotar'
      '      , tp_pagamento'
      '    )'
      '  values'
      '    ('
      '      :NEW_ID_PEDIDO'
      '      , :NEW_FK_TEMPORADA'
      '      , :NEW_DTHR_FEXAMENTO'
      '      , :ID_MESA'
      '      , :NEW_FK_DEPENDENTE'
      '      , :NEW_ID_CLIENTE'
      '      , :NEW_NOME_DEPENDENTE'
      '      , :NEW_ANOTAR'
      '      , :NEW_TP_PAGAMENTO'
      '    )'
      '  matching (ID_PEDIDO);')
    ModifySQL.Strings = (
      ' update or insert into pedido'
      '    ('
      '      ID_PEDIDO'
      '      , fk_temporada'
      '      , dthr_fexamento'
      '      , fk_mesa'
      '      , fk_dependente'
      '      , fk_cliente'
      '      , nome_dependente'
      '      , anotar'
      '    )'
      '  values'
      '    ('
      '      :NEW_ID_PEDIDO'
      '      , :NEW_FK_TEMPORADA'
      '      , :NEW_DTHR_FEXAMENTO'
      '      , :ID_MESA'
      '      , :NEW_FK_DEPENDENTE'
      '      , :NEW_ID_CLIENTE'
      '      , :NEW_NOME_DEPENDENTE'
      '      , :NEW_ANOTAR'
      '    )'
      '  matching (ID_PEDIDO);')
    DeleteSQL.Strings = (
      'DELETE FROM PEDIDO'
      'WHERE ID_PEDIDO = :OLD_ID_PEDIDO')
    FetchRowSQL.Strings = (
      'SELECT *'
      'from'
      '  mesa_pedido'
      'where'
      '  id_mesa = cast(:id_mesa as bigint)')
    Left = 272
    Top = 88
  end
  object fduMovProduto: TFDUpdateSQL
    Connection = dtmcon.conexao
    InsertSQL.Strings = (
      'INSERT INTO MOV_PRODUTO'
      '(ID_MOV_PRODUTO, FK_PEDIDO, FK_PRODUTO, QUANTIDADE, '
      '  PAGAMENTO, VALOR_TOTAL, FK_CADERNETA, TIPO_PAGAMENTO)'
      
        'VALUES (:NEW_ID_MOV_PRODUTO, :NEW_FK_PEDIDO, :NEW_FK_PRODUTO, :N' +
        'EW_QUANTIDADE, '
      
        '  :NEW_PAGAMENTO, :NEW_VALOR_TOTAL, :NEW_FK_CADERNETA, :NEW_TIPO' +
        '_PAGAMENTO)')
    ModifySQL.Strings = (
      'UPDATE MOV_PRODUTO'
      
        'SET ID_MOV_PRODUTO = :NEW_ID_MOV_PRODUTO, FK_PEDIDO = :NEW_FK_PE' +
        'DIDO, '
      '  FK_PRODUTO = :NEW_FK_PRODUTO, QUANTIDADE = :NEW_QUANTIDADE, '
      '  PAGAMENTO = :NEW_PAGAMENTO, VALOR_TOTAL = :NEW_VALOR_TOTAL, '
      
        '  FK_CADERNETA = :NEW_FK_CADERNETA, TIPO_PAGAMENTO = :NEW_TIPO_P' +
        'AGAMENTO'
      'WHERE ID_MOV_PRODUTO = :OLD_ID_MOV_PRODUTO')
    DeleteSQL.Strings = (
      'DELETE FROM MOV_PRODUTO'
      'WHERE ID_MOV_PRODUTO = :OLD_ID_MOV_PRODUTO')
    FetchRowSQL.Strings = (
      
        'SELECT ID_MOV_PRODUTO, FK_PEDIDO, FK_PRODUTO, QUANTIDADE, PAGAME' +
        'NTO, '
      '  VALOR_TOTAL, FK_CADERNETA, DATA_HORA, TIPO_PAGAMENTO'
      'FROM MOV_PRODUTO'
      'WHERE ID_MOV_PRODUTO = :ID_MOV_PRODUTO')
    Left = 112
    Top = 160
  end
  object bdsdb1: TBindSourceDB
    DataSet = fdqPedido
    ScopeMappings = <>
    Left = 416
    Top = 280
  end
  object bdl1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
  end
  object fdqDependente: TFDQuery
    MasterSource = dtsClientes
    MasterFields = 'ID_CLIENTE'
    Connection = dtmcon.conexao
    SQL.Strings = (
      'SELECT * FROM DEPENDENTES'
      'WHERE '
      'FK_CLIENTE = :ID_CLIENTE'
      'AND '
      'PERMITIR_RETIRAR = TRUE')
    Left = 336
    Top = 344
    ParamData = <
      item
        Name = 'ID_CLIENTE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dtsDependentes: TDataSource
    DataSet = fdqDependente
    Left = 384
    Top = 344
  end
end
