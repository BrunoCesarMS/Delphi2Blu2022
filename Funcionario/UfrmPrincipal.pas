unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UFuncionario;

type
  TForm1 = class(TForm)
    edtNome: TEdit;
    edtSobrenome: TEdit;
    edtSalario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    btnAdicionar: TButton;
    Memo1: TMemo;
    btnExibir: TButton;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExibirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AdicionarFuncionario;
    procedure ExibirFuncionario;
  end;

var
  Form1: TForm1;
  FLista : TStringList;
  xFuncionario : TFuncionario;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.AdicionarFuncionario;

begin
    xFuncionario := TFuncionario.Create(edtNome.Text,
                                      edtSobrenome.Text,
                                      StrToFloat(edtSalario.Text));

    FLista.Add('Funcionário: ' + xFuncionario.Nome + ' ' + xFuncionario.Sobrenome
    + ' - ' + 'Sálário: R$ ' + FormatFloat('###,###.00', xFuncionario.Salario));
end;

procedure TForm1.btnAdicionarClick(Sender: TObject);
begin
  Self.AdicionarFuncionario;

  edtNome.Text      := '';
  edtSobrenome.Text := '';
  edtSalario.Text   := '';

  edtNome.SetFocus;
end;

procedure TForm1.btnExibirClick(Sender: TObject);
begin
  Self.ExibirFuncionario;
end;

procedure TForm1.ExibirFuncionario;
var
  i : integer;
begin
  Try
    if assigned(FLista) then
    begin
      Memo1.Clear;
      I := 0;
      for I := 0 to FLista.Count - 1 do
      Memo1.Lines.Add(FLista[i])
    end;
  Finally
    FreeAndNil(FLista);
    FreeAndNil(xFuncionario)
  End;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FLista := TStringList.Create;
end;

end.
