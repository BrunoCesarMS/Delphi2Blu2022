program Project_Ex5;

uses
  Vcl.Forms,
  Ex5 in 'Ex5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
