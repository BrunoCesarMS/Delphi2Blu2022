unit UContaCorrente;

interface

type
  TContaCorrente = class
    private
      FConta : integer;
      FNome  : string;
      FSaldo : currency;
      function GetConta: integer;
      function GetNome: string;
      function GetSaldo: currency;
      procedure SetConta(const Value: integer);
      procedure SetNome(const Value: string);
      procedure SetSaldo(const Value: currency);

    public
      procedure Depositar (const aDeposito: currency);
      procedure Sacar (const aSaque: currency);
      function AlterarNome: string;

      property Conta: integer read GetConta write SetConta;
      property Nome: string read GetNome write SetNome;
      property Saldo: currency read GetSaldo write SetSaldo;

      constructor Create(const aConta : integer; const aNome :
      string; const aSaldo : currency = 0);

  end;


implementation

{ TContaCorrente }


{ TContaCorrente }

function TContaCorrente.AlterarNome: string;
var
  xNome : string;
begin
  Result := xNome
end;

constructor TContaCorrente.Create(const aConta: integer; const aNome: string;
  const aSaldo: currency);
begin
  FConta := aConta;
  FNome  := aNome;
  FSaldo := aSaldo;
end;

procedure TContaCorrente.Depositar(const aDeposito: currency);
begin
  FSaldo := FSaldo + aDeposito
end;

procedure TContaCorrente.Sacar(const aSaque: currency);
begin
  FSaldo := FSaldo - aSaque
end;

function TContaCorrente.GetConta: integer;
begin
  Result := FConta
end;

function TContaCorrente.GetNome: string;
begin
  Result := FNome
end;

function TContaCorrente.GetSaldo: currency;
begin
  Result := FSaldo;
end;

procedure TContaCorrente.SetConta(const Value: integer);
begin
  FConta := Value;
end;

procedure TContaCorrente.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TContaCorrente.SetSaldo(const Value: currency);
begin
  FSaldo := Value;
end;

end.
