unit UFuncionario;

interface

uses
  SysUtils;

type
  TFuncionario = class
    private
      FNome, FSobrenome: string;
      FSalario: double;

      function GetNome: string;
      function GetSalario: double;
      function GetSobrenome: string;

      procedure SetSobrenome(const Value: string);
      procedure SetNome(const Value: string);
      procedure SetSalario(const Value: double);

    public
      property Nome: string read GetNome write SetNome;
      property Sobrenome: string read GetSobrenome write SetSobrenome;
      property Salario: double read GetSalario write SetSalario;
      constructor Create(aNome, aSobrenome: string; aSalario: double);

  end;

implementation

{ TFuncionario }

constructor TFuncionario.Create(aNome, aSobrenome: string; aSalario: double);
begin
  FNome := aNome;
  FSobrenome := aSobrenome;
  FSalario := aSalario;
end;

function TFuncionario.GetNome: string;
begin
  Result := FNome;
end;

function TFuncionario.GetSalario: double;
begin
  Result := FSalario;
end;

function TFuncionario.GetSobrenome: string;
begin
  Result := FSobrenome;
end;

procedure TFuncionario.SetSobrenome(const Value: string);
begin
  FSobrenome := Value;
end;

procedure TFuncionario.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TFuncionario.SetSalario(const Value: double);
begin
  FSalario := Value;
end;

end.
