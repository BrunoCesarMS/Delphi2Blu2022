unit Ex26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TEnumNumeros = (opUm = 1, opDois, opTres, opQuatro, opCinco);

  TForm26 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.dfm}

procedure TForm26.Button1Click(Sender: TObject);
var
  xNumero: integer;

begin
  xNumero:= StrToInt(Edit1.Text);
  case TEnumNumeros(xNumero) of
  opUm:
    Label2.Caption:='UM';
  opDois:
    Label2.Caption:='DOIS';
  opTres:
    Label2.Caption:='TRÊS';
  opQuatro:
    Label2.Caption:='QUATRO';
  opCinco:
    Label2.Caption:='CINCO'
  else
    Label2.Caption:='';
    ShowMessage('Número inválido')
  end;

end;

end.
