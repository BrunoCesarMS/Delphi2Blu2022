program Project_Ex24;

uses
  Vcl.Forms,
  Ex24 in 'Ex24.pas' {Form24};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm24, Form24);
  Application.Run;
end.
