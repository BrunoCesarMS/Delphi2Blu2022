unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Menus, UfrmRelAtor, UfrmRelCidade, UfrmRelFilmes;

type
  TfrmPrincipal = class(TForm)
    imgRelatorios: TImage;
    PopupMenu1: TPopupMenu;
    Atores1: TMenuItem;
    Cidades1: TMenuItem;
    Cidades2: TMenuItem;
    procedure Atores1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Atores1Click(Sender: TObject);
begin
  if not Assigned(frmRelAtor) then
    frmRelAtor := frmRelAtor.Create(Self);

  frmRelAtor.Show;

end;

procedure TfrmPrincipal.Cidades1Click(Sender: TObject);
begin
  if not assigned(frmRelCidade) then
    frmRelCidade := frmRelCidade.Create(Self);

  frmRelCidade.show;
end;

end.
