unit UPessoa;

interface

type
  TPessoa = class
    private
      FNome     : string;
      FEndereco : string;
    function GetNome: string;
    procedure SetNome(const Value: string);
    function GetEndereco: string;
    procedure SetEndereco(const Value: string);
    public
      property Nome : string read GetNome write SetNome;
      property Endereco : string read GetEndereco write SetEndereco;
  end;

  TPessoaFisica = class(TPessoa)
    private
      FCPF   : string;
      FIdade : byte;
    function GetCPF: string;
    procedure SetCPF(const Value: string);
    function GetIdade: byte;
    procedure SetIdade(const Value: byte);
    public
      function ValidaCPF: boolean;
      property CPF : string read GetCPF write SetCPF;
      property Idade : byte read GetIdade write SetIdade;
  end;


  TPessoaJuridica = class(TPessoa)
    private
      FCNPJ    : string;
      FInscEst : string;
    public
      function ValidaCNPJ(CNPJ: string): boolean;
  end;


implementation
  uses
    SysUtils, Vcl.Dialogs;
{ TPessoa }



function TPessoa.GetEndereco: string;
begin
  Result := FNome
end;

function TPessoa.GetNome: string;
begin
  Result := FEndereco
end;

procedure TPessoa.SetEndereco(const Value: string);
begin
  FEndereco := Value
end;

procedure TPessoa.SetNome(const Value: string);
begin
  FNome := Value
end;

{ TPessoaFisica }



{ TPessoaJuridica }



{ TPessoaFisica }

function TPessoaFisica.GetCPF: string;
begin
  Result := FCPF
end;

function TPessoaFisica.GetIdade: byte;
begin
  Result := FIdade
end;

procedure TPessoaFisica.SetCPF(const Value: string);
begin
  FCPF := value
end;

procedure TPessoaFisica.SetIdade(const Value: byte);
begin
  FIdade := value
end;

function TPessoaFisica.ValidaCPF: boolean;
var
  dig10, dig11: string;
  a, b, c, peso: integer;

begin
  if (CPF = '00000000000') or (CPF = '11111111111') or
     (CPF = '22222222222') or (CPF = '33333333333') or
     (CPF = '44444444444') or (CPF = '55555555555') or
     (CPF = '66666666666') or (CPF = '77777777777') or
     (CPF = '88888888888') or (CPF = '99999999999') or
     (length(CPF) <> 11) then
       begin
         ValidaCPF := false;
         exit;
       end;

  try
  //Cálculo do primeiro digito verificador (10º número do CPF)
    a    := 0;
    peso := 10;
    for b := 1 to 9 do
      begin
        a := a + (StrToInt(CPF[b])) * peso;
        peso := peso - 1
      End;

      c:= 11 - (a mod 11);
      if ((c = 10) or (c = 11)) then
        dig10 := '0'
        else
          str(c:1, dig10);

  //Cálculo do segundo digito verificador (11º número do CPF)
    a    := 0;
    peso := 11;
    for b := 1 to 10 do
      begin
        a := a + (StrToInt(CPF[b])) * peso;
        peso := peso - 1
      End;

      c:= 11 - (a mod 11);
      if ((c = 10) or (c = 11)) then
        dig11 := '0'
        else
          str(c:1, dig11);

  //Verifica se os números calculados conferem com os números informados
    if (dig10 = CPF[10]) and (dig11 = CPF[11]) then
      ValidaCPF := true
      else
        ValidaCPF := false;

  except
    ValidaCPF := false;


  end;


end;

{ TPessoaJuridica }

function TPessoaJuridica.ValidaCNPJ(CNPJ: string): boolean;
begin

end;

end.
