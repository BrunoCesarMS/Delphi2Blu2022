program Projeto_Combustivel;

uses
  Vcl.Forms,
  frm_principal in 'frm_principal.pas' {Form1},
  UCombustivel in 'UCombustivel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
