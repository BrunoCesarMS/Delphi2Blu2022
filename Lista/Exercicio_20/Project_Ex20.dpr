program Project_Ex20;

uses
  Vcl.Forms,
  Ex20 in 'Ex20.pas' {Form20};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm20, Form20);
  Application.Run;
end.
