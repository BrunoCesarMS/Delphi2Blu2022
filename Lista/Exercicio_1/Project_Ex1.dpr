program Project_Ex1;

uses
  Vcl.Forms,
  Ex1 in 'Ex1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
