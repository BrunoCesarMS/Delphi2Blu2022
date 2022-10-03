program Project_Ex21;

uses
  Vcl.Forms,
  Ex21 in 'Ex21.pas' {Form21};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm21, Form21);
  Application.Run;
end.
