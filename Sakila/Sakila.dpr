program Sakila;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {frmPrincipal},
  UdmSakila in 'UdmSakila.pas' {Form1},
  UfrmRelAtor in 'UfrmRelAtor.pas' {frmRelAtor},
  UfrmRelCidade in 'UfrmRelCidade.pas' {frmRelCidade},
  UfrmRelFilmes in 'UfrmRelFilmes.pas' {frmRelFilmes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmRelAtor, frmRelAtor);
  Application.CreateForm(TfrmRelCidade, frmRelCidade);
  Application.CreateForm(TfrmRelFilmes, frmRelFilmes);
  Application.Run;
end.
