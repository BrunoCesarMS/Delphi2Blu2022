unit Ex19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm19 = class(TForm)
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
  Form19: TForm19;

implementation

{$R *.dfm}

procedure TForm19.Button1Click(Sender: TObject);
var
  xVetor1: Array[1..5] of string;
  xVetor2: Array[1..5] of string;
  xContador, xHomem, xMulher, xQuantidade: integer;

begin
  xContador:= 0;
  xHomem:= 0;
  xMulher:= 0;
  xQuantidade:= StrToInt(Edit1.Text);

  for xContador := 1 to xQuantidade do
    begin
      xVetor1[xContador]:= inputbox('Nome','Informe o nome ','');
      xVetor2[xContador]:= inputbox('Gênero','Informe o gênero (F = Feminino ou M = Masculino)','');

      if (xVetor2[xContador] = 'M') or (xVetor2[xContador] = 'm')then
        begin
        inc(xHomem);
        xVetor2[xContador]:= 'Homem';
        end
          else
            begin
             xVetor2[xContador]:= 'Mulher';
             inc(xMulher);
            end;
    ShowMessage(xVetor1[xContador] + ' é ' + xVetor2[xContador]);

    end;

    ShowMessage('Há ' +IntToStr(xHomem) + ' homens e ' + IntToStr(xMulher)
    + ' mulheres');

end;


end.
