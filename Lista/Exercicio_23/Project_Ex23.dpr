program Project_Ex23;

uses
  Vcl.Forms,
  Ex23 in 'Ex23.pas' {Form23};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm23, Form23);
  Application.Run;
end.
