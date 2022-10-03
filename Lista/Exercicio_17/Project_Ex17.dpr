program Project_Ex17;

uses
  Vcl.Forms,
  Ex17 in 'Ex17.pas' {Form17};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm17, Form17);
  Application.Run;
end.
