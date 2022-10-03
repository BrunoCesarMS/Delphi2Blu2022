unit Ex20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TForm20 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form20: TForm20;

implementation
uses Math;

{$R *.dfm}


procedure TForm20.Button1Click(Sender: TObject);
var
  xAnoCarro: array[1..5] of integer;
  xValorCarro: array[1..5] of double;
  xContador, xQuantidade: integer;
  xDesconto, xValorDesconto: double;

begin
  xContador:= 1;
  xQuantidade:= 0;

  (*xAnoCarro[xContador]   := StrToInt(inputbox('Ano do carro','Informe o ano do carro',''));
  xValorCarro[xContador] := StrToFloat(inputbox('valor do carro','Informe o valor do carro',''));
    if xAnoCarro[xContador] > 2000 then
      xDesconto:= 0.07 else
      xDesconto:= 0.12;
  xValorCarro[xContador]:= xValorCarro[xContador] - (xValorCarro[xContador] * xDesconto);
  *)

  application.MessageBox('Deseja continuar calculando o valor dos veículos',
 'Venda de carros', MB_YESNO);

repeat
  inc(xContador);
  xAnoCarro[xContador]:=
  StrToInt(inputbox('Ano do carro','Informe o ano do carro',''));
  xValorCarro[xContador]:=
  StrToFloat(inputbox('valor do carro','Informe o valor do carro',''));

  if xAnoCarro[xContador] > 2000 then
        xDesconto:= 0.07 else
        xDesconto:= 0.12;
  xValorCarro[xContador]:= xValorCarro[xContador]
  - (xValorCarro[xContador] * xDesconto);

  if xAnoCarro[xContador] < 2000 then
    inc(xQuantidade);

until
  Application.MessageBox('Deseja continuar calculando o valor dos veículos',
 'Venda de carros', MB_YESNO) = idno;

 ShowMessage('Há '+IntToStr(xQuantidade)+' carros até ano 2000.');
 ShowMessage('Este é o valor geral dos carros '+FormatFloat('#.00',(Sum(xValorCarro))));


end;

end.
