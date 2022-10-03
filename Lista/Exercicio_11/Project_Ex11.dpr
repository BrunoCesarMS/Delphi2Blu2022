program Project_Ex11;

uses
  Vcl.Forms,
  Ex11 in 'Ex11.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
