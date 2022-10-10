program Project_Pessoa;

uses
  Vcl.Forms,
  Formulario_pessoa in 'Formulario_pessoa.pas' {Form1},
  UPessoa in 'UPessoa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
