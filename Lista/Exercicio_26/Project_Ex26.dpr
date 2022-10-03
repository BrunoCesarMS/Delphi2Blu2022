program Project_Ex26;

uses
  Vcl.Forms,
  Ex26 in 'Ex26.pas' {Form26};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm26, Form26);
  Application.Run;
end.
