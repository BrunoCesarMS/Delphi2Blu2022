unit frm_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UCombustivel;

type
  TForm1 = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);


  private
    { Private declarations }
    FCombustivel : TBomba;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
var
  xValor : double;
begin
   xValor:=
   StrToFloat(inputbox('Valor de abastecimento',
   'Informe o valor a ser abastecido: ',''));
   FCombustivel.SetValor(xValor);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  xQtd : double;
begin
  xQtd:=
  StrToFloat(inputbox('Quantidade de abastecimento',
  'Informe a quantidade ser abastecido: ',''));
  FCombustivel.SetQtd(xQtd);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  xNovoValor : double;
begin
  xNovoValor := StrToFloat(inputbox('Valor do litro do combustível',
  'Informe o novo valor do combustivel: ',''));
  FCombustivel.SetAlteraVlr(xNovoValor)
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  xNovaQtd : double;
begin
  xNovaQtd := StrToFloat(inputbox('Quantidade de litros no tanque:',
  'Informe a nova quantidade de combustivel no tanque ',''));
  FCombustivel.SetAlteraQtd(xNovaQtd)
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  if not assigned(FCombustivel) then
    FCombustivel:= TBomba.Create(StrToFloat(inputbox('Valor por litro',
    'Informe o valor por litro do combustível: ','')),
    StrToFloat(inputbox('Quantidade de litros no tanque:',
    'Informe a quantidade de combustivel no tanque ','')));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FCombustivel);
end;

end.
