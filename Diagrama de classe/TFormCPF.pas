unit TFormCPF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UPessoa;

type
  TForm1 = class(TForm)
    CPF: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Endereco: TEdit;
    Label2: TLabel;
    Idade: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Nome: TEdit;
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
  xPessoa : TPessoaFisica;

begin
  xPessoa := TPessoaFisica.Create;
  try
    xPessoa.CPF      := CPF.Text;
    xPessoa.Nome     := Nome.Text;
    xPessoa.Endereco := Endereco.Text;

    if not xPessoa.ValidaCPF then
      ShowMessage('Nome: ' +xPessoa.Nome +#13)
    else
      ShowMessage('CPF válido')
  finally
    FreeAndNil(xPessoa);
  end;

end;

end.






