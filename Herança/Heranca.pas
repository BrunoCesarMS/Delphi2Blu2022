unit Heranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UAnimais;

type
  TForm1 = class(TForm)
    ComboBox1: TComboBox;
    Button1: TButton;
    Label1: TLabel;
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
 xAnimal: TAnimal;

begin
  xAnimal:= nil; //nil = sem referência a um ponteiro da memória

  try
    case TEnumAnimal(Combobox1.ItemIndex) of
      stCachorro :
        xAnimal := TCachorro.Create;
      stGato :
        xAnimal := TGato.Create;
      stPassaro :
        xAnimal := TPassaro.Create;
    end;

    ShowMessage(xAnimal.RetornarSom);
    ShowMessage('Tenho ' + IntToStr(xAnimal.Patas) + ' patas.');
  finally
    FreeAndNil(xAnimal);
  end;
end;

end.
