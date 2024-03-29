unit UfrmRelFilmes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmSakila, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmRelFilmes = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    btnExportar: TButton;
    btnVisualizar: TButton;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFilmes: TfrmRelFilmes;

implementation

{$R *.dfm}

end.
