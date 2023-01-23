unit UfrmRelAtor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UdmSakila, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls;

type
  TfrmRelAtor = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtLastName: TEdit;
    btnExportar: TButton;
    btnVisualizar: TButton;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    FDQuery2: TFDQuery;
    procedure Filtro;
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAtor: TfrmRelAtor;

implementation

{$R *.dfm}

{ TfrmRelAtor }

procedure TfrmRelAtor.btnExportarClick(Sender: TObject);
var
  xCaminho : string;
begin
  Self.Filtro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Ator.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);

end;

procedure TfrmRelAtor.btnVisualizarClick(Sender: TObject);
begin
  self.Filtro;

  frxReport1.ShowReport;
end;

procedure TfrmRelAtor.Filtro;
begin
  FDQuery1.Close;
  FDQuery1.ParamByName('ULTIMONOME').AsString;
  if trim(edtLastName.Text)<> EmptyStr then
    FDQuery1.ParamByName('ULTIMONOME').AsString := '%' + Trim(edtLastName.Text) + '%';
  FDQuery1.Open;

end;

procedure TfrmRelAtor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelAtor := nil;
end;

end.
