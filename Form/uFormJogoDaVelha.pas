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
    oRgTb: TRgTb;
    OTJogador: TJogador;
    procedure inserirNmJogadores;
    procedure ListasPanelTabuleiro;
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormJogoDaVelha: TFormJogoDaVelha;
  vArrayPanelJogadas: TPanelArray;
  Jogadores: TJogadorArray;

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
//  for i := 0 to High(vArrayPanelJogadas) do
//  begin
//    vArrayPanelJogadas[i].Free;
//  end;
//  SetLength(vArrayPanelJogadas, 0);
end;

procedure TFormJogoDaVelha.FormMouseActivate(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y, HitTest: Integer;
  var MouseActivate: TMouseActivate);
begin
  inserirNmJogadores;
end;

procedure TFormJogoDaVelha.FormShow(Sender: TObject);
begin
  oRgTb.LimparTabuleiro(vArrayPanelJogadas);
  pnTab1.Caption := 'X';
  pnTab2.Caption := 'O';
  pnTab3.Caption := 'X';
  pnTab5.Caption := 'X';
  pnTab7.Caption := 'X';
end;

{$REGION 'Inserir Nome Jogadores'}
procedure TFormJogoDaVelha.inserirNmJogadores;
var
  res: Boolean;
  Jogador: TJogador;
  njog: integer;
begin
  while lbNomeJogador1.Caption = EmptyStr do

      if ((lbNomeJogador1.Caption = EmptyStr)) then
      begin
      lbNomeJogador1.Caption := InputBox('Digite o nome do jogador 1',
      'Nome:','');

      if lbNomeJogador1.Caption='' then begin
            abort;
            end;

      Jogadores[0].Nome := lbNomeJogador1.Caption;
      Jogadores[0].Simbolo := 'O';

      if ((lbNomeJogador1.Caption <> EmptyStr)) then
  break

  end;

  while lbNomeJogador2.Caption = EmptyStr do

      if ((lbNomeJogador2.Caption = EmptyStr)) then
      begin
      lbNomeJogador2.Caption := InputBox('Digite o nome do jogador 2',
      'Nome:', '');

       if lbNomeJogador2.Caption='' then begin
            abort;
            end;

      Jogadores[1].Nome := lbNomeJogador2.Caption;
      Jogadores[1].Simbolo := 'X';

      if ((lbNomeJogador2.Caption <> EmptyStr)) then

  break

  end;

  oRgTb.AtribuirSequencia(lbNomeJogador1.Caption
  ,lbNomeJogador2.Caption);

//  njog := 1;
  njog := (njog + 1) mod 2;
  Jogador := Jogadores[njog];

  res := oRgTb.ValidarVitoria(vArrayPanelJogadas, Jogador);
  if res then
  begin
    ShowMessage('Vitória!');
  end
  else
  begin
    ShowMessage('Perdeu!');
  end;
end;
{$ENDREGION}

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

end.
