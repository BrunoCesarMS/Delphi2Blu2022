unit Ex2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Label7: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  xEdit1, xEdit2, xSoma, xSubtracao, xMultiplicacao, xDivisao: double;

begin
  xEdit1 := StrtoFloat(Edit1.Text);
  xEdit2 := StrtoFloat(Edit2.Text);
  xSoma := xEdit1 + xEdit2;
  xSubtracao := xEdit1 - xEdit2;
  xMultiplicacao := xEdit1 * xEdit2;
  xDivisao := xEdit1 / xEdit2;

  Label3.Caption := ('A soma dos n�meros � '+FloattoStr(xSoma));
  Label4.Caption := ('A subtra��o entre os n�meros � '+FloattoStr(xSubtracao));
  Label5.Caption := ('A multiplica��o entre os n�meros � '+FloattoStr(xMultiplicacao));
  Label6.Caption := ('A divis�o entre os n�meros � '+FormatFloat('0.##',xDivisao));

end;


end.
