unit UfrmRelCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, UdmSakila, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF;

type
  TfrmRelCidade = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dtsLookupCidade: TDataSource;
    LookupCidade: TFDTable;
    LookupCidadecity: TStringField;
    LookupCidadecity_id: TWordField;
    LookupCidadecountry_id: TWordField;
    LookupCidadelast_update: TSQLTimeStampField;
    QryCidade: TFDQuery;
    btnExportar: TButton;
    btnVisualizar: TButton;
    QryEndereco: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    dtsCidade: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    procedure FormCreate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure Filtro;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCidade: TfrmRelCidade;

implementation

{$R *.dfm}


procedure TfrmRelCidade.btnExportarClick(Sender: TObject);
var
  xCaminho : string;
begin
  Self.Filtro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.FileName := Format('%s\Cidade.pdf', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelCidade.btnVisualizarClick(Sender: TObject);
begin
  self.Filtro;

  frxReport1.ShowReport;
end;

procedure TfrmRelCidade.Filtro;
begin
  QryCidade.Close;
  QryEndereco.close;

  QryEndereco.ParamByName('IDCITY').AsInteger := 0;

  if DBLookupComboBox1.Text <> EmptyStr then
    QryEndereco.ParamByName('IDCITY').AsInteger :=
    LookupCidade.FieldByName('CITY_ID').AsInteger;

  QryCidade.Open;
  QryEndereco.open;

end;

procedure TfrmRelCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;

  QryCidade.Close;
  QryEndereco.close;

  LookupCidade.Close;

  frmRelCidade := nil;
end;

procedure TfrmRelCidade.FormCreate(Sender: TObject);
begin
  LookupCidade.Open;
end;

end.
