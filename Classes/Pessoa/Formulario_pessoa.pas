unit Formulario_pessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Nome: TEdit;
    Data: TEdit;
    Altura: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    Resultado: TLabel;
    procedure infopessoa;
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
uses
  UPessoa;



procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.infopessoa;
end;

procedure TForm1.infopessoa;
var
  xPessoa :  TPessoa;
  xIdade  : double;

begin
  xPessoa := TPessoa.Create;

  try
    xPessoa.Nome            := Nome.Text;
    xPessoa.DataNascimento  := StrToDate(Data.Text);
    xPessoa.Altura          := StrToFloat(Altura.Text);

    xIdade                  := xPessoa.Idade;

    Resultado.Caption := xPessoa.Nome +' tem ' +FormatFloat('0',xIdade)
    +' anos de idade e ' +FloatToStr(xPessoa.Altura) +' m de altura.';

    ShowMessage(xPessoa.Dados);
  finally
    FreeAndNil(xPessoa);

  end;
end;

end.
