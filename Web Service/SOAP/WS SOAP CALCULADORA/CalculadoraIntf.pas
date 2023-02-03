{ Invokable interface ICalculadora }

unit CalculadoraIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: UnicodeString;
    FFirstName: UnicodeString;
    FSalary: Double;
  published
    property LastName: UnicodeString read FLastName write FLastName;
    property FirstName: UnicodeString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  ICalculadora = interface(IInvokable)
  ['{ED2FFD4C-E444-4B04-984A-70BAA3EB6BAB}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function Somar(const aNum1, aNum2: double): double;
    function Subtrair(const aNum1, aNum2: double): double;
    function Multiplicar(const aNum1, aNum2: double): double;
    function Dividir(const aNum1, aNum2: double): double;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadora));

end.
