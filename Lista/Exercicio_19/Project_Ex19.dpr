program Project_Ex19;

uses
  Vcl.Forms,
  Ex19 in 'Ex19.pas' {Form19};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm19, Form19);
  Application.Run;
end.
