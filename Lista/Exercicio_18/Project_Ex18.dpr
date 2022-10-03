program Project_Ex18;

uses
  Vcl.Forms,
  Ex18 in 'Ex18.pas' {Form18};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm18, Form18);
  Application.Run;
end.
