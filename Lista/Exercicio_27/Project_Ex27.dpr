program Project_Ex27;

uses
  Vcl.Forms,
  Ex27 in 'Ex27.pas' {Form27};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm27, Form27);
  Application.Run;
end.
