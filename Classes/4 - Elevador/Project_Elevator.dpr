program Project_Elevator;

uses
  Vcl.Forms,
  UFrm_principal in 'UFrm_principal.pas' {Form1},
  UElevador in 'UElevador.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
