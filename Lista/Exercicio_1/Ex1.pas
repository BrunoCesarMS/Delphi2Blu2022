unit Ex1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  xEdit1: integer;
  xEdit2: integer;
  xSoma: integer;
begin
  xEdit1 := StrtoInt(Edit1.Text);
  xEdit2 := StrtoInt(Edit2.Text);
  xSoma := xEdit1 + xEdit2;
  Label3.Caption := ('Resultado da soma é: '+(InttoStr(xSoma)));

end;

end.
