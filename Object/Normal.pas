unit Normal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    XA: TEdit;
    XB: TEdit;
    XC: TEdit;
    YA: TEdit;
    YB: TEdit;
    YC: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure CalcularArea;
    procedure calcularareasoop;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

uses
  UTriangulo;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Self.CalcularArea
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Self.calcularareasoop
end;

procedure TForm1.CalcularArea;
begin
 var
  X_A, X_B, X_C, Y_A, Y_B, Y_C, P_X, P_Y, xAreaX, xAreaY : double;

begin
  xAreaX:= 0;
  xAreaY:= 0;

  X_A:= StrToFloat(XA.Text);
  X_B:= StrToFloat(XB.Text);
  X_C:= StrToFloat(XC.Text);
  Y_A:= StrToFloat(YA.Text);
  Y_B:= StrToFloat(YB.Text);
  Y_C:= StrToFloat(YC.Text);

  P_X:= (X_A + X_B + X_C)/2;
  P_Y:= (Y_A + Y_B + Y_C)/2;

  xAreaX:= Sqrt(P_X*((P_X-X_A)*(P_X-X_B)*(P_X-X_C)));
  xAreaY:= Sqrt(P_Y*((P_Y-Y_A)*(P_Y-Y_B)*(P_Y-Y_C)));

  Label3.Caption:= 'Tri�ngulo X �rea: ' + FormatFloat('#.00',xAreaX);
  Label4.Caption:= 'Tri�ngulo Y �rea: ' + FormatFloat('#.00',xAreaY);

  if xAreaX > xAreaY then
  begin
    Label5.Caption:= 'A �rea do tri�ngulo X � maior'
  end;

  if xAreaX < xAreaY then
  begin
    Label5.Caption:= 'A �rea do tri�ngulo Y � maior'
  end;

  if xAreaX = xAreaY then
  begin
    Label5.Caption:= 'A �rea dos tri�ngulos s�o iguais'
  end;
end;
end;


procedure TForm1.calcularareasoop;
var
  xTrianguloX: TTriangulo;
  xTrianguloY: TTriangulo;

  xAreaX: double;
  xAreaY: double;
begin
  xTrianguloX:= TTriangulo.Create;
  xTrianguloY:= TTriangulo.Create;

  try

    xTrianguloX.A := StrToFloatDef(XA.Text,0);
    xTrianguloX.B := StrToFloatDef(XB.Text,0);
    xTrianguloX.C := StrToFloatDef(XC.Text,0);

    xAreaX := xTrianguloX.Area;

    xTrianguloY.A := StrToFloatDef(YA.Text,0);
    xTrianguloY.B := StrToFloatDef(YB.Text,0);
    xTrianguloY.C := StrToFloatDef(YC.Text,0);

    xAreaX := xTrianguloY.Area;

    Label3.Caption:= 'Tri�ngulo X �rea: ' + FormatFloat('#.00',xAreaX);
    Label4.Caption:= 'Tri�ngulo Y �rea: ' + FormatFloat('#.00',xAreaY);


    if xAreaX > xAreaY then
    begin
      Label5.Caption:= 'A �rea do tri�ngulo X � maior'
    end;

    if xAreaX < xAreaY then
    begin
      Label5.Caption:= 'A �rea do tri�ngulo Y � maior'
    end;

    if xAreaX = xAreaY then
    begin
      Label5.Caption:= 'A �rea dos tri�ngulos s�o iguais'
    end;


  finally
     FreeAndNil(xTrianguloX);
     FreeAndNil(xTrianguloY);
  end;
end;


end.
