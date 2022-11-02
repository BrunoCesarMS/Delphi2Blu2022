unit UfrmProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmPedidos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.Mask, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmProdutos = class(TForm)
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Descricao: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    FDTable1idUnidadeMedida: TLongWordField;
    Label3: TLabel;
    FDTableLookup: TFDTable;
    DataSource2: TDataSource;
    FDTableLookupId: TFDAutoIncField;
    FDTableLookupDescricao: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    FDTable1LookupUnidadeMedida: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutos: TfrmProdutos;

implementation

{$R *.dfm}

procedure TfrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;
  FDTableLookup.Close;

  frmProdutos := nil;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  FDTable1.open;
  FDTableLookup.Open;
end;

end.
