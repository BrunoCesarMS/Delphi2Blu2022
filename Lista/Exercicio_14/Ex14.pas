unit Ex14;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm14 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

procedure TForm14.Edit2Exit(Sender: TObject);
var
  xValor1, xValor2: integer;
begin
  xValor1:= StrToInt(Edit1.Text);
  xValor2:= StrToInt(Edit2.Text);

  if xValor1 = xValor2 then
    Label3.Caption:= 'Os valores s�o iguais.'
    else if
  else
    Label3.Caption:= IntToStr(xValor2)+' � o maior valor';


end;

end.
