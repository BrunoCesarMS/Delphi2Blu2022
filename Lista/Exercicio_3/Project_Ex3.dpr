program Project_Ex3;

uses
  Vcl.Forms,
  Ex3 in 'Ex3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
