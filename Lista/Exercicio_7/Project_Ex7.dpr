program Project_Ex7;

uses
  Vcl.Forms,
  Ex7 in 'Ex7.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
