unit UfrmCompradores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmPedidos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmCompradores = class(TForm)
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Nome: TStringField;
    FDTable1Cargo: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCompradores: TfrmCompradores;

implementation

{$R *.dfm}

procedure TfrmCompradores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;

  frmCompradores := nil;
end;

procedure TfrmCompradores.FormCreate(Sender: TObject);
begin
  FDTable1.open;
end;

end.
