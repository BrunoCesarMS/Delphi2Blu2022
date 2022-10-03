program Project_Ex22;

uses
  Vcl.Forms,
  Ex22 in 'Ex22.pas' {Form22};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm22, Form22);
  Application.Run;
end.
