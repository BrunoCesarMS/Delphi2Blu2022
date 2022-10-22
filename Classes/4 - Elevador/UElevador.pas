unit UElevador;

interface

uses
  SysUtils, Vcl.Dialogs;

type
  TElevador = class
    private

      FTotalAndares : integer;
      FCapacidade : integer;
      FAndarAtual : integer;
      FQtdPessoas : integer;

      function GetAndarAtual: integer;
      function GetCapacidade: integer;
      function GetQtdPessoas: integer;
      function GetTotalAndares: integer;

      procedure SetAndarAtual(const Value: integer);
      procedure SetCapacidade(const Value: integer);
      procedure SetQtdPessoas(const Value: integer);
      procedure SetTotalAndares(const Value: integer);
      procedure SetDescer(const Value: integer);
      procedure SetSubir(const Value: integer);

    public

      property AndarAtual : integer read GetAndarAtual write SetAndarAtual;
      property TotalAndares : integer read GetTotalAndares write SetTotalAndares;
      property Capacidade : integer read GetCapacidade write SetCapacidade;
      property QtdPessoas : integer read GetQtdPessoas write SetQtdPessoas;

      procedure Entrar(const aQtd: integer);
      procedure Sair(const aSair: integer);
      procedure Subir;
      procedure Descer;

      constructor Create(const aCapacidade, aTotalAndares : integer);

  end;

implementation

{ TElevador }


constructor TElevador.Create(const aCapacidade, aTotalAndares: integer);
begin
  FTotalAndares := aTotalAndares;
  FCapacidade   := aCapacidade;
  FQtdPessoas   := 0;
  FAndarAtual   := 0;
end;



procedure TElevador.Entrar(const aQtd: integer);
begin
  if FQtdPessoas < fcapacidade then
   begin
     FQtdPessoas := FQtdPessoas + aQtd;
     ShowMessage('Uma pessoa entrou no elevador');
   end
  else
    raise exception.Create('O elevador está cheio!')
end;

function TElevador.GetAndarAtual: integer;
begin
  Result := FAndarAtual
end;

function TElevador.GetCapacidade: integer;
begin
  Result := FCapacidade
end;

function TElevador.GetQtdPessoas: integer;
begin
  Result := FQtdPessoas
end;

function TElevador.GetTotalAndares: integer;
begin
  Result := FTotalAndares
end;

procedure TElevador.Sair(const aSair: integer);
begin
  if FQtdPessoas > 0 then
    begin
      FQtdPessoas := FQtdPessoas - aSair;
      ShowMessage('Uma pessoa saiu do elevador')
    end
  else raise exception.Create('O Elevador está vazio!');
end;

procedure TElevador.SetAndarAtual(const Value: integer);
begin
  FAndarAtual := Value
end;

procedure TElevador.SetCapacidade(const Value: integer);
begin
  FCapacidade := Value
end;

procedure TElevador.SetQtdPessoas(const Value: integer);
begin
  FQtdPessoas := Value
end;

procedure TElevador.SetSubir(const Value: integer);
begin
  if FAndarAtual = FTotalAndares then
    ShowMessage('Você está no último andar, permitido apenas descer')
  else
    FAndarAtual := Value
end;

procedure TElevador.SetDescer(const Value: integer);
begin
  if FAndarAtual = 0 then
    ShowMessage('Você está no térreo, permitido apenas subir')
  else
    FAndarAtual := Value
end;


procedure TElevador.SetTotalAndares(const Value: integer);
begin
  FTotalAndares := Value
end;



procedure TElevador.Subir;
begin
  if FAndarAtual = FTotalAndares then
    raise Exception.Create('O Elevador está no último andar, permitido apenas descer')
  else
    Begin
      Inc(FAndarAtual);
      ShowMessage('O Elevador está no ' + IntToStr(FAndarAtual) + '° andar.')
    End;
end;

procedure TElevador.Descer;
begin
  if FAndarAtual = 0 then
   raise exception.Create('O Elevador está no térreo, permitido apenas subir')
  else
    Begin
      Dec(FAndarAtual);
      ShowMessage('O Elevador está no ' + IntToStr(FAndarAtual) + '° andar.')
    End;



end;

end.
