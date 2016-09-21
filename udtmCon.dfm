object dtmcon: Tdtmcon
  OldCreateOrder = False
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
    Left = 40
    Top = 32
  end
  object fblink1: TFDPhysFBDriverLink
    Left = 112
    Top = 32
  end
  object wcs1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 40
    Top = 96
  end
end
