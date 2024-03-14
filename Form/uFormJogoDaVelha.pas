unit uFormJogoDaVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFormJogoDaVelha = class(TForm)
    pnTodaArea: TPanel;
    pnTabuleiro: TPanel;
    pnStatus: TPanel;
    pnTab1: TPanel;
    pnTab2: TPanel;
    pnTab3: TPanel;
    pnTab4: TPanel;
    pnTab5: TPanel;
    pnTab6: TPanel;
    pnTab7: TPanel;
    pnTab8: TPanel;
    pnTab9: TPanel;
    pnStatusNome: TPanel;
    pnStatusVitorias: TPanel;
    pnStatusRodadas: TPanel;
    lbJogador1: TLabel;
    lbJogador2: TLabel;
    lbJog1: TLabel;
    lbJog2: TLabel;
    lbVitorias: TLabel;
    lbNomes: TLabel;
    lbRodadas: TLabel;
    lbContRodadas: TLabel;
    lbNomeJogador1: TLabel;
    lbNomeJogador2: TLabel;
    lbVitJog1: TLabel;
    lbVitJog2: TLabel;
    pnJogadas: TPanel;
    pnTituloJogadas: TPanel;
    pnCS1: TPanel;
    pnCS2: TPanel;
    pnCS3: TPanel;
    pnCS4: TPanel;
    pnCS5: TPanel;
    pnCS6: TPanel;
    pnCS7: TPanel;
    pnCS8: TPanel;
    pnCS9: TPanel;
    procedure FormMouseActivate(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y, HitTest: Integer;
      var MouseActivate: TMouseActivate);
    procedure FormShow(Sender: TObject);
  private
    procedure inserirNmJogadores;
    function ListasPanelTabuleiro: TList;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJogoDaVelha: TFormJogoDaVelha;

implementation

{$R *.dfm}

uses uRegrasTabuleiro;

{ TFormJogoDaVelha }

procedure TFormJogoDaVelha.FormMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inserirNmJogadores;
end;


{$region 'Inserir Nome Jogadores'}
procedure TFormJogoDaVelha.FormShow(Sender: TObject);
begin
  LimparTabuleiro(Self.ListasPanelTabuleiro);
end;

procedure  TFormJogoDaVelha.inserirNmJogadores;
begin
    if ((lbNomeJogador1.Caption = EmptyStr)) then
    begin
      lbNomeJogador1.Caption := InputBox('Digite o nome do jogador 1', 'Nome:', '');
    end;

     if ((lbNomeJogador2.Caption = EmptyStr)) then
    begin
      lbNomeJogador2.Caption := InputBox('Digite o nome do jogador 2', 'Nome:', '');
    end;

end;
{$endregion}

{$region 'Listar Panels Tabuleiro jogada'}
function TFormJogoDaVelha.ListasPanelTabuleiro: TList;
var
  vListaPanelTabuleiro: TList;
  pnTab: TPanel;
  i: integer;
begin
  vListaPanelTabuleiro := TList.Create;
  for i := 1 to 9 do
  begin
    pnTab := FindComponent('pnTab' + intToStr(i)) as TPanel;
    if  Assigned(pnTab) then pnTab.Caption :=  EmptyStr;
    vListaPanelTabuleiro.Add(pnTab);
  end;
  Result := vListaPanelTabuleiro;
end;
{$endregion}

end.
