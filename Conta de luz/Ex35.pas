unit Ex35;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    TipoCliente: TRadioGroup;
    Button1: TButton;
    Label2: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Edit2: TEdit;
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
  xConsumoKWH, xValorConta, xDesconto: double;

begin
  xConsumoKWH:= StrToFloat(Edit1.Text);
  xDesconto  := StrToFloat(Edit2.text);
  case TipoCliente.ItemIndex of
    0:
    begin
      xValorConta:= xConsumoKWH * 0.60;
      xValorConta:= xValorConta - xDesconto
    end;

    1:
    begin
      xValorConta:= xConsumoKWH * 0.48;
      xValorConta:= xValorConta - xDesconto
    end;

    2:
    begin
      xValorConta:= xConsumoKWH * 1.29;
      xValorConta:= xValorConta - xDesconto
    end;

    3:
    begin
      xValorConta:= xConsumoKWH * 2.18;
      xValorConta:= xValorConta - xDesconto
    end;

  end;

  Label2.Caption:= ('O valor da conta é R$ '
  +FormatFloat('###,###,###.00',xValorConta));

end;

end.
