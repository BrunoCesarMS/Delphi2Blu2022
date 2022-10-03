program Project_Ex10;

uses
  Vcl.Forms,
  Ex10 in 'Ex10.pas' {Form11};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm11, Form11);
  Application.Run;
end.
