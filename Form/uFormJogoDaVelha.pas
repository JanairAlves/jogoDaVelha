unit uFormJogoDaVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,uRegrasTabuleiro;

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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    oRgTb:TRgTb;
    OTJogador : TJogador;
    procedure inserirNmJogadores;
    procedure ListasPanelTabuleiro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJogoDaVelha: TFormJogoDaVelha;
  vListaPanelTabuleiro: TList;
implementation

{$R *.dfm}

{ TFormJogoDaVelha }

procedure TFormJogoDaVelha.FormCreate(Sender: TObject);
begin
  oRgTb := TRgTb.Create;
  ListasPanelTabuleiro;
end;

procedure TFormJogoDaVelha.FormDestroy(Sender: TObject);
begin
   FreeAndNil(oRgTb);
   vListaPanelTabuleiro.Free;
end;

procedure TFormJogoDaVelha.FormMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inserirNmJogadores;
end;

procedure TFormJogoDaVelha.FormShow(Sender: TObject);
begin
    oRgTb.LimparTabuleiro(vListaPanelTabuleiro);
end;

{$region 'Inserir Nome Jogadores'}

procedure  TFormJogoDaVelha.inserirNmJogadores;
begin
    if ((lbNomeJogador1.Caption = EmptyStr)) then
    begin
      lbNomeJogador1.Caption := InputBox('Digite o nome do jogador 1', 'Nome:', '');
      OTJogador.Nome :=  lbNomeJogador1.Caption;
    end;

     if ((lbNomeJogador2.Caption = EmptyStr)) then
    begin
      lbNomeJogador2.Caption := InputBox('Digite o nome do jogador 2', 'Nome:', '');
      OTJogador.Nome :=  lbNomeJogador2.Caption;
    end;

end;
{$endregion}

{$region 'Listar Panels Tabuleiro jogada'}
procedure TFormJogoDaVelha.ListasPanelTabuleiro;
var
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
end;
{$endregion}

end.
