object dtmcon: Tdtmcon
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 310
  Width = 639
  object wcs1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 96
  end
  object fdqCons: TFDQuery
    ConnectionName = 'Condominio'
    Left = 96
    Top = 96
  end
  object fdmConfigIni: TFDManager
    ConnectionDefFileName = '.\config.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    BeforeLoadConnectionDefFile = fdmConfigIniBeforeLoadConnectionDefFile
    Left = 112
    Top = 32
  end
  object conexao: TFDConnection
    Params.Strings = (
      'CharacterSet=WIN1252'
      'ConnectionDef=Condominio')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object fdpdl1: TFDPhysFBDriverLink
    Left = 200
    Top = 176
  end
  object fdtrans1: TFDTransaction
    Options.DisconnectAction = xdRollback
    Connection = conexao
    Left = 168
    Top = 88
  end
  object fdmnrmtclntlnk1: TFDMoniRemoteClientLink
    Tracing = True
    Left = 312
    Top = 88
  end
end
