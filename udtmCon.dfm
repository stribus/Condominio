object dtmcon: Tdtmcon
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 310
  Width = 639
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=D:\projetos\Condominio\DADOS.FDB'
      'Server=localhost'
      'ConnectionDef=Condominio')
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object wcs1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 96
  end
  object fdqCons: TFDQuery
    Connection = conexao
    Left = 96
    Top = 96
  end
  object fdmConfigIni: TFDManager
    ConnectionDefFileName = '.\teste.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 112
    Top = 32
  end
end
