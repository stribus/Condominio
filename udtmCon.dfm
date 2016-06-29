object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 678
  Width = 1107
  object conexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    Left = 40
    Top = 32
  end
  object fblink1: TFDPhysFBDriverLink
    Left = 112
    Top = 32
  end
end
