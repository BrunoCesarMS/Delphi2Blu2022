unit UCombustivel;

interface

uses
  SysUtils, Vcl.Dialogs;

type
   TEnumCombustivel = (stGasolina, stAlcool, stDiesel);

  TBomba = class
    private
      FValorCombustivel: double;
      FQuantidade : double;
      function GetValor: double;
      function GetQtd: double;
      function GetAlteraVlr: double;
      function GetAlteraQtd: double;
      function GetAlteraCombustivel: TEnumCombustivel;
      procedure SetAlteraCombustivel(const Value: TEnumCombustivel);

    public
      procedure SetValor(const aValor: double);
      procedure SetQtd(const aQtd: double);
      procedure SetAlteraVlr(const aNovoValor: double);
      procedure SetAlteraQtd(const aNovaQtd: double);

      property abastecerPorValor : double read GetValor write SetValor;
      property abastecerPorLitro : double read GetQtd write SetQtd;
      property alterarValor      : double read GetAlteraVlr write SetAlteraVlr;
      property alterarQuantidadeCombustivel : double read GetAlteraQtd write SetAlteraQtd;
      property alterarCombustivel: TEnumCombustivel read GetAlteraCombustivel write SetAlteraCombustivel;

      constructor Create (const aCombustivel : double; const aQuantidade : double);

end;

implementation

{ TBomba }


constructor TBomba.Create(const aCombustivel, aQuantidade: double);
begin
  FValorCombustivel := aCombustivel;
  FQuantidade       := aQuantidade;
end;

function TBomba.GetAlteraCombustivel: TEnumCombustivel;
begin

end;

function TBomba.GetAlteraQtd: double;
begin

end;

function TBomba.GetAlteraVlr: double;

begin
end;


function TBomba.GetQtd: double;
begin
  Result := FQuantidade
end;


function TBomba.GetValor: double;
begin
  Result := FValorCombustivel
end;

procedure TBomba.SetAlteraCombustivel(const Value: TEnumCombustivel);
begin

end;

procedure TBomba.SetAlteraQtd(const aNovaQtd: double);
begin
  if aNovaQtd <= FQuantidade then
    ShowMessage('Quantidade é menor ou igual a quantidade constante no tanque')
  else
    begin
      FQuantidade:= aNovaQtd;
      ShowMessage('Quantidade de litros no tanque alterado com sucesso!')
    end;

end;

procedure TBomba.SetAlteraVlr(const aNovoValor: double);
begin
  FValorCombustivel := aNovoValor;
  ShowMessage('Valor do combustível alterado com sucesso!')
end;


procedure TBomba.SetQtd(const aQtd: double);
begin
  if (aQtd > FQuantidade) then
    ShowMessage('Quantidade maior que o disponível')
  else
    FQuantidade := FQuantidade - aQtd;
    Showmessage('Valor total abastecido R$ '
    +FormatFloat('###,###.00',(aQtd * FValorCombustivel)));
end;


procedure TBomba.SetValor(const aValor: double);
begin
  if ((aValor / FValorCombustivel) > FQuantidade) then
    ShowMessage('Quantidade maior que o disponível')
  else
    FQuantidade := FQuantidade - (aValor / FValorCombustivel);
    Showmessage('Quantidade total abastecida '
    +FormatFloat('###,###.00',(aValor / FValorCombustivel))+' litros.');
end;

end.
