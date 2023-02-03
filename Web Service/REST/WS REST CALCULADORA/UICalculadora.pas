unit UICalculadora;

interface

type
  ICalculadora = interface
    function Somar(aNum1, aNum2: double): double;
    function Subtrair(aNum1, aNum2: double): double;
    function Multiplicar(aNum1, aNum2: double): double;
    function Dividir(aNum1, aNum2: double): double;
  end;

implementation

end.
