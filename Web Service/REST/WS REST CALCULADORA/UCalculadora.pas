unit UCalculadora;

interface

uses
  UICalculadora, vcl.Dialogs, SysUtils;

type
  TCalculadora = class(TInterfacedObject, ICalculadora)
    private
      function Somar(aNum1, aNum2: double): double;
      function Subtrair(aNum1, aNum2: double): double;
      function Multiplicar(aNum1, aNum2: double): double;
      function Dividir(aNum1, aNum2: double): double;
    public

  end;


implementation

{ TCalculadora }

function TCalculadora.Dividir(aNum1, aNum2: double): double;
begin
  if aNum2 = 0 then
    raise Exception.Create(FloatToStr(aNum1)
    + ' não pode ser dividido por (0) zero');

  Result := aNum1 / aNum2;
end;

function TCalculadora.Multiplicar(aNum1, aNum2: double): double;
begin
  Result := aNum1 * aNum2;
end;

function TCalculadora.Somar(aNum1, aNum2: double): double;
begin
  Result := aNum1 + aNum2;
end;

function TCalculadora.Subtrair(aNum1, aNum2: double): double;
begin
  Result := aNum1 - aNum2;
end;

end.
