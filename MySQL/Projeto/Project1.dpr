program Project1;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UfrmProdutos in 'UfrmProdutos.pas' {frmProdutos},
  UfrmCompradores in 'UfrmCompradores.pas' {frmCompradores},
  UfrmFornecedores in 'UfrmFornecedores.pas' {frmFornecedores},
  UfrmPedidos in 'UfrmPedidos.pas' {frmPedidos},
  UfrmUnidadeMedida in 'UfrmUnidadeMedida.pas' {frmUnidadeMedida},
  UdmPedidos in 'UdmPedidos.pas' {DmPedidos: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmPedidos, DmPedidos);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
