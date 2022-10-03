program Project_Ex15;

uses
  Vcl.Forms,
  Ex15 in 'Ex15.pas' {Form15};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm15, Form15);
  Application.Run;
end.
