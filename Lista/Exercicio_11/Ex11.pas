unit Ex11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm10 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Edit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Edit2Exit(Sender: TObject);
var
  xValorCusto, xMargemLucro, xValorVenda: double;
begin
  xValorCusto:= StrToFloat(Edit1.Text);
  xMargemLucro:= StrToFloat(Edit2.Text);
  xValorVenda:= xValorCusto + (xValorCusto * (xMargemLucro / 100));
  Label3.Caption:= ('O valor de venda do produto é R$ '
  +FormatFloat('#,#.00',xValorVenda));

end;

end.
