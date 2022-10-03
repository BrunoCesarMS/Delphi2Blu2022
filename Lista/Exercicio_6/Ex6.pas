unit Ex6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel1: TPanel;


    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}


procedure TForm6.Button1Click(Sender: TObject);
var
  xValor_A, xValor_B, xTroca_A, xTroca_B: string;

begin
  Edit3.Enabled:= false;
  Edit4.Enabled:= false;

  xValor_A:= Edit1.Text;
  xValor_B:= Edit2.Text;
  xTroca_A:= xValor_A;
  xTroca_B:= xValor_B;
  Edit3.Text:=xTroca_B;
  Edit4.Text:=xTroca_A;

end;

end.
