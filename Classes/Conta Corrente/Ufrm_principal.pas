unit Ufrm_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UContaCorrente;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    FContaCorrente : TContaCorrente ;

  public

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
  if not assigned(FContaCorrente) then
    FContaCorrente := TContaCorrente.Create(StrToInt(Edit1.Text),Edit2.Text,StrToCurr(Edit3.Text));

    ShowMessage('Conta criada com sucesso!')

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  xSaque : currency;
begin
  xSaque := StrToCurr(inputbox('Saque', 'Valor do saque', '0,00' ));
  FContaCorrente.Sacar(xSaque);

  ShowMessage('Seu saldo é de: R$ ' +FormatCurr('#.00',FContaCorrente.Saldo));
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  xDeposito : currency;
begin
  xDeposito := StrToCurr(inputbox('Depósito', 'Valor de depósito', '0,00' ));
  FContaCorrente.Depositar(xDeposito);

  ShowMessage('Seu saldo é de: R$ ' +FormatCurr('#.00',FContaCorrente.Saldo));
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FContaCorrente.AlterarNome();
  ShowMessage('Nome alterado com sucesso')
end;

end.
