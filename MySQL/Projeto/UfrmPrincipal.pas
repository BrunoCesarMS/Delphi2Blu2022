unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Produtos1: TMenuItem;
    Compradores1: TMenuItem;
    Fornecedores1: TMenuItem;
    UnMedida1: TMenuItem;
    Pedidos1: TMenuItem;
    procedure Produtos1Click(Sender: TObject);
    procedure Compradores1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure UnMedida1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  UfrmProdutos,UfrmCompradores, UfrmFornecedores, UfrmPedidos, UfrmUnidadeMedida;


{$R *.dfm}


procedure TForm1.Compradores1Click(Sender: TObject);
begin
  if frmCompradores = nil then
    frmCompradores := TfrmCompradores.Create(Self);

  frmCompradores.Show;
end;

procedure TForm1.Fornecedores1Click(Sender: TObject);
begin
  if frmFornecedores = nil then
    frmFornecedores := TfrmFornecedores.Create(Self);

  frmFornecedores.Show;
end;

procedure TForm1.Pedidos1Click(Sender: TObject);
begin
  if frmPedidos = nil then
    frmPedidos := TfrmPedidos.Create(Self);

  frmPedidos.Show;
end;

procedure TForm1.Produtos1Click(Sender: TObject);
begin
  if frmProdutos = nil then
    frmProdutos := TfrmProdutos.Create(Self);

  frmProdutos.Show;
end;

procedure TForm1.UnMedida1Click(Sender: TObject);
begin
  if frmUnidadeMedida = nil then
    frmUnidadeMedida := TfrmUnidadeMedida.Create(Self);

  frmUnidadeMedida.Show;
end;

end.
