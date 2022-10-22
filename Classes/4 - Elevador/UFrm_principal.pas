unit UFrm_principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UElevador, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    FElevador : TElevador;
  public
    { Public declarations }
    procedure Sair;
    procedure Entrar;
    procedure Subir;
    procedure Descer;
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);

begin
  if not assigned(FElevador) then
    FElevador := TElevador.Create(StrToInt(InputBox('Capacidade',
    'Informe a capadidade do elevador','')),StrToInt(InputBox('Andares',
    'Informe o total de andares do prédio','')));

      Label1.Caption:= 'Posicao do Elevador '+ IntToStr(FElevador.AndarAtual)
  + '/' + IntToStr(FElevador.TotalAndares);

    Label2.Caption:= 'Capacidade '+ IntToStr(FElevador.QtdPessoas)
  + '/' + IntToStr(FElevador.Capacidade);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(FElevador)
end;

procedure TForm1.Sair;
var
  xSair : integer;
begin
  xSair := 1;
  FElevador.Sair(xSair);

    Label1.Caption:= 'Posicao do Elevador '+ IntToStr(FElevador.AndarAtual)
  + '/' + IntToStr(FElevador.TotalAndares);

    Label2.Caption:= 'Capacidade '+ IntToStr(FElevador.QtdPessoas)
  + '/' + IntToStr(FElevador.Capacidade);
end;

procedure TForm1.Entrar;
var
  xEntrar : integer;
begin
  xEntrar := 1;
  FElevador.Entrar(xEntrar);

  Label1.Caption:= 'Posicao do Elevador '+ IntToStr(FElevador.AndarAtual)
  + '/' + IntToStr(FElevador.TotalAndares);

    Label2.Caption:= 'Capacidade '+ IntToStr(FElevador.QtdPessoas)
  + '/' + IntToStr(FElevador.Capacidade);
end;

procedure TForm1.Subir;
begin
  FElevador.Subir;

    Label1.Caption:= 'Posicao do Elevador '+ IntToStr(FElevador.AndarAtual)
  + '/' + IntToStr(FElevador.TotalAndares);

    Label2.Caption:= 'Capacidade '+ IntToStr(FElevador.QtdPessoas)
  + '/' + IntToStr(FElevador.Capacidade);
end;

procedure TForm1.Descer;
begin
  FElevador.Descer;

    Label1.Caption:= 'Posicao do Elevador '+ IntToStr(FElevador.AndarAtual)
  + '/' + IntToStr(FElevador.TotalAndares);

    Label2.Caption:= 'Capacidade '+ IntToStr(FElevador.QtdPessoas)
  + '/' + IntToStr(FElevador.Capacidade);
end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.Entrar
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  Self.Sair
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Self.Subir
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Self.Descer
end;

end.
