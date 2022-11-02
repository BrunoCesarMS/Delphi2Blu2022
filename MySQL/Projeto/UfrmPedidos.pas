unit UfrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmPedidos, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPedidos = class(TForm)
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDTable1Id: TFDAutoIncField;
    FDTable1Numero: TLongWordField;
    FDTable1DataPedido: TDateField;
    FDTable1idComprador: TLongWordField;
    FDTable1idFornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DataSource2: TDataSource;
    FDTableLookUpComprador: TFDTable;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DataSource3: TDataSource;
    FDTableLookUpFornecedor: TFDTable;
    Fornecedor: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label6: TLabel;
    DataSource4: TDataSource;
    FDTable2: TFDTable;
    FDTable2Id: TFDAutoIncField;
    FDTable2Quantidade: TFloatField;
    FDTable2idPedidoCompra: TLongWordField;
    FDTable2idProduto: TLongWordField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    FDTable3: TFDTable;
    FDTable2LookupProduto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FDTable2BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}


procedure TfrmPedidos.FDTable2BeforePost(DataSet: TDataSet);
begin
  FDTable2idPedidoCompra.AsInteger := FDTable1Id.AsInteger
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDTable1.Close;
  FDTable2.Close;
  FDTable3.Close;
  FDTableLookUpComprador.Close;
  FDTableLookUpFornecedor.Close;

  frmPedidos := nil;

end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  FDTable1.Open;
  FDTable2.open;
  fdtable3.open;
  FDTableLookUpComprador.Open;
  FDTableLookUpFornecedor.Open;

end;

end.
