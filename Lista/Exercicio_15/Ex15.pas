unit Ex15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
var
  xValor: double;
begin
  xValor:= StrToFloat(Edit1.Text);

  if xValor >= 100 then
    else if xValor <= 200 then
      Label2.Caption:= 'Este valor está entre 100 e 200'
  else
     Label2.Caption:= 'Este valor não está entre 100 e 200'

end;

end.
