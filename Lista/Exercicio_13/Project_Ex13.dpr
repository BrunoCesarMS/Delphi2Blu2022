program Project_Ex13;

uses
  Vcl.Forms,
  Ex13 in 'Ex13.pas' {Form13};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm13, Form13);
  Application.Run;
end.
