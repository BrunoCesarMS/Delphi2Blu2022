unit UdmPedidos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL, Data.DB, FireDAC.Comp.Client;

type
  TDmPedidos = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmPedidos: TDmPedidos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmPedidos.DataModuleCreate(Sender: TObject);
begin
 FDConnection1.Connected := true;
end;

procedure TDmPedidos.DataModuleDestroy(Sender: TObject);
begin
FDConnection1.Connected := false;
end;

end.
