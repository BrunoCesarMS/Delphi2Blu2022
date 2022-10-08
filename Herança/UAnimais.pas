unit UAnimais;

interface

type
  TEnumAnimal = (stCachorro, stGato, stPassaro);

  //TObject
  TAnimal = class //sempre que estiver, ele herda da *TObject*
  private
    FPatas: Byte; //tipo primitivo o Delphi limpa da memoria
    // não necessário destruir

    function GetPatas: byte;
    procedure SetPatas(const aValue: byte);
  public
    //Virtual e abstract sempre serão as filhas que terão implementação
    function RetornarSom: string; virtual; abstract;
    property Patas: byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
    private
    public
      constructor Create;
      //
      function RetornarSom: string; override;
      //override = sobrescreve o metodo da classe pai
  end;

  TGato = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: string; override;
  end;

  TPassaro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: string; override;
  end;
implementation

{ TAnimal }

function TAnimal.GetPatas: byte;
begin
  Result:= FPatas;
end;

procedure TAnimal.SetPatas(const aValue: byte);
begin
  FPatas:= avalue;
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  Patas:= 2;
end;

function TPassaro.RetornarSom: string;
begin
  Result:= 'Pru Pru'
end;

{ TGato }

constructor TGato.Create;
begin
  Patas:= 4;
end;

function TGato.RetornarSom: string;
begin
    Result:= 'Miau'
end;

{ TCachorro }

constructor TCachorro.Create;
begin
  Patas:= 4;
end;

function TCachorro.RetornarSom: string;
begin
  Result:= 'Au Au'
end;

end.
