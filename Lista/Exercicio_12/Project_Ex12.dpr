program Project_Ex12;

uses
  Vcl.Forms,
  Ex12 in 'Ex12.pas' {Form12};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm12, Form12);
  Application.Run;
end.
