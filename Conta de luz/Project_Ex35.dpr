program Project_Ex35;

uses
  Vcl.Forms,
  Ex35 in 'Ex35.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
