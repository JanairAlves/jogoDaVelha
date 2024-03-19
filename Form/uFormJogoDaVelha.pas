unit uFormJogoDaVelha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.StdCtrls, uRegrasTabuleiro;

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
    lbNomeJogador1: TLabel;
    lbNomeJogador2: TLabel;
    lbVitJog1: TLabel;
    lbVitJog2: TLabel;
    pnJogadas: TPanel;
    pnTituloJogadas: TPanel;
    Panel1: TPanel;
    lbJogadas: TLabel;
    lbPlacarJogadas: TLabel;
    Panel2: TPanel;
    lbRodadas: TLabel;
    lbPlacarRodadas: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnTab1Click(Sender: TObject);
    procedure pnTab2Click(Sender: TObject);
    procedure pnTab3Click(Sender: TObject);
    procedure pnTab4Click(Sender: TObject);
    procedure pnTab5Click(Sender: TObject);
    procedure pnTab6Click(Sender: TObject);
    procedure pnTab7Click(Sender: TObject);
    procedure pnTab8Click(Sender: TObject);
    procedure pnTab9Click(Sender: TObject);

  private
    oRgTb: TRgTb;
    OTJogador: TJogador;
    procedure inserirNmJogadores;
    procedure ListasPanelTabuleiro;
    procedure Rodada(vPanel: TPanel);
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormJogoDaVelha: TFormJogoDaVelha;
  vArrayPanelJogadas: TPanelArray;
  Jogadores: TJogadorArray;
  numeroJogador: integer;
  vJogador: TJogador;

implementation

{$R *.dfm}
{ TFormJogoDaVelha }

procedure TFormJogoDaVelha.FormCreate(Sender: TObject);
begin
  oRgTb := TRgTb.Create;
  ListasPanelTabuleiro;
end;

procedure TFormJogoDaVelha.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  FreeAndNil(oRgTb);
end;

procedure TFormJogoDaVelha.FormShow(Sender: TObject);
begin
  oRgTb.LimparTabuleiro(vArrayPanelJogadas);
  inserirNmJogadores;
end;

procedure TFormJogoDaVelha.pnTab1Click(Sender: TObject);
begin
  Rodada(pnTab1);
end;

procedure TFormJogoDaVelha.pnTab2Click(Sender: TObject);
begin
  Rodada(pnTab2);
end;

procedure TFormJogoDaVelha.pnTab3Click(Sender: TObject);
begin
  Rodada(pnTab3);
end;

procedure TFormJogoDaVelha.pnTab4Click(Sender: TObject);
begin
  Rodada(pnTab4);
end;

procedure TFormJogoDaVelha.pnTab5Click(Sender: TObject);
begin
  Rodada(pnTab5);
end;

procedure TFormJogoDaVelha.pnTab6Click(Sender: TObject);
begin
  Rodada(pnTab6);
end;

procedure TFormJogoDaVelha.pnTab7Click(Sender: TObject);
begin
  Rodada(pnTab7);
end;

procedure TFormJogoDaVelha.pnTab8Click(Sender: TObject);
begin
  Rodada(pnTab8);
end;

procedure TFormJogoDaVelha.pnTab9Click(Sender: TObject);
begin
  Rodada(pnTab9);
end;

{$REGION 'Listar Panels Tabuleiro jogada'}
procedure TFormJogoDaVelha.ListasPanelTabuleiro;
var
  pnTab: TPanel;
  i: Integer;
begin
  for i := 0 to 8 do
  begin
    pnTab := FindComponent('pnTab' + intToStr( i + 1 )) as TPanel;
    if Assigned(pnTab) then
      vArrayPanelJogadas[i] := pnTab;
  end;
end;
{$ENDREGION}

{$REGION 'Inserir Nome Jogadores'}
procedure TFormJogoDaVelha.inserirNmJogadores;
begin
  while lbNomeJogador1.Caption = EmptyStr do
  begin
    if ((lbNomeJogador1.Caption = EmptyStr)) then
    begin
      lbNomeJogador1.Caption := InputBox('Digite o nome do jogador 1', 'Nome:','');

      if lbNomeJogador1.Caption='' then
        abort;

      Jogadores[0].Nome := lbNomeJogador1.Caption;
      Jogadores[0].Simbolo := 'O';

      if ((lbNomeJogador1.Caption <> EmptyStr)) then
        break

    end;
  end;

  while lbNomeJogador2.Caption = EmptyStr do
  begin
    if ((lbNomeJogador2.Caption = EmptyStr)) then
    begin
      lbNomeJogador2.Caption := InputBox('Digite o nome do jogador 2', 'Nome:', '');

       if lbNomeJogador2.Caption='' then
        abort;

      Jogadores[1].Nome := lbNomeJogador2.Caption;
      Jogadores[1].Simbolo := 'X';

      if ((lbNomeJogador2.Caption <> EmptyStr)) then
        break;
    end;
  end;

  numeroJogador := oRgTb.AtribuirSequencia(lbNomeJogador1.Caption, lbNomeJogador2.Caption) - 1;
end;
{$ENDREGION}

{$REGION 'Rodada'}
procedure TFormJogoDaVelha.Rodada(vPanel: TPanel);
var
  vJogadaRealizada: Boolean;
  vTabuleiroCheio: Boolean;
  vVitoria: Boolean;
begin
  if lbPlacarJogadas.Caption = '0' then
  begin
    vJogador := Jogadores[numeroJogador];
    lbPlacarRodadas.Caption := IntToStr( StrToInt(lbPlacarRodadas.Caption) + 1);
  end;

  vJogadaRealizada := oRgTb.RealizaJogada(vPanel, vJogador);

  if not vJogadaRealizada then
  begin
    Application.MessageBox('Está casa já recebeu uma jogada, nas rodadas anteriores. Escolha outra casa!', 'Informação', MB_ICONINFORMATION+MB_OK);
    Exit;
  end;

  if vJogadaRealizada then
  begin
    numeroJogador := (numeroJogador + 1) mod Length(Jogadores);
    lbPlacarJogadas.Caption := IntToStr( StrToInt(lbPlacarJogadas.Caption) + 1);
  end;

  vTabuleiroCheio := oRgTb.ValidarTabuleiroCheio(vArrayPanelJogadas);
  vVitoria := oRgTb.ValidarVitoria(vArrayPanelJogadas, vJogador);

  if vTabuleiroCheio or vVitoria then
  begin
    lbPlacarRodadas.Caption := IntToStr( StrToInt(lbPlacarRodadas.Caption) + 1 );
    lbPlacarJogadas.Caption := '0';
    oRgTb.LimparTabuleiro(vArrayPanelJogadas);
  end;

  if vVitoria and (vJogador.Simbolo = 'O')  then lbVitJog1.Caption := IntToStr( StrToInt(lbVitJog1.Caption) + 1);
  if vVitoria and (vJogador.Simbolo = 'X') then lbVitJog2.Caption := IntToStr( StrToInt(lbVitJog2.Caption) + 1);

  vJogador := Jogadores[numeroJogador];

end;
{$ENDREGION}

end.
