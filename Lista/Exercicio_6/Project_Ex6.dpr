program Project_Ex6;

uses
  Vcl.Forms,
  Ex6 in 'Ex6.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
