program Project_Ex16;

uses
  Vcl.Forms,
  Ex16 in 'Ex16.pas' {Form16};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
