unit Ex24;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm24 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

{$R *.dfm}

procedure TForm24.Button1Click(Sender: TObject);
var
  xNumero: double;

begin
  xNumero:= StrToFloat(Edit1.Text);
  if xNumero = 0 then
    Label2.Caption:= 'Número igual a zero'
    else if xNumero > 0 then
      Label2.Caption:= 'Número POSITIVO'
      else Label2.Caption:= 'Número NEGATIVO'

end;


end.
