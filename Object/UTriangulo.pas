unit UTriangulo;

interface

type
  TTriangulo = class
  private
    Fa: double;
    Fb: double;
    Fc: double;
    Fd: double;

    function GetA: double;
    function GetB: double;
    function GetC: double;
    function GetD: double;
    procedure SetA(const Value: double);
    procedure SetB(const Value: double);
    procedure SetC(const Value: double);

  public
    function Area: double;
    property A: double read GetA write SetA;
    property B: double read GetB write SetB;
    property C: double read GetC write SetC;
    property D: double read GetD;
  end;

implementation

{ TTriangulo }

function TTriangulo.Area: double;
var
  xP: double;
begin
  xP     := (Fa + Fb + Fc) / 2;
  Result := Sqrt (xP * (xP - Fa) * (xP - Fb) * (xP - Fc))
end;

function TTriangulo.GetA: double;
begin
  Result:= Fa;
end;

function TTriangulo.GetB: double;
begin
  Result:= Fb;
end;

function TTriangulo.GetC: double;
begin
  Result:= Fc;
end;

function TTriangulo.GetD: double;
begin
  Result:= Fd;
end;

procedure TTriangulo.SetA(const Value: double);
begin
  Fa:= value;
end;

procedure TTriangulo.SetB(const Value: double);
begin
  Fb:= value;
end;

procedure TTriangulo.SetC(const Value: double);
begin
  Fc:= value;
end;

end.
