unit Ex16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm16 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    procedure Edit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

procedure TForm16.Edit4Exit(Sender: TObject);
var
  xAluno: string;
  xNota1, xNota2, xNota3, xMedia: double;
begin
  xAluno := Edit1.Text;
  xNota1 := StrToFloat(Edit2.Text);
  xNota2 := StrToFloat(Edit3.Text);
  xNota3 := StrToFloat(Edit4.Text);
  xMedia := (xNota1 + xNota2 + xNota3) / 3;

  if (xMedia > 5.0) and (xMedia < 7.0) then
    Label5.Caption := ('O aluno ' + xAluno + ' está de recuperação.')
      else if xMedia >= 7.0 then
        Label5.Caption := ('O aluno ' + xAluno + ' está APROVADO.')
          else
            Label5.Caption := ('O aluno ' + xAluno + ' está REPROVADO.')
end;


end.
