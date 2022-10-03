program Project_Ex25;

uses
  Vcl.Forms,
  Ex25 in 'Ex25.pas' {Form25};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm25, Form25);
  Application.Run;
end.
