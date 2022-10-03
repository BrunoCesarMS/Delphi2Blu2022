program Project_Ex14;

uses
  Vcl.Forms,
  Ex14 in 'Ex14.pas' {Form14};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm14, Form14);
  Application.Run;
end.
