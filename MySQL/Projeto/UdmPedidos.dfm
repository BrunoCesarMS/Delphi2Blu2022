object DmPedidos: TDmPedidos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 436
  Width = 466
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=devs2blu'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 72
    Top = 40
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\bcmsilva\Documents\Delphi2Blu2022\MySQL\Projeto\libmysq' +
      'l.dll'
    Left = 112
    Top = 136
  end
end
