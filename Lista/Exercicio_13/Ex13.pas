unit Ex13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
var
  xValor: double;
begin
  xValor := StrToFloat(Edit1.Text);

  if xValor > 10 then
    ShowMessage('Este valor é MAIOR que 10')
  else
    ShowMessage('Este valor é MENOR que 10')

end;

end.
