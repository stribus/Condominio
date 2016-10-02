object dtmcon: Tdtmcon
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 678
  Width = 1107
  object conexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=D:\projetos\Condominio\DADOS.FDB'
      'Server=localhost')
    LoginPrompt = False
    BeforeConnect = con1BeforeConnect
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
end
