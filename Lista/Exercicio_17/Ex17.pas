unit Ex17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm17 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
var
  xPosicao: Array[1..5] of integer;
  xCont, xResultado: integer;

begin
  xResultado:= 0;

  for xCont := 1 to 5 do
    begin
      xPosicao[xCont] := StrToInt(inputbox('Informar', 'Informe um número', ''));
        if (xPosicao[xCont] >= 10) and (xPosicao[xCont] <= 150) then
        inc(xResultado)
    end;
    ShowMessage(IntToStr(xResultado) + ' número(s) estão entre 10 e 150.');
end;

end.
