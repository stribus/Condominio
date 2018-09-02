object frmCadBase: TfrmCadBase
  Left = 0
  Top = 0
  ClientHeight = 232
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 184
    Width = 494
    Height = 48
    Align = alBottom
    ParentBackground = False
    TabOrder = 0
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
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 494
    Height = 184
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 1
    object dbedtCodigo: TDBEdit
      Left = 32
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object dbedtDescricao: TDBEdit
      Left = 72
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object fdqEdicao: TFDQuery
    BeforeOpen = fdqEdicaoBeforeOpen
    CachedUpdates = True
    Connection = dtmcon.conexao
    Left = 104
    Top = 32
  end
  object dtsEdicao: TDataSource
    DataSet = fdqEdicao
    Left = 144
    Top = 32
  end
end
