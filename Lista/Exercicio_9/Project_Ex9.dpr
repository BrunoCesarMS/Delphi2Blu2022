program Project_Ex9;

uses
  Vcl.Forms,
  Ex9 in 'Ex9.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
