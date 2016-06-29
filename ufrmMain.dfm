object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Condominio'
  ClientHeight = 778
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object JvPageControl1: TJvPageControl
    Left = 0
    Top = 0
    Width = 1126
    Height = 778
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
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 685
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
        ExplicitTop = 8
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 685
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
        ExplicitTop = 8
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 65
        Width = 1118
        Height = 685
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
    end
  end
end
