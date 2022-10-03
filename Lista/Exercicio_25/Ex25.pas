unit Ex25;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm25 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form25: TForm25;

implementation

{$R *.dfm}

procedure TForm25.Button1Click(Sender: TObject);
var
  xValor1, xValor2: double;

begin
  xValor1:= StrToFloat(Edit1.Text);
  xValor2:= StrToFloat(Edit2.Text);

  if xValor1 = xValor2 then
    ShowMessage('Os valores são iguais!')
    else if xValor1 > xValor2 then
    ShowMessage('Os valores são diferentes!'
    +#13+#13+FloatToStr(xValor1)+' é maior que '+FloatToStr(xValor2))
      else
          ShowMessage('Os valores são diferentes!'
    +#13+#13+FloatToStr(xValor2)+' é maior que '+FloatToStr(xValor1))

end;

end.
