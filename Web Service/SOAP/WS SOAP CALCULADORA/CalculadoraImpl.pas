{ Invokable implementation File for TCalculadora which implements ICalculadora }

unit CalculadoraImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, CalculadoraIntf;

type

  { TCalculadora }
  TCalculadora = class(TInvokableClass, ICalculadora)
  public
    function Somar(const aNum1, aNum2: double): double;
    function Subtrair(const aNum1, aNum2: double): double;
    function Multiplicar(const aNum1, aNum2: double): double;
    function Dividir(const aNum1, aNum2: double): double;
  end;

implementation

uses
  System.SysUtils;




{ TCalculadora }

function TCalculadora.Dividir(const aNum1, aNum2: double): double;
begin
  if aNum2 = 0 then
    raise Exception.Create(FloatToStr(aNum1) + ' não pode ser divido por zero');

  Result := aNum1 / aNum2;
end;

function TCalculadora.Multiplicar(const aNum1, aNum2: double): double;
begin
  Result := aNum1 * aNum2;
end;

function TCalculadora.Somar(const aNum1, aNum2: double): double;
begin
  Result := aNum1 + aNum2
end;

function TCalculadora.Subtrair(const aNum1, aNum2: double): double;
begin
  Result := aNum1 - aNum2
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TCalculadora);
end.

