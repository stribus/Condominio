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
      'ConnectionDef=Condominio'
      'DropDatabase=No')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
end
