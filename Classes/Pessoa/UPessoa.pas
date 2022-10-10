unit UPessoa;

interface

type
  TPessoa = class
  private
    FNome: string;
    FDataNascimento: TDate;
    FAltura: double;

    function GetNome: string;
    procedure SetNome(const Value: string);
    function GetDataNasc: TDate;
    procedure SetDataNasc(const Value: TDate);
    function GetAltura: double;
    procedure SetAltura(const Value: double);

  public
    function Idade: double;
    function Dados: string;

    property Nome: string           read GetNome write SetNome;
    property DataNascimento: TDate  read GetDataNasc write SetDataNasc;
    property Altura: double         read GetAltura write SetAltura;

  end;


implementation
uses
  SysUtils;
{ TPessoa }

function TPessoa.Idade: double;
var
  FIdade: double;

begin
FIdade := (Date - FDataNascimento) / 365.25;
Result := FIdade;
end;

function TPessoa.Dados: string;
begin
  Result := 'Nome: ' +FNome
            +' Data de Nascimento: ' +DateToStr(FDataNascimento)
            +' Altura: ' +FloatToStr(FAltura);
end;

function TPessoa.GetAltura: double;
begin
  Result := FAltura
end;

function TPessoa.GetDataNasc: TDate;
begin
  Result := FDataNascimento
end;

function TPessoa.GetNome: string;
begin
  Result := FNome
end;

procedure TPessoa.SetAltura(const Value: double);
begin
  FAltura := Value
end;

procedure TPessoa.SetDataNasc(const Value: TDate);
begin
  FDataNascimento := Value
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value
end;

end.
