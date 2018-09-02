object frmConta: TfrmConta
  Left = 0
  Top = 0
  Caption = 'frmConta'
  ClientHeight = 432
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object jvpnl1: TJvPanel
    Left = 0
    Top = 0
    Width = 321
    Height = 377
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = -21
    ExplicitHeight = 394
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
      DataSource = Dao.src_cliente
      TabOrder = 0
    end
    object dbedt_endereco: TDBEdit
      Left = 24
      Top = 124
      Width = 265
      Height = 21
      DataField = 'ENDERECO'
      DataSource = Dao.src_cliente
      TabOrder = 1
    end
    object dbedt_Telefone: TDBEdit
      Left = 24
      Top = 182
      Width = 265
      Height = 21
      DataField = 'TELEFONE'
      DataSource = Dao.src_cliente
      TabOrder = 2
    end
  end
  object jvpnl2: TJvPanel
    Left = 321
    Top = 0
    Width = 614
    Height = 377
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 94
    ExplicitTop = -21
    ExplicitWidth = 573
    ExplicitHeight = 394
    object dbgjvdbgrd1: TJvDBGrid
      Left = 0
      Top = 25
      Width = 604
      Height = 287
      Align = alClient
      DataSource = Dao.src_conta
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
      SelectColumnsDialogStrings.Caption = 'Select columns'
      SelectColumnsDialogStrings.OK = '&OK'
      SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
      EditControls = <>
      RowsHeight = 20
      TitleRowHeight = 23
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Title.Caption = 'Data'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA'
          Title.Caption = 'Hora'
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Produto'
          Width = 165
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Caption = 'quant'
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Title.Caption = 'valor total'
          Width = 74
          Visible = True
        end
        item
          Color = clCream
          Expanded = False
          FieldName = 'Acomulado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Visible = True
        end>
    end
    object jvpnl3: TJvPanel
      Left = 0
      Top = 0
      Width = 614
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 573
      object btn_incluir: TJvXPButton
        Left = 432
        Top = 0
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
        ParentShowHint = False
        ShowHint = True
        Style.Theme = OfficeXP
        Style.UseStyleManager = False
      end
      object btn_excluir: TJvXPButton
        Left = 375
        Top = 0
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
        ParentShowHint = False
        ShowHint = True
        Style.Theme = OfficeXP
        Style.UseStyleManager = False
      end
    end
    object jvpnl4: TJvPanel
      Left = 0
      Top = 312
      Width = 614
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitTop = 329
      ExplicitWidth = 573
      object lbl2: TLabel
        Left = 60
        Top = 16
        Width = 61
        Height = 16
        Caption = 'consumido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl3: TLabel
        Left = 180
        Top = 16
        Width = 28
        Height = 16
        Caption = 'pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl4: TLabel
        Left = 308
        Top = 3
        Width = 32
        Height = 16
        Caption = 'Saldo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dbedt_consumido: TDBEdit
        Left = 60
        Top = 32
        Width = 114
        Height = 27
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Color = 15527167
        Ctl3D = True
        DataField = 'CONSUMO'
        DataSource = Dao.src_total
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
        Left = 180
        Top = 32
        Width = 117
        Height = 21
        Color = 15794145
        DataField = 'PAGO'
        DataSource = Dao.src_total
        ReadOnly = True
        TabOrder = 1
      end
      object dbedt_total: TDBEdit
        Left = 303
        Top = 22
        Width = 138
        Height = 37
        Color = 14680063
        DataField = 'DEBITO'
        DataSource = Dao.src_total
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
      Left = 604
      Top = 25
      Width = 10
      Height = 287
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 563
      ExplicitHeight = 304
    end
  end
  object jvpnl5: TJvPanel
    Left = 0
    Top = 377
    Width = 935
    Height = 55
    Align = alBottom
    TabOrder = 2
    ExplicitLeft = -227
    ExplicitTop = 318
    ExplicitWidth = 894
    object btn_ok: TButton
      Left = 199
      Top = 6
      Width = 95
      Height = 40
      Cancel = True
      Caption = 'OK'
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
      Caption = 'Pagar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
end
