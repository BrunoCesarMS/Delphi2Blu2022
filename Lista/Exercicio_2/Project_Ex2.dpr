program Project_Ex2;

uses
  Vcl.Forms,
  Ex2 in 'Ex2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
