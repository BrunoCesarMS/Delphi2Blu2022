unit Ex21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm21 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

procedure TForm21.Button1Click(Sender: TObject);
var
  xNome: array[1..5] of string;
  xSexo: array[1..5] of string;
  xSaude: array[1..5] of string;
  xIdade: array[1..5] of integer;
  xContador, xApto, xInapto, xQuantidade: integer;


begin
  xQuantidade:= StrToInt(Edit1.Text);
  xContador:= 0;
  xApto:=0;
  xInapto:= 0;

  repeat
  inc(xContador);
  xNome[xContador]:= inputbox('Nome','Digite seu nome','');
  xSexo[xContador]:= inputbox('Sexo','Digite seu sexo, M= Masculino ou F=Feminino','');
  xIdade[xContador]:= StrToInt(inputbox('Idade','Digite sua idade',''));
  xSaude[xContador]:= inputbox('Sa�de','Digite seu estado de sa�de, B=Boa ou R=Ruim','');

  if xSexo[xContador] = 'F' then
    ShowMessage('Voc� � inapto(a) ao servi�o militar')
    else if (xSexo[xContador] = 'M') and (xIdade[xContador] >= 18)
     and (xSaude[xContador] = 'B') then
      ShowMessage('Voc� est� apto ao servi�o militar')
      else ShowMessage('Voc� est� inapto ao servi�o militar');

  if xSexo[xContador] = 'F' then
    inc(xInapto)
    else if (xSexo[xContador] = 'M') and (xIdade[xContador] >= 18)
     and (xSaude[xContador] = 'B') then
      inc(xApto)
      else inc(xInapto)

  until xContador = xQuantidade;

  ShowMessage('H� '+IntToStr(xApto) +' pessoa(s) apta(s) e ' +IntToStr(xInapto)
  +' pessoa(s) inapta(s) ao servi�o militar')


end;

end.
